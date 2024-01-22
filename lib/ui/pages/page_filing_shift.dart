// import 'package:flutter/material.dart';
// import 'package:tabel_ucheta_rabochego_vremeni/ui/pages/page_all_person.dart';
// import 'package:tabel_ucheta_rabochego_vremeni/ui/wigets/wiget_shift_participant.dart';

// class PageFilingShift extends StatelessWidget {
//   const PageFilingShift({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // List<Widget> spisocRabochihSmeny = [
//     //   WigetShiftParticipant(person: _jurba),
//     //   const SizedBox(height: 20),
//     //   WigetShiftParticipant(person: _kesarev),
//     // ];

//     return Scaffold(
//       appBar: AppBar(
//         leading: BackButton(
//           onPressed: () => Navigator.pop(context, false),
//         ),
//         title: const Text(
//           'Заполнение смены',
//         ),
//         centerTitle: true,
//       ),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Состав смены на ${DateTime.now().toString().substring(0, 16)}',
//                 style: const TextStyle(
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Expanded(
//                 child: ListView(
//                   // children: spisocRabochihSmeny,
//                 ),
//               ),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => PageAllPerson()));
//                 },
//                 child: const Text(
//                   'Добавить работника',
//                   textDirection: TextDirection.ltr,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
