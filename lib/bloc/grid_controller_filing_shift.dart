import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:tabel_ucheta_rabochego_vremeni/data/entities/person_entity.dart';
import 'package:tabel_ucheta_rabochego_vremeni/data/repositories/person_repository.dart';

class GridControllerFilingShift {
  final List<Results>? persons;
  final int? nowShiftIndex;
  List<Results> nowShiftPersons = [];
  GridControllerFilingShift({this.persons, this.nowShiftIndex});

  final List<PlutoColumn> columns = [
    PlutoColumn(
        width: 150,
        backgroundColor: Colors.orange[300],
        title: 'ФИО',
        field: 'name',
        type: PlutoColumnType.text(),
        readOnly: true,
        frozen: PlutoColumnFrozen.start,
        enableColumnDrag: false,
        enableContextMenu: false,
        enableDropToResize: false),
    PlutoColumn(
        width: 100,
        backgroundColor: Colors.orange[300],
        title: 'Должность',
        field: 'post',
        type: PlutoColumnType.text(),
        readOnly: true,
        frozen: PlutoColumnFrozen.start,
        enableColumnDrag: false,
        enableContextMenu: false,
        enableDropToResize: false),
    PlutoColumn(
        backgroundColor: Colors.orange[300],
        title: 'Место работы',
        field: 'workplace',
        type: PlutoColumnType.select(<String>[
          'Стела',
          'Черноморка',
          'АС№3',
        ]),
        enableColumnDrag: false,
        enableContextMenu: false,
        enableDropToResize: false),
    PlutoColumn(
        backgroundColor: Colors.orange[300],
        title: 'Вид активности',
        field: 'status',
        type: PlutoColumnType.select(<String>[
          'Больничный',
          'Выходной',
          'ДО',
          'Оплачиваемый Выходной',
          'ОЖ',
          'ОВ',
          'Отпуск',
          'Отгул',
          'РВ',
          'Учебный ОТ',
          'Явка',
        ]),
        enableColumnDrag: false,
        enableContextMenu: false,
        enableDropToResize: false),
    PlutoColumn(
        width: 100,
        backgroundColor: Colors.orange[300],
        title: 'Часы день',
        field: 'hoursDay',
        type: PlutoColumnType.number(),
        enableColumnDrag: false,
        enableContextMenu: false,
        enableDropToResize: false),
    PlutoColumn(
        width: 100,
        backgroundColor: Colors.orange[300],
        title: 'Часы ночь',
        field: 'hoursNight',
        type: PlutoColumnType.number(),
        enableColumnDrag: false,
        enableContextMenu: false,
        enableDropToResize: false,
        hide: true),
    PlutoColumn(
        backgroundColor: Colors.orange[300],
        title: 'Кого заменяет',
        field: 'replacement',
        type: PlutoColumnType.text(),
        enableColumnDrag: false,
        enableContextMenu: false,
        enableDropToResize: false),
    PlutoColumn(
        backgroundColor: Colors.orange[300],
        title: 'Комментарий',
        field: 'comment',
        type: PlutoColumnType.text(),
        enableColumnDrag: false,
        enableContextMenu: false,
        enableDropToResize: false),
  ];

  PlutoRow _createRow(Results person) {
    Color color;
    switch (person.post) {
      case 'Мастер':
        color = Colors.black38;
      case 'Регистратор':
        color = const Color.fromARGB(255, 255, 213, 227);
      case 'Диспетчер а/т':
        color = Colors.white;
        break;
      default:
        color = Colors.white;
    }
    Map<String, PlutoCell> cells = {
      'id': PlutoCell(value: person.id),
      'name': PlutoCell(value: person.name),
      'post': PlutoCell(value: person.post),
      'workplace': PlutoCell(value: null),
      'status': PlutoCell(value: person.status ?? 'Явка'),
      'hoursDay': PlutoCell(value: 11),
      'hoursNight': PlutoCell(value: 0),
      'replacement': PlutoCell(value: null),
      'comment': PlutoCell(value: ''),
    };
    return PlutoRow(cells: cells);
  }

  List<PlutoRow> createRowsPersons() {
    nowShiftPersons.clear();
    List<PlutoRow> rows = [];
    for (var element
        in persons!.where((element) => element.shift == nowShiftIndex)) {
      PlutoRow row = _createRow(element);

      rows.add(row);
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
              comment: row.cells['comment']?.value);
          newPersons.add(person);
        }
      }
    }
    PersonRepository().setPersonEntiti(newPersons);
  }
}
