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
    textTheme: CustomizeTextTheme.darkTextTheme,
    appBarTheme: const AppBarTheme(
      // color: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
      brightness: Brightness.dark,
      background: darkBackground,
    ),
  );
}
