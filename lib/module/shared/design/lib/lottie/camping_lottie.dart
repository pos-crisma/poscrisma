import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:poscrisma/module/shared/design/assets/app_assets.dart';

class CampingAnimation extends StatelessWidget {
  const CampingAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      AppAssets.campingAnimation,
      width: 200,
      height: 200,
      fit: BoxFit.cover,
      animate: true,
    );
  }
}
