import 'package:flutter/material.dart';

const colorSeed = Colors.green;

class AppTheme {
  ThemeData getTheme() {
    return ThemeData(useMaterial3: true, colorSchemeSeed: colorSeed);
  }
}
