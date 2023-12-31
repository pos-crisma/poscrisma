import 'package:design/design.dart';
import 'package:flutter/material.dart';

const lightBackground = Color(0xffFFFFFF);
const darkBackground = Color(0xff1A1C1E);

// Carrosel
const lightCardBackground = Color(0xffDCE4E8);
const darkCardBackground = Color(0xff131619);

extension ColorMode on Color {
  static Color setColor({
    required BuildContext context,
    required Color light,
    required Color dark,
  }) {
    return SystemMode.isDark(context) ? dark : light;
  }
}
