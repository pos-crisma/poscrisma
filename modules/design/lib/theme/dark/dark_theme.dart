import 'package:flutter/material.dart';

import '../../font/manrope_font.dart';
import '../../font/roboto_font.dart';

mixin DarkTheme {
  static final ThemeData theme = ThemeData(
    useMaterial3: true,
    fontFamily: ManropeFont.manrope,
    fontFamilyFallback: const [
      RobotoFont.roboto,
    ],
    textTheme: const TextTheme(),
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
    ),
  );
}
