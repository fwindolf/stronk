import 'package:flutter/material.dart';

final paletteDark = [
  Color(0x22BCBF),
  Color(0xE0E0E0),
  Color(0xFF8A5B),
  // Colors.green.shade300,
  // Colors.green.shade800,
  // Colors.purple.shade700
];

final paletteLight = [
  Color(0x2D3142),
  Color(0xBFC0C0),
  Color(0xFFFFFF),
];

final lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: paletteDark[0],
    secondary: paletteDark[1],
    secondaryVariant: paletteDark[2],
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(fontSize: 44.0, fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    primary: paletteLight[0],
    secondary: paletteLight[1],
    secondaryVariant: paletteLight[2],
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(fontSize: 44.0, fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
  ),
);
