import 'package:flutter/material.dart';

import '../../font/manrope_font.dart';
import '../../font/roboto_font.dart';

mixin LightTheme {
  static final ThemeData theme = ThemeData(
    useMaterial3: true,
    fontFamily: ManropeFont.manrope,
    fontFamilyFallback: const [
      RobotoFont.roboto,
    ],
    appBarTheme: const AppBarTheme(
      color: Colors.blue,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.purple,
      brightness: Brightness.light,
    ),
  );
}
