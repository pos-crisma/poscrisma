import 'dart:convert';

import 'package:flutter/foundation.dart';

class CustomPrettyPrinter {
  static JsonDecoder decoder = const JsonDecoder();
  static JsonEncoder encoder = const JsonEncoder.withIndent('  ');

  static void prettyPrintJson(String input) {
    var object = decoder.convert(input);
    var prettyString = encoder.convert(object);

    prettyString.split('\n').forEach((element) {
      if (kDebugMode) {
        print(element);
      }
    });
  }
}
