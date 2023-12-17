import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'mobile/parish_mobile.dart';
import 'web/parish_web.dart';

class ParishPage extends StatelessWidget {
  final String type;
  final String parishId;
  final String senderId;
  final String invite;

  const ParishPage({
    super.key,
    required this.parishId,
    required this.type,
    required this.senderId,
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
      mobile: ParishMobile(
        parishId: parishId,
        senderId: senderId,
        type: type,
        invite: invite,
      ),
      desktop: const ParishWeb(),
    );
  }
}
