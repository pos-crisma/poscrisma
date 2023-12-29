import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'mobile/young_mobile.dart';
import 'web/young_web.dart';

class YoungPage extends StatelessWidget {
  const YoungPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.deepPurpleAccent,
      ),
    );

    return Responsive(
      mobile: YoungMobile(),
      desktop: const YoungWeb(),
    );
  }
}
