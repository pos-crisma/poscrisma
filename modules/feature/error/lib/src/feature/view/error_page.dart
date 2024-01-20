import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'mobile/error_mobile.dart';
// import 'web/error_web.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({
    super.key,
    this.enableColor,
    this.title,
    this.content,
    required this.backButton,
    required this.onPress,
    this.isShowButton = true,
    this.titleButton = 'Tentar novamente',
  });

  final String? title;
  final String? content;

  final Color? enableColor;

  final VoidCallback? backButton;

  final bool isShowButton;
  final String titleButton;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.deepPurpleAccent,
      ),
    );

    return Responsive(
      mobile: ErrorMobile(
        backButton: backButton,
        onPress: onPress,
        title: title ?? "Tente novamente mais tarde",
        content: content ??
            "Tente novamente mais tarde,\nMotivo algum erro interno no sistema.\nContatar algum responsavel da plataforma",
        isShowButton: isShowButton,
        titleButton: titleButton,
      ),
      desktop: ErrorMobile(
        backButton: backButton,
        onPress: onPress,
        title: title ?? "Tente novamente mais tarde",
        content: content ??
            "Tente novamente mais tarde,\nMotivo algum erro interno no sistema.\nContatar algum responsavel da plataforma",
        isShowButton: isShowButton,
        titleButton: titleButton,
      ),
    );
  }
}
