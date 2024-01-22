import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DefaultTheme {
  static final defaultTheme = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.blue.shade700,
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarColor: Colors.blue.shade700),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey[600]!, width: 2)),
    ),
    fontFamily: 'Exo2-Bold',
    textTheme: const TextTheme(
        titleLarge: TextStyle(color: Colors.white),
        labelSmall: TextStyle(fontSize: 12)),
  );
}
