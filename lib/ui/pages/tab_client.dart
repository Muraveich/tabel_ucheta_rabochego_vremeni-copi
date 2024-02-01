// import 'package:flutter/material.dart';
// import 'package:tabel_ucheta_rabochego_vremeni/bloc/client_controller.dart';

// class TabClient extends StatefulWidget {
//   const TabClient({Key? key}) : super(key: key);

//   @override
//   State<TabClient> createState() => _TabClientState();
// }

// class _TabClientState extends State<TabClient> {
//   final ClientController _c = Get.put(ClientController());
//   final List<PlutoColumn> columns = [];
//   final List<PlutoRow> rows = [];
//   late PlutoGridStateManager stateManager;
//   bool isLoading = true;
//   final _commentController = TextEditingController();
//   late final String role;

//   @override
//   void initState() {
//     role = GetStorage().read(USER)['status'];
//     _createColumns();
//     _getQuality();
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _commentController.dispose();
//     super.dispose();
//   }

//   void _getQuality() {
//     _c.dataFromNetwork().then((fetchedRows) {
//       if (fetchedRows.isEmpty) {
//         stateManager.setShowLoading(false);
//       }
//       for (List<PlutoRow> element in fetchedRows) {
//         PlutoGridStateManager.initializeRowsAsync(
//           columns,
//           element,
//         ).then((value) {
//           stateManager.refRows.addAll(value);
//           stateManager.setShowLoading(false);
//         });
//       }
//     });
//   }

//   void _createColumns() {
//     for (final pair in ClassQualityMap.conformity.entries) {
//       final key = pair.key;
//       final value = pair.value;
//       columns.add(PlutoColumn(
//         enableRowChecked: key == 'licenseNumber' && role == ROLE_QUALITY_CLIENT
//             ? true
//             : false,
//         frozen:
//             columns.isEmpty ? PlutoColumnFrozen.start : PlutoColumnFrozen.none,
//         title: value,
//         field: value,
//         hide: key == 'culture' ||
//             key == 'checkSilage' ||
//             key == 'dateRequestTime' ||
//             key == 'vazhno' ||
//             key == 'idQualityMap',
//         type: PlutoColumnType.text(),
//         backgroundColor: const Color(0x60F8E693),
//         enableColumnDrag: false,
//         enableSorting: false,
//         enableContextMenu: false,
//         enableDropToResize: false,
//         readOnly: true,
//         enableFilterMenuItem: false,
//         enableHideColumnMenuItem: false,
//         enableSetColumnsMenuItem: false,
//         enableAutoEditing: false,
//         enableEditingMode: false,
//         width: key == 'day' ? 90 : 150,
//         textAlign: PlutoColumnTextAlign.center,
//         titleTextAlign: PlutoColumnTextAlign.center,
//         renderer: (rendererContext) {
//           if (rendererContext.cell.key.toString().contains('true')) {
//             return Text(
//               rendererContext.cell.value.toString(),
//               textAlign: TextAlign.center,
//               style: const TextStyle(color: Colors.red),
//             );
//           }
//           return Text(
//             rendererContext.cell.value.toString(),
//             textAlign: TextAlign.center,
//             overflow: TextOverflow.ellipsis,
//           );
//         },
//       ));
//     }
//   }

//   PlutoGridConfiguration _configuration() {
//     return const PlutoGridConfiguration(
//       localeText: PlutoGridLocaleText.russian(),
//       style: PlutoGridStyleConfig(
//         rowHeight: 40,
//         columnHeight: 56,
//         columnTextStyle: TextStyle(fontFamily: 'ExoBold'),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Заявки'),
//         actions: [
//           //
//         ],
//       ),
//       body: SafeArea(
//         child: PlutoGrid(
//           columns: columns,
//           rows: rows,
//           onLoaded: (PlutoGridOnLoadedEvent event) {
//             stateManager = event.stateManager;
//             stateManager.setShowLoading(true);
//           },
//           onRowDoubleTap: (event) {
//             //_onTapCell(event: event);
//           },
//           configuration: _configuration(),
//         ),
//       ),
//     );
//   }
// }
