import 'package:flutter/material.dart';
import 'package:design/design.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Container(),
      desktop: Container(),
    );
  }
}
