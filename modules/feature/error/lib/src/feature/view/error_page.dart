import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'mobile/error_mobile.dart';
import 'web/error_web.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({
    super.key,
    this.enableColor,
    required this.title,
    required this.content,
    required this.backButton,
    required this.onPress,
  });

  final String title;
  final String content;

  final Color? enableColor;

  final Function() backButton;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.deepPurpleAccent,
      ),
    );

    return Responsive(
      mobile: ErrorMobile(
        backButton: () => backButton,
        onPress: () => onPress,
        title: title,
        content: content,
      ),
      desktop: const ErrorWeb(),
    );
  }
}
