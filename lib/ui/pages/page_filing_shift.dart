import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:tabel_ucheta_rabochego_vremeni/bloc/grid_controller_filing_shift.dart';
import 'package:tabel_ucheta_rabochego_vremeni/bloc/person_controller.dart';
import 'package:tabel_ucheta_rabochego_vremeni/data/entities/person_entity.dart';
import 'package:tabel_ucheta_rabochego_vremeni/ui/page_style/button_styles.dart';

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
  late int nowShift;

  @override
  void initState() {
    var nowTime = DateTime.now();
    columns = GridControllerFilingShift().columns;
    if (nowTime.hour >= 20 || nowTime.hour <= 7) {
      columns[5].hide = false;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var titleLarge = Theme.of(context).textTheme.titleLarge;
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
                      'Заполнение смены №${snapshot.data}',
                    ),
                    ElevatedButton(
                        onPressed: () async {
                          rows.clear();
                          nowShift = await allPerson.getNowShift();
                          persons = await allPerson.getAllPerson();
                          var grid = GridControllerFilingShift(
                              persons: persons, nowShiftIndex: nowShift);
                          rows = grid.createRowsPersons();
                          stateManager.insertRows(0, rows);
                        },
                        style: buttonStyleOrange,
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
                        // columnGroups: [
                        //   PlutoColumnGroup(
                        //       title: 'title',
                        //       fields: ['name', 'post'],
                        //       expandedColumn: false)
                        // ],
                        onLoaded: (event) => stateManager = event.stateManager,

                        configuration: PlutoGridConfiguration(
                            localeText: const PlutoGridLocaleText.russian(),
                            style: PlutoGridStyleConfig(
                              evenRowColor: Colors.orange[300],
                              rowHeight: 40,
                              columnHeight: 56,
                              columnTextStyle:
                                  const TextStyle(fontFamily: 'ExoBold'),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              style: buttonStyleGreen,
                              child: Text(
                                'Добавить сотрудника',
                                style: titleLarge,
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
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}
