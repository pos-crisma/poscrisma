import 'package:design/design.dart';
import 'package:flutter/material.dart';

import 'mobile/schedule_mobile.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: const ScheduleMobile(),
      desktop: Container(),
    );
  }
}
