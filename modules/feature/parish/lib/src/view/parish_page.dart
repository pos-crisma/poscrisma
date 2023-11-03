import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'mobile/parish_mobile.dart';
import 'web/parish_web.dart';

class ParishPage extends StatelessWidget {
  const ParishPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.deepPurpleAccent,
      ),
    );

    return Responsive(
      mobile: ParishMobile(),
      desktop: const ParishWeb(),
    );
  }
}
