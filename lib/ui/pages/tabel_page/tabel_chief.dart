import 'package:flutter/material.dart';
import 'package:tabel_ucheta_rabochego_vremeni/ui/buttons/dropdown_button_working_shift.dart';
import 'package:tabel_ucheta_rabochego_vremeni/ui/pages/tabel_page/tabel_for_master.dart';

class TabelForChief extends StatelessWidget {
  const TabelForChief({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.pop(context, false),
        ),
        title: const Text('Табель начальника'),
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
              const DropdownWorkingShift(),
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
