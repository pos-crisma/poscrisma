import 'package:design/design.dart';
import 'package:flutter/material.dart';

class RulePage extends StatelessWidget {
  const RulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Container(),
      desktop: Container(),
    );
  }
}
