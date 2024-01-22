import 'package:flutter/material.dart';

class HomeWorker extends StatelessWidget {
  final String name;
  const HomeWorker({super.key, required this.name});

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
          'Работник $name',
          style: const TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [],
          ),
        ),
      ),
    );
  }
}
