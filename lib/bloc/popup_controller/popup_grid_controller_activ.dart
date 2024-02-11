import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

class PopupGridControllerActiv {
  Map<String, String> activ = {
    'Б': 'Больничный',
    'В': 'Выходной',
    'ДО': 'Дополнительнй день отдыха',
    'ОВ': 'Оплачиваемый Выходной',
    'ОЖ': 'Отпуск по уходу за ребенком',
    'ОТ': 'Отпуск',
    'Отг': 'Отгул',
    'Н/Н': 'Невыход по невыясненым\nпричинам',
    'Су': 'Сверхурочные',
    'Я/ДО': 'Не полная рабочая смена',
    'Я/Су': 'Явка/Сверхурочные часы',
    'РВ': 'Рабочий выходной',
    'У': 'Учебный ОТ',
    'Я': 'Явка',
  };

  final List<PlutoColumn> columns = [
    PlutoColumn(
        title: 'Сокращенная\nзапись',
        field: 'abb',
        type: PlutoColumnType.text()),
    PlutoColumn(
        title: 'Расшифровка', field: 'full', type: PlutoColumnType.text())
  ];

  PlutoRow _createRow(String key, String value) {
    Map<String, PlutoCell> cells = {
      'abb': PlutoCell(value: key),
      'full': PlutoCell(value: value),
    };
    return PlutoRow(cells: cells);
  }

  List<PlutoRow> createRow() {
    List<PlutoRow> rows = [];
    activ.forEach((key, value) {
      PlutoRow row = _createRow(key, value);
      rows.add(row);
    });

    return rows;
  }

  openGridPopup(BuildContext context, PlutoGridOnRowDoubleTapEvent event) {
    var rows = createRow();

    PlutoGridPopup(
      context: context,
      columns: columns,
      width: 600,
      rows: rows,
      mode: PlutoGridMode.select,
      onLoaded: (PlutoGridOnLoadedEvent event) {
        rows.asMap().entries.forEach((element) {
          final cell = element.value.cells['abb']!;

          if (cell.value == 'abb') {
            event.stateManager.setCurrentCell(cell, element.key);
            event.stateManager
                .moveScrollByRow(PlutoMoveDirection.up, element.key + 1);
          }
        });

        event.stateManager.setShowColumnFilter(true);
      },
      onSelected: (PlutoGridOnSelectedEvent _event) {
        event.cell.value = _event.row!.cells['abb']!.value;
      },
    );
  }
}
