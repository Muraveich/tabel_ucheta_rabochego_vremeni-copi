import 'package:flutter/material.dart';

const List<String> _listWorkingShift = <String>[
  'Смена №1',
  'Смена №2',
  'Смена №3',
  'Смена №4'
];

class DropdownWorkingShift extends StatefulWidget {
  const DropdownWorkingShift({super.key});

  @override
  State<DropdownWorkingShift> createState() => _DropdownWorkingShiftState();
}

class _DropdownWorkingShiftState extends State<DropdownWorkingShift> {
  String dropdownV = _listWorkingShift.first;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: dropdownV,
      elevation: 20,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onChanged: (String? valu) {
        setState(() {
          dropdownV = valu!;
        });
      },
      items: _listWorkingShift.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
