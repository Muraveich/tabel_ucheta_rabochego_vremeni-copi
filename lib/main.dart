// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:tabel_ucheta_rabochego_vremeni/ui/page_style/default_theme.dart';
import 'package:tabel_ucheta_rabochego_vremeni/ui/pages/page_filing_shift.dart';
import 'package:tabel_ucheta_rabochego_vremeni/ui/pages/home_page/home_chief.dart';
import 'package:tabel_ucheta_rabochego_vremeni/ui/pages/home_page/home_master.dart';
import 'package:tabel_ucheta_rabochego_vremeni/ui/pages/page_login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: DefaultTheme.defaultTheme,
    home: const PageLogin(),
  ));
}
