import 'package:flutter/material.dart';

class ThemeClass {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey[100],
    brightness: Brightness.light,
    primaryColor: Colors.deepPurple,
    fontFamily: '',
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 2,
      centerTitle: true,
      foregroundColor: Colors.black,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black54,
    fontFamily: 'Poppins',
    colorScheme: ColorScheme.dark(
      primary: Colors.deepPurple,
      onPrimary: Colors.white,
    ),
    splashColor: Colors.deepPurple.withAlpha(40),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black87,
    ),
  );
}
