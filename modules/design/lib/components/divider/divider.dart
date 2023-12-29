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
    return Container(
      margin: const EdgeInsets.only(top: 2),
      width: MediaQuery.of(context).size.width,
      height: _height,
      color: SystemMode.isDark(context)
          ? Colors.grey.shade800
          : Colors.grey.shade100,
    );
  }
}
