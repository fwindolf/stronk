import 'package:flutter/material.dart';

final paletteDark = [
  Color(0x22BCBF),
  Color(0xE0E0E0),
  Color(0xFF8A5B),
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
    headline1: TextStyle(fontSize: 54.0, fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
    bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
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
    headline1: TextStyle(fontSize: 54.0, fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
    bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
  ),
);
