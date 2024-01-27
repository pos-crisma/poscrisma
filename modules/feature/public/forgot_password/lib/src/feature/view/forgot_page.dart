import 'package:design/design.dart';
import 'package:flutter/material.dart';

import 'mobile/forgot_mobile.dart';
import 'web/forgot_web.dart';

class ForgotPage extends StatelessWidget {
  const ForgotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: Forgotmobile(),
      desktop: ForgotWeb(),
    );
  }
}
