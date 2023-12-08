import 'package:flutter/material.dart';

import '../../color/color.dart';
import '../../font/manrope_font.dart';
import '../../font/roboto_font.dart';
import '../config/text/text.dart';

mixin DarkTheme {
  static final ThemeData theme = ThemeData(
    useMaterial3: true,
    fontFamily: ManropeFont.manrope,
    fontFamilyFallback: const [
      RobotoFont.roboto,
    ],
    brightness: Brightness.dark,
    textTheme: CustomizeTextTheme.darkTextTheme,
    appBarTheme: const AppBarTheme(
      surfaceTintColor: Colors.transparent,
      backgroundColor: darkBackground,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    colorScheme: const ColorScheme.dark(
      background: darkBackground,
    ),
    scaffoldBackgroundColor: darkBackground,
  );
}
