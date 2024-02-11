import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:tabel_ucheta_rabochego_vremeni/bloc/grid_controller_filing_shift.dart';
import 'package:tabel_ucheta_rabochego_vremeni/bloc/popup_controller/popup_grid_controller_add_person.dart';
import 'package:tabel_ucheta_rabochego_vremeni/data/entities/person_entity.dart';
import 'package:tabel_ucheta_rabochego_vremeni/ui/page_style/button_styles.dart';

class DropDownButtonFilingShift extends StatelessWidget {
  final List<PlutoRow> rows;
  final List<Results> persons;
  final PlutoGridStateManager stateManager;
  final int nowShift;
  const DropDownButtonFilingShift(
      {super.key,
      required this.rows,
      required this.persons,
      required this.stateManager,
      required this.nowShift});

  @override
  Widget build(BuildContext context) {
    var titleLarge = Theme.of(context).textTheme.titleLarge;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
            onPressed: () {
              PopupGridControllerAddPerson()
                  .openGridPopup(context, persons, stateManager, rows);
            },
            style: buttonStyleGreen,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.add_circle_outline, color: Colors.white),
                Text(
                  ' Добавить сотрудника',
                  style: titleLarge,
                ),
              ],
            )),
        ElevatedButton(
            onPressed: () {
              var grid = GridControllerFilingShift(
                  persons: persons, nowShiftIndex: nowShift);
              grid.safeNowShiftPerson(persons, rows);
            },
            style: buttonStyleGreen,
            child: Text(
              'Сохранить',
              style: titleLarge,
            )),
      ],
    );
  }
}
