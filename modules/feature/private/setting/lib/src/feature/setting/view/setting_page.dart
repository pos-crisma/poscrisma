import 'package:flutter/material.dart';
import 'package:design/design.dart';

import 'mobile/setting_mobile.dart';
// import 'web/setting_web.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: SettingMobile(),
      desktop: SettingMobile(),
    );
  }
}
