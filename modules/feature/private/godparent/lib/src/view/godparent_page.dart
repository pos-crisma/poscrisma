import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'mobile/godparent_mobile.dart';
import 'web/godparent_web.dart';

class GodParentPage extends StatelessWidget {
  const GodParentPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.deepPurpleAccent,
      ),
    );

    return Responsive(
      mobile: GodParentMobile(),
      desktop: const GodParentWeb(),
    );
  }
}
