import 'package:flutter/material.dart';

RoundedRectangleBorder shapeTop = const RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12), topRight: Radius.circular(12)));

const InputDecoration inputDecorationSearch = InputDecoration(
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide.none,
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide.none,
  ),
  hintText: 'Поиск...',
  hintStyle: TextStyle(
    color: Colors.white,
  ),
);