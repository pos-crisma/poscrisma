import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home/src/feature/home/provider/controller/store/home_store.dart';

import '../provider/controller/action/home_action.dart';
import 'mobile/home_mobile.dart';
// import 'web/home_web.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeReducer viewStore = HomeReducer();

  @override
  void initState() {
    super.initState();

    viewStore.send(HomeAction.onAppear(context));
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.deepPurpleAccent,
      ),
    );

    return Responsive(
      mobile: HomeMobile(viewStore: viewStore),
      desktop: HomeMobile(viewStore: viewStore),
    );
  }
}
