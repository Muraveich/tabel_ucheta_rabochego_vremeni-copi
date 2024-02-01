import 'package:flutter/material.dart';
import 'package:tabel_ucheta_rabochego_vremeni/ui/pages/page_filing_shift.dart';
import 'package:tabel_ucheta_rabochego_vremeni/ui/wigets/wiget_home_page_body.dart';

class HomeMaster extends StatelessWidget {
  final String name;
  const HomeMaster({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Container(
          margin: const EdgeInsets.only(top: 30),
          child: Drawer(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [Colors.white, Colors.grey]),
              ),
              child: ListView(children: [
                ListTile(
                  title: const Row(
                    children: [
                      Icon(Icons.event_available),
                      SizedBox(width: 20),
                      Text('Текущая смена'),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PageFilingShift()));
                  },
                ),
                ListTile(
                  title: const Row(
                    children: [
                      Icon(Icons.event),
                      SizedBox(width: 20),
                      Text('Личный табель'),
                    ],
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: const Row(
                    children: [
                      Icon(Icons.date_range),
                      SizedBox(width: 20),
                      Text('Сводный за месяц'),
                    ],
                  ),
                  onTap: () {},
                ),
                const Divider(),
                ListTile(
                  title: const Row(
                    children: [
                      Icon(Icons.info_outline),
                      SizedBox(width: 20),
                      Text('О приложении'),
                    ],
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: const Row(
                    children: [
                      Icon(Icons.exit_to_app),
                      SizedBox(width: 20),
                      Text('Выход'),
                    ],
                  ),
                  onTap: () {},
                ),
              ]),
            ),
          ),
        ),
        appBar: AppBar(
          title: Text(
            'Мастер $name',
            style: const TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: const WigetHomePageBody());
  }
}
