// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:pluto_grid/pluto_grid.dart';
// import 'package:ztktlogistic/data_source/api.dart';
// import 'package:ztktlogistic/di/init_di.dart';
// import 'package:intl/intl.dart';

// import '../../../data_source/data.dart';

// class ClientController extends GetxController {
//   List listQuality = [];
//   List<List<PlutoRow>> listPlutoRow = [];

//   final _isLoading = false.obs;

//   get isLoading => _isLoading.value;

//   set isLoading(value) => _isLoading.value = value;

//   final _send = false.obs;

//   get send => _send.value;

//   set send(value) => _send.value = value;

//   Future<List<List<PlutoRow>>> dataFromNetwork() async {
//     listQuality.clear();
//     listPlutoRow.clear();
//     isLoading = true;
//     Map<String, dynamic> data = await locator.get<Api>().downloadQualityMap();
//     if (data.isEmpty) {
//       isLoading = false;
//       return [];
//     } else {
//       listQuality = data['result'];
//       for (int i = 0; i < listQuality.length; i++) {
//         Map<String, dynamic> map = listQuality[i];
//         if (map['status'] == ClassQualityMap.statusQualityMap[0] ||
//             map['status'] == ClassQualityMap.statusQualityMap[4]) {
//           List<PlutoRow> list = [];
//           PlutoRow row = _createPlutoRow(map);
//           list.add(row);
//           listPlutoRow.add(list);
//         }
//       }
//       isLoading = false;
//       return listPlutoRow;
//     }
//   }

//   PlutoRow _createPlutoRow(Map<String, dynamic> map) {
//     late PlutoRow row;
//     Map<String, PlutoCell> cells = {};

//     for (final pair in ClassQualityMap.conformity.entries) {
//       final key = pair.key;
//       final value = pair.value;
//       if (pair.key == 'licenseNumber') {
//         cells.addAll({
//           value: PlutoCell(
//             value: '${map[key]}\n${map['dateRequestTime']}',
//             key: ValueKey('${map['idQualityMap']}${map['vazhno']}'),
//           )
//         });
//       } else if (key == 'day') {
//         String day = DateFormat('dd.MM.yyyy').format(DateTime.parse(map[key]));
//         cells.addAll(
//             {value: PlutoCell(value: day, key: ValueKey(map['idQualityMap']))});
//       } else {
//         cells.addAll({value: PlutoCell(value: map[key])});
//       }
//     }
//     row = PlutoRow(cells: cells);
//     return row;
//   }

//   Future<bool> updateQuality({
//     String comment = '',
//     required bool success,
//     required bool repeatProbe,
//     required List<String> ids,
//   }) async {
//     send = true;
//     final data = await locator.get<Api>().updateQualityMap(
//           ids,
//           comment,
//           success,
//           repeatProbe: repeatProbe,
//         );
//     send = false;
//     return data.isNotEmpty;
//   }
// }
