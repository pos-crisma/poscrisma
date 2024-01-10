import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'mobile/invite_mobile.dart';
import 'web/invite_web.dart';

class InvitePage extends StatelessWidget {
  const InvitePage({
    super.key,
    this.inviteCode,
  });

  final String? inviteCode;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.deepPurpleAccent,
      ),
    );

    return Responsive(
      mobile: InviteMobile(
        inviteCode: inviteCode ?? "",
      ),
      desktop: InviteWeb(
        inviteCode: inviteCode ?? "",
      ),
    );
  }
}
