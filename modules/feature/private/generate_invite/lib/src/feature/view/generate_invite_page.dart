import 'package:design/design.dart';
import 'package:flutter/material.dart';

import 'mobile/generate_invite_mobile.dart';
import 'web/generate_invite_web.dart';

class GenerateInvitePage extends StatelessWidget {
  const GenerateInvitePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: GenerateInviteMobile(),
      desktop: GenerateInviteWeb(),
    );
  }
}
