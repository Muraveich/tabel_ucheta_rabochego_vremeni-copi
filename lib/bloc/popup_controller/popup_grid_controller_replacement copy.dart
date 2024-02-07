import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:tabel_ucheta_rabochego_vremeni/bloc/popup_controller/i_popup_grid_controller.dart';
import 'package:tabel_ucheta_rabochego_vremeni/data/entities/person_entity.dart';

class PopupGridControllerReplacement extends IPopupGridController {
  openGridPopup(BuildContext context, List<Results> persons,
      PlutoGridOnRowDoubleTapEvent? event) {
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
        event!.cell.value = _event.row!.cells['name']!.value;
      },
    );
  }
}
