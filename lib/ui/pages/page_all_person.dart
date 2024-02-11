import 'package:flutter/material.dart';

class PageAllPerson extends StatelessWidget {
  PageAllPerson({Key? key}) : super(key: key);

  final List<Widget> _allPersonSpisok = [];
  @override
  Widget build(BuildContext context) {
    // for (var element in _allPersonRepo) {
    //   _allPersonSpisok.add(WigetVyborSotrudnika(name: element.name));
    // }

    return Scaffold(
      appBar: AppBar(
        title: Text('Список всех сотрудников',
            style: Theme.of(context).textTheme.titleLarge),
        centerTitle: true,
      ),
      body: ListView(
        children: _allPersonSpisok,
      ),
    );
  }
}
