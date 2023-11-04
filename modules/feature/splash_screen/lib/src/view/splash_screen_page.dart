import 'dart:async';

import 'package:core/core.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'mobile/splash_screen_mobile.dart';
import 'web/splash_screen_web.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.deepPurpleAccent,
      ),
    );

    Timer(
      const Duration(seconds: 1),
      () => Modular.to.navigate('/feed/'),
    );

    return Responsive(
      mobile: SplashScreenMobile(),
      desktop: const SplashScreenWeb(),
    );
  }
}
