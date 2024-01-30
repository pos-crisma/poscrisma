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

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    try {
      return Color(int.parse(buffer.toString(), radix: 16));
    } catch (e) {
      return Colors.white;
    }
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
