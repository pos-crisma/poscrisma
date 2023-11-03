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
      color: Colors.blue,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.purple,
      brightness: Brightness.light,
      background: lightBackground,
    ),
  );
}
