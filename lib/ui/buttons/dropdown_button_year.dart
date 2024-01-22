import 'package:flutter/material.dart';

const List<String> _listYear = <String>['2023', '2024', '2025', '2026'];

class DropdownButtonYear extends StatefulWidget {
  const DropdownButtonYear({super.key});

  @override
  State<DropdownButtonYear> createState() => _DropdownButtonYearState();
}

class _DropdownButtonYearState extends State<DropdownButtonYear> {
  String dropdownValue = _listYear.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: dropdownValue,
      elevation: 16,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      items: _listYear.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
