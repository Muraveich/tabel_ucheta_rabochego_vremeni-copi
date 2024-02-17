import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:tabel_ucheta_rabochego_vremeni/bloc/grid_controller_filing_shift.dart';
import 'package:tabel_ucheta_rabochego_vremeni/bloc/list_controller/list_controller.dart';
import 'package:tabel_ucheta_rabochego_vremeni/bloc/person_controller.dart';
import 'package:tabel_ucheta_rabochego_vremeni/bloc/popup_controller/popup_grid_controller_activ.dart';
import 'package:tabel_ucheta_rabochego_vremeni/bloc/popup_controller/popup_grid_controller_add_person.dart';
import 'package:tabel_ucheta_rabochego_vremeni/bloc/popup_controller/popup_grid_controller_replacement%20copy.dart';
import 'package:tabel_ucheta_rabochego_vremeni/data/entities/person_entity.dart';
import 'package:tabel_ucheta_rabochego_vremeni/ui/page_style/button_styles.dart';
import 'package:tabel_ucheta_rabochego_vremeni/ui/page_style/colors.dart';

class PageFilingShift extends StatefulWidget {
  const PageFilingShift({super.key});

  @override
  State<PageFilingShift> createState() => _PageFilingShiftState();
}

class _PageFilingShiftState extends State<PageFilingShift> {
  final PersonController allPerson = PersonController();
  List<PlutoColumn> columns = [];
  List<PlutoRow> rows = [];
  late List<Results> persons;
  late final PlutoGridStateManager stateManager;
  late int nowShift = 2;
  final GridControllerFilingShift _gridController = GridControllerFilingShift();
  bool _showButtons = true;

  @override
  void initState() {
    _gridController.checkDayNight();
    columns = _gridController.columns;
    if (!_gridController.dayNight) {
      columns[5].hide = false;
    }
    super.initState();
  }

  String _printDayNight() {
    if (_gridController.dayNight) {
      return '${DateFormat('dd.MM.yyyy').format(DateTime.now())}\nДневная: с 8:00 до 20:00';
    } else {
      return '${DateFormat('dd-${DateTime.now().day + 1}.MM.yyyy').format(DateTime.now())}\nНочная: с 20:00 до 8:00';
    }
  }

  @override
  Widget build(BuildContext context) {
    var titleLarge = Theme.of(context).textTheme.titleLarge;

    // Переделать в дальнейшем
    late Widget dropdownButtonEditShift = Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
            backgroundColor: Colors.green,
            child: const Icon(
              Icons.edit,
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {
                _showButtons = !_showButtons;
              });
            }),
      ],
    );
    late Widget dropdownButtonFilingShift = Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
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
                setState(() {
                  _showButtons = !_showButtons;
                });
              },
              style: buttonStyleGreen,
              child: Text(
                'Сохранить',
                style: titleLarge,
              )),
        ],
      ),
    );

    return FutureBuilder(
        future: allPerson.getNowShift(),
        builder: (context, snapshot) => Scaffold(
              appBar: AppBar(
                leading: BackButton(
                  onPressed: () => Navigator.pop(context, false),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Смена №${snapshot.data}   ${_printDayNight()}',
                      style: titleLarge,
                    ),
                    ElevatedButton(
                        onPressed: () async {
                          rows.clear();
                          stateManager.removeAllRows();
                          _gridController.nowShiftIndex =
                              await allPerson.getNowShift();
                          _gridController.persons =
                              await allPerson.getAllPerson();
                          rows = _gridController.createRowsPersons();
                          persons = _gridController.persons!;
                          stateManager.insertRows(0, rows);
                        },
                        style: buttonStyleGreen,
                        child: Text('Заполнить', style: titleLarge)),
                  ],
                ),
                centerTitle: true,
              ),
              body: SafeArea(
                child: ListView(
                  children: [
                    Container(
                      height: 550,
                      padding: const EdgeInsets.all(6),
                      child: PlutoGrid(
                        columns: columns,
                        rows: rows,
                        columnGroups: _gridController.columnGroups,
                        onLoaded: (event) => stateManager = event.stateManager,
                        onRowDoubleTap: (event) {
                          switch (event.cell.column.field) {
                            case 'status':
                              PopupGridControllerActiv()
                                  .openGridPopup(context, event);
                            case 'replacement':
                              PopupGridControllerReplacement()
                                  .openGridPopup(context, persons, event);
                            case 'comment':
                              ListController().openDetail(context, event);
                              break;
                            default:
                          }
                        },
                        configuration: PlutoGridConfiguration(
                            localeText: const PlutoGridLocaleText.russian(),
                            style: PlutoGridStyleConfig(
                              evenRowColor: colorColumnBacground,
                              rowHeight: 40,
                              columnHeight: 30,
                              columnTextStyle:
                                  const TextStyle(fontFamily: 'ExoBold'),
                            )),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: _showButtons
                            ? dropdownButtonFilingShift
                            : dropdownButtonEditShift)
                  ],
                ),
              ),
            ));
  }
}
