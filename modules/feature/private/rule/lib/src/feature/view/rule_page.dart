import 'package:design/design.dart';
import 'package:flutter/material.dart';

import 'mobile/rule_mobile.dart';

class RulePage extends StatelessWidget {
  const RulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: const RuleMobile(),
      desktop: Container(),
    );
  }
}
