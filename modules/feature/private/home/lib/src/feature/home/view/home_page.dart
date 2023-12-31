import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'mobile/home_mobile.dart';
import 'web/home_web.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.deepPurpleAccent,
      ),
    );

    return Responsive(
      mobile: HomeMobile(),
      desktop: const HomeWeb(),
    );
  }
}
