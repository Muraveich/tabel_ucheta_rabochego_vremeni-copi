import 'package:flutter/material.dart';

class DropdownButtonEditShift extends StatelessWidget {
  const DropdownButtonEditShift({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
            child: const Icon(
              Icons.edit,
              color: Colors.white,
            ),
            onPressed: () {}),
      ],
    );
  }
}
