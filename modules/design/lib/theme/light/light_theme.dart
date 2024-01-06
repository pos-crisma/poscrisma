import 'package:flutter/material.dart';

import '../../color/color.dart';
import '../../font/manrope_font.dart';
import '../../font/roboto_font.dart';
import '../config/text/text.dart';

mixin LightTheme {
  static final ThemeData theme = ThemeData(
    useMaterial3: true,
    fontFamily: ManropeFont.manrope,
    fontFamilyFallback: const [
      RobotoFont.roboto,
    ],
    brightness: Brightness.light,
    textTheme: CustomizeTextTheme.lightTextTheme,
    appBarTheme: const AppBarTheme(
      surfaceTintColor: Colors.transparent,
      backgroundColor: lightBackground,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    splashColor: Colors.grey.shade50,
    highlightColor: Colors.transparent,
    colorScheme: const ColorScheme.light(
      background: lightBackground,
    ),
  );
}
