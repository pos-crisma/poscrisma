import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../controller/model/user_type.dart';
import 'mobile/user_mobile.dart';
import 'web/user_web.dart';

class UserPage extends StatelessWidget {
  final UserType type;
  final String parishId;
  final String spenderId;

  const UserPage({
    super.key,
    required this.type,
    required this.parishId,
    required this.spenderId,
  });

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.deepPurpleAccent,
      ),
    );

    return Responsive(
      mobile: UserMobile(
        parishId: parishId,
        spenderId: spenderId,
        type: type,
      ),
      desktop: const UserWeb(),
    );
  }
}
