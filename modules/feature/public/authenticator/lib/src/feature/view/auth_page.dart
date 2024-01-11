import 'package:authenticator/src/feature/provider/controller/store/auth_reducer.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../provider/controller/action/auth_action.dart';
import 'mobile/auth_mobile.dart';
import 'web/auth_web.dart';

class AuthPage extends StatelessWidget {
  AuthPage({super.key});

  final AuthReducer viewStore = AuthReducer();

  @override
  Widget build(BuildContext context) {
    viewStore.send(AuthAction.onAppear(context));

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.deepPurpleAccent,
      ),
    );

    return Responsive(
      mobile: AuthMobile(viewStore: viewStore),
      desktop: AuthWeb(viewStore: viewStore),
    );
  }
}
