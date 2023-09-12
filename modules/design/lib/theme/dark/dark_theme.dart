import 'package:flutter/material.dart';

mixin DarkTheme {
  static final ThemeData darkTheme = ThemeData(
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(fontSize: 18, color: Colors.white70),
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.red,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.red,
      brightness: Brightness.dark,
    ),
  );
}
