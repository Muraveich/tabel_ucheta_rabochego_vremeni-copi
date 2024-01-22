import 'package:flutter/material.dart';

class WigetChasyDen extends StatelessWidget {
  const WigetChasyDen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: TextFormField(
          decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: 'Часы ${DateTime.now().day}',
              labelStyle: Theme.of(context).textTheme.labelSmall),
          onChanged: (value) {},
        ),
      ),
    );
  }
}
