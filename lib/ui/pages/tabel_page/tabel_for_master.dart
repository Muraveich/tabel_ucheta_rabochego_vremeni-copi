import 'package:flutter/material.dart';

const List<String> _listMonth = <String>['Январь', 'Февраль', 'Март', 'Апрель'];
const List<String> _listYear = <String>['2023', '2024', '2025', '2026'];

class TabelForMaster extends StatelessWidget {
  const TabelForMaster({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.pop(context, false),
        ),
        title: const Text('Табель мастера'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Column(
            children: [
              const DropdownButtonYear(),
              const SizedBox(height: 20),
              const DropdownButtonMonth(),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Ввод',
                  textDirection: TextDirection.ltr,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
