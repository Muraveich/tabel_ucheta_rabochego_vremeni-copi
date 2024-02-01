import 'package:flutter/material.dart';
import 'package:tabel_ucheta_rabochego_vremeni/ui/wigets/wiget_home_page_body.dart';

class HomeChief extends StatelessWidget {
  final String name;
  const HomeChief({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Container(
          margin: const EdgeInsets.only(top: 30),
          width: 345,
          child: Drawer(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [Colors.white, Colors.grey]),
              ),
              child: ListView(children: [
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
                      Text('Сводный график смен'),
                    ],
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: const Row(
                    children: [
                      Icon(Icons.event_available),
                      SizedBox(width: 20),
                      Text('Заявки на внесение изменений'),
                    ],
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: const Row(
                    children: [
                      Icon(Icons.event_available),
                      SizedBox(width: 20),
                      Text('История изменений'),
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
            'Руководитель $name',
            style: const TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: const WigetHomePageBody());
  }
}
