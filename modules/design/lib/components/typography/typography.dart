import 'package:flutter/material.dart';

import '../../font/roboto_font.dart';

class TypographyText extends StatelessWidget {
  const TypographyText({
    super.key,
    required this.text,
    required TextStyle style,
  }) : _style = style;

  TypographyText.headine1({
    super.key,
    required this.text,
    TextStyle? style,
  }) : _style = RobotoFont.heading1.merge(style);

  TypographyText.headine2({
    super.key,
    required this.text,
    TextStyle? style,
  }) : _style = RobotoFont.heading2.merge(style);

  TypographyText.headine3({
    super.key,
    required this.text,
    TextStyle? style,
  }) : _style = RobotoFont.heading3.merge(style);

  TypographyText.heading4({
    super.key,
    required this.text,
    TextStyle? style,
  }) : _style = RobotoFont.heading4.merge(style);

  TypographyText.heading5({
    super.key,
    required this.text,
    TextStyle? style,
  }) : _style = RobotoFont.heading5.merge(style);

  TypographyText.headine6({
    super.key,
    required this.text,
    TextStyle? style,
  }) : _style = RobotoFont.heading6.merge(style);

  TypographyText.body1({
    super.key,
    required this.text,
    TextStyle style = RobotoFont.body1,
  }) : _style = RobotoFont.body1.merge(style);

  TypographyText.body2({
    super.key,
    required this.text,
    TextStyle style = RobotoFont.body2,
  }) : _style = RobotoFont.body2.merge(style);

  TypographyText.subtitle1({
    super.key,
    required this.text,
    TextStyle style = RobotoFont.subtitle1,
  }) : _style = RobotoFont.subtitle1.merge(style);

  TypographyText.subtitle2({
    super.key,
    required this.text,
    TextStyle style = RobotoFont.subtitle2,
  }) : _style = RobotoFont.subtitle2.merge(style);

  TypographyText.captionText({
    super.key,
    required this.text,
    TextStyle style = RobotoFont.captionText,
  }) : _style = RobotoFont.captionText.merge(style);

  TypographyText.overlineText({
    super.key,
    required this.text,
    TextStyle style = RobotoFont.overlineText,
  }) : _style = RobotoFont.overlineText.merge(style);

  TypographyText.button({
    super.key,
    required this.text,
    TextStyle style = RobotoFont.button,
  }) : _style = RobotoFont.button.merge(style);

  final String text;
  final TextStyle _style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: _style,
    );
  }
}
