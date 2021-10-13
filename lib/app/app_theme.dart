import 'package:flutter/material.dart';

class AppColorScheme {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      primary: Color(0xff00bcd4),
      primaryVariant: Color(0xff008ba3),
      onPrimary: Color(0xff000000),
      secondary: Color(0xff1565c0),
      secondaryVariant: Color(0xff003c8f),
      onSecondary: Color(0xffffffff),
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 44.0, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
    ),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      background: Colors.grey.shade900,
      onBackground: Colors.indigo.shade50,
      primary: Colors.indigo.shade300,
      primaryVariant: Colors.indigo.shade200,
      onPrimary: Colors.white,
      secondary: Colors.amber.shade300,
      secondaryVariant: Colors.amber.shade100,
      onSecondary: Colors.black,
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 44.0, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
    ),
  );
}
