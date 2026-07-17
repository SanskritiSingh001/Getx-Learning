import 'package:flutter/material.dart';

var lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  appBarTheme: AppBarTheme(
    foregroundColor: Colors.grey.shade900,
  ),
  scaffoldBackgroundColor: Colors.deepPurple.shade100,
  colorScheme: ColorScheme.light(
      primary: Colors.deepPurple,
      onPrimaryContainer: Colors.white,
      secondary: Colors.deepPurpleAccent,
    primaryContainer: Colors.deepPurple,
      ),
);
var darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.grey.shade900,
  colorScheme: ColorScheme.dark(
    primary: Colors.deepPurpleAccent,
    onPrimaryContainer: Colors.deepPurple,
    secondary: Colors.deepPurple,
    primaryContainer: Colors.grey.shade900,
  ),
);