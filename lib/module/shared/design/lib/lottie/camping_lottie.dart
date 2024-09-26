import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CampingAnimation extends StatelessWidget {
  const CampingAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      'lib/module/shared/design/assets/animation/camping.json',
      width: 200,
      height: 200,
      fit: BoxFit.cover,
      animate: true,
    );
  }
}
