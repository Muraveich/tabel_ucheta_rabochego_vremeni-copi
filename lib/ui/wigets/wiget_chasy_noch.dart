import 'package:flutter/material.dart';

class WigetChasyNoch extends StatelessWidget {
  const WigetChasyNoch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
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
        ),
        SizedBox(
          width: 100,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'Часы ${DateTime.now().day + 1}',
                  labelStyle: Theme.of(context).textTheme.labelSmall),
              onChanged: (value) {},
            ),
          ),
        ),
      ],
    );
  }
}
