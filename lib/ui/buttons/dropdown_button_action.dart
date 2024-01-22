import 'package:flutter/material.dart';
import 'package:tabel_ucheta_rabochego_vremeni/ui/wigets/wiget_chasy_den.dart';
import 'package:tabel_ucheta_rabochego_vremeni/ui/wigets/wiget_chasy_noch.dart';

const List<String> _listAction = <String>[
  'День',
  'Ночь',
  'РВ день',
  'РВ ночь',
  'Перевод',
  'Больничный',
  'Отпуск',
  'ДО',
  'Отсутствовал'
];

class DropdownButtonAction extends StatefulWidget {
  const DropdownButtonAction({super.key});

  @override
  State<DropdownButtonAction> createState() => _DropdownButtonActionState();
}

class _DropdownButtonActionState extends State<DropdownButtonAction> {
  String dropdownV = _listAction.first;
  Widget? _denNochChasy = const WigetChasyDen();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 160,
          child: DropdownButtonFormField<String>(
            value: dropdownV,
            elevation: 10,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: const BorderSide(width: 0.5),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onChanged: (String? value) {
              setState(() {
                dropdownV = value!;
                _denNochChasy = null;
                if (dropdownV == _listAction[0] ||
                    dropdownV == _listAction[2]) {
                  _denNochChasy = const WigetChasyDen();
                } else if (dropdownV == _listAction[1] ||
                    dropdownV == _listAction[3]) {
                  _denNochChasy = const WigetChasyNoch();
                }
              });
            },
            items: _listAction.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        _denNochChasy ?? const SizedBox()
      ],
    );
  }
}
