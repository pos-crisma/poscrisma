import 'package:core/core.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../provider/reducer/home_reducer.dart';
import 'mobile/home_mobile.dart';
import 'web/home_web.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewStore = context.watch<HomeReducer>();

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
