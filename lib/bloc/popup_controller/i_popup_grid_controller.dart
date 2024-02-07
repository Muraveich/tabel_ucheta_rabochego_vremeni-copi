import 'package:pluto_grid/pluto_grid.dart';
import 'package:tabel_ucheta_rabochego_vremeni/data/entities/person_entity.dart';

abstract class IPopupGridController {
  final List<PlutoColumn> columns = [
    PlutoColumn(title: 'ФИО', field: 'name', type: PlutoColumnType.text()),
    PlutoColumn(title: 'Должность', field: 'post', type: PlutoColumnType.text())
  ];

  PlutoRow _createRow(Results person) {
    Map<String, PlutoCell> cells = {
      'name': PlutoCell(value: person.name),
      'post': PlutoCell(value: person.post),
    };
    return PlutoRow(cells: cells);
  }

  List<PlutoRow> createRowPerson(List<Results> persons) {
    List<PlutoRow> rows = [];
    for (var element in persons) {
      PlutoRow row = _createRow(element);
      rows.add(row);
    }
    return rows;
  }
}
