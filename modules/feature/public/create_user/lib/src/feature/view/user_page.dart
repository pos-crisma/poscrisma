import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../provider/model/user_type.dart';
import 'mobile/user_mobile.dart';
import 'web/user_web.dart';

class UserPage extends StatelessWidget {
  final UserType type;
  final String parishId;
  final String spenderId;
  final String invite;

  const UserPage({
    super.key,
    required this.type,
    required this.parishId,
    required this.spenderId,
    required this.invite,
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
        invite: invite,
      ),
      desktop: const UserWeb(),
    );
  }
}
