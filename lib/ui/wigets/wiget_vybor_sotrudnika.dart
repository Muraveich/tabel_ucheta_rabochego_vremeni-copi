import 'package:flutter/material.dart';

class WigetVyborSotrudnika extends StatelessWidget {
  final String name;
  const WigetVyborSotrudnika({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {}, child: Text(name));
  }
}
