import 'package:intl/intl.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:tabel_ucheta_rabochego_vremeni/data/entities/person_entity.dart';
import 'package:tabel_ucheta_rabochego_vremeni/data/repositories/person_repository.dart';
import 'package:tabel_ucheta_rabochego_vremeni/ui/page_style/colors.dart';

class GridControllerFilingShift {
  List<Results>? persons;
  int? nowShiftIndex;
  List<Results> nowShiftPersons = [];
  bool dayNight = true;

  GridControllerFilingShift({this.persons, this.nowShiftIndex}) {
    checkDayNight();
  }

  final List<PlutoColumn> columns = [
    PlutoColumn(
        width: 150,
        backgroundColor: colorColumnBacground,
        title: 'ФИО/Должность',
        field: 'name',
        type: PlutoColumnType.text(),
        readOnly: true,
        frozen: PlutoColumnFrozen.start,
        enableColumnDrag: false,
        enableContextMenu: false,
        enableDropToResize: false),
    PlutoColumn(
        width: 100,
        backgroundColor: colorColumnBacground,
        title: 'Должность',
        field: 'post',
        type: PlutoColumnType.text(),
        readOnly: true,
        frozen: PlutoColumnFrozen.start,
        enableColumnDrag: false,
        enableContextMenu: false,
        enableDropToResize: false,
        hide: true),
    PlutoColumn(
        width: 125,
        backgroundColor: colorColumnBacground,
        title: 'Место работы',
        field: 'workplace',
        type: PlutoColumnType.select(
          <String>[
            '',
            'Автостоянки',
            'Стела',
            'Черноморка',
            'АС№3',
            'Черноморка\n(въезд)',
            'Черноморка\n(выезд)',
            'Стела\n(въезд)',
            'Стела\n(выезд)',
          ],
        ),
        enableColumnDrag: false,
        enableContextMenu: false,
        enableDropToResize: false),
    PlutoColumn(
        width: 110,
        backgroundColor: colorColumnBacground,
        title: 'Вид времени',
        field: 'status',
        type: PlutoColumnType.text(),
        enableColumnDrag: false,
        enableContextMenu: false,
        enableDropToResize: false),
    PlutoColumn(
        width: 70,
        backgroundColor: colorColumnBacground,
        title: DateFormat('dd.MM').format(DateTime.now()),
        field: 'hoursDay',
        type: PlutoColumnType.text(),
        enableColumnDrag: false,
        enableContextMenu: false,
        enableDropToResize: false),
    PlutoColumn(
        width: 70,
        backgroundColor: colorColumnBacground,
        title: '${DateTime.now().day + 1}.${DateTime.now().month}',
        field: 'hoursNight',
        type: PlutoColumnType.text(),
        enableColumnDrag: false,
        enableContextMenu: false,
        enableDropToResize: false,
        hide: true),
    PlutoColumn(
        width: 150,
        backgroundColor: colorColumnBacground,
        title: 'Кого заменяет',
        field: 'replacement',
        type: PlutoColumnType.text(),
        enableColumnDrag: false,
        enableContextMenu: false,
        enableDropToResize: false),
    PlutoColumn(
        width: 100,
        backgroundColor: colorColumnBacground,
        title: 'Документ',
        field: 'document',
        type: PlutoColumnType.select(
          <String>[
            '',
            'Диспетчер а/т РВ день',
            'Диспетчер а/т РВ ночь',
            'Регистратор РВ день',
            'Регистратор РВ ночь',
            'Диспетчер а/т перевод',
            'Регистратор перевод',
          ],
        )),
    PlutoColumn(
        width: 150,
        backgroundColor: colorColumnBacground,
        title: 'Комментарий',
        field: 'comment',
        type: PlutoColumnType.text(),
        enableColumnDrag: false,
        enableContextMenu: false,
        enableDropToResize: false),
  ];
  final List<PlutoColumnGroup> columnGroups = [
    PlutoColumnGroup(
        backgroundColor: colorColumnBacground,
        title: 'Часы',
        fields: ['hoursDay', 'hoursNight']),
  ];

  PlutoRow createRow(Results person) {
    double day = 11;
    double night = 0;
    if (!dayNight) {
      day = 3.5;
      night = 7.5;
    }
    Map<String, PlutoCell> cells = {
      'id': PlutoCell(value: person.id),
      'name': PlutoCell(value: '${person.name}\n${person.post}'),
      'post': PlutoCell(value: person.post),
      'workplace': PlutoCell(value: ''),
      'status': PlutoCell(value: person.status ?? 'Я'),
      'hoursDay': PlutoCell(value: day),
      'hoursNight': PlutoCell(value: night),
      'replacement': PlutoCell(
        value: '',
      ),
      'document': PlutoCell(value: ''),
      'comment': PlutoCell(value: ''),
    };
    return PlutoRow(cells: cells);
  }

  List<PlutoRow> createRowsPersons() {
    nowShiftPersons.clear();
    List<PlutoRow> rows = [];
    for (var element
        in persons!.where((element) => element.shift == nowShiftIndex)) {
      PlutoRow row = createRow(element);

      rows.add(row);
    }

    if (rows.length > 1) {
      rows.sort((a, b) => getSortWeight(a.cells.entries
              .firstWhere((element) => element.key == 'post')
              .value
              .value)
          .compareTo(getSortWeight(b.cells.entries
              .firstWhere((element) => element.key == 'post')
              .value
              .value)));
    }

    return rows;
  }

  void safeNowShiftPerson(List<Results> persons, List<PlutoRow> rows) {
    List<Results> newPersons = [];
    for (var row in rows) {
      for (var element in persons) {
        if (element.id == row.cells['id']!.value) {
          var person = Results(
              post: element.post,
              id: element.id,
              name: element.name,
              shift: nowShiftIndex,
              status: row.cells['status']!.value,
              workplace: row.cells['workplace']!.value,
              hoursDay: row.cells['hoursDay']!.value,
              hoursNight: row.cells['hoursNight']?.value,
              forWhom: row.cells['replacement']?.value,
              document: row.cells['document']?.value,
              comment: row.cells['comment']?.value);
          newPersons.add(person);
        }
      }
    }
    PersonRepository().setPersonEntiti(newPersons);
  }

  int getSortWeight(String post) {
    int weight = 0;
    switch (post) {
      case 'Мастер':
        weight = 1;
      case 'Регистратор':
        weight = 2;
      case 'Диспетчер а/т':
        weight = 3;
      case 'Диспетчер':
        weight = 4;
        break;
      default:
        weight = 4;
    }
    return weight;
  }

  void checkDayNight() {
    var nowTime = DateTime.now();
    if (nowTime.hour >= 20 || nowTime.hour <= 7) {
      dayNight = false;
    }
  }
}
