import 'package:flutter/material.dart';

const List<String> _listMonth = <String>['Январь', 'Февраль', 'Март', 'Апрель'];

class DropdownButtonMonth extends StatefulWidget {
  const DropdownButtonMonth({super.key});

  @override
  State<DropdownButtonMonth> createState() => _DropdownButtonMonthState();
}

class _DropdownButtonMonthState extends State<DropdownButtonMonth> {
  String dropdownV = _listMonth.first;
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
      items: _listMonth.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
