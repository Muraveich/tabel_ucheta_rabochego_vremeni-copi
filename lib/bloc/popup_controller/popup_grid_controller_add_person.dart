import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:tabel_ucheta_rabochego_vremeni/bloc/grid_controller_filing_shift.dart';
import 'package:tabel_ucheta_rabochego_vremeni/bloc/popup_controller/i_popup_grid_controller.dart';
import 'package:tabel_ucheta_rabochego_vremeni/data/entities/person_entity.dart';

class PopupGridControllerAddPerson extends IPopupGridController {
  openGridPopup(BuildContext context, List<Results> persons,
      PlutoGridStateManager? stateManager, List<PlutoRow> listRows) {
    var rows = createRowPerson(persons);

    PlutoGridPopup(
      context: context,
      columns: columns,
      width: 600,
      rows: rows,
      mode: PlutoGridMode.select,
      onLoaded: (PlutoGridOnLoadedEvent event) {
        rows.asMap().entries.forEach((element) {
          final cell = element.value.cells['name']!;

          if (cell.value == 'name') {
            event.stateManager.setCurrentCell(cell, element.key);
            event.stateManager
                .moveScrollByRow(PlutoMoveDirection.up, element.key + 1);
          }
        });

        event.stateManager.setShowColumnFilter(true);
      },
      onSelected: (PlutoGridOnSelectedEvent _event) {
        Results person = persons.firstWhere(
            (element) => element.name == _event.row!.cells['name']!.value);
        List<PlutoRow> newRow = [];
        newRow.add(GridControllerFilingShift().createRow(person));
        stateManager!.insertRows(listRows.length, newRow);
        listRows.addAll(newRow);
      },
    );
  }
}
