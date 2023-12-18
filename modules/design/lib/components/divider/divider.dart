import 'package:design/design.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final double _height;

  const CustomDivider({
    super.key,
    double height = 2,
  }) : _height = height;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: _height,
      color: SystemMode.isDark(context)
          ? Colors.grey.shade900
          : Colors.grey.shade100,
    );
  }
}
