
import 'package:flutter/material.dart';

final ButtonStyle buttonStyleGreen = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(Colors.green),
  elevation: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.pressed) ||
        states.contains(MaterialState.disabled)) {
      return 0;
    }
    return 10;
  }),
  shape: MaterialStateProperty.all(const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(40.0)))),
);

final ButtonStyle buttonStyleRed = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(Colors.red),
  elevation: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.pressed) ||
        states.contains(MaterialState.disabled)) {
      return 0;
    }
    return 10;
  }),
  shape: MaterialStateProperty.all(const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(40.0)))),
);

final ButtonStyle buttonStyleBlue = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(Colors.blue),
  elevation: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.pressed) ||
        states.contains(MaterialState.disabled)) {
      return 0;
    }
    return 10;
  }),
  shape: MaterialStateProperty.all(const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(40.0)))),
);

final ButtonStyle buttonStyleGrey = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(Colors.grey),
  elevation: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.pressed) ||
        states.contains(MaterialState.disabled)) {
      return 0;
    }
    return 10;
  }),
  shape: MaterialStateProperty.all(const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(40.0)))),
);

final ButtonStyle buttonStyleOrange = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(Colors.orange.shade300),
  elevation: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.pressed) ||
        states.contains(MaterialState.disabled)) {
      return 0;
    }
    return 10;
  }),
  shape: MaterialStateProperty.all(const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(40.0)))),
);