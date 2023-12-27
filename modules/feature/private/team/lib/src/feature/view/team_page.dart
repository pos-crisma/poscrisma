import 'package:design/design.dart';
import 'package:flutter/material.dart';

import 'mobile/team_mobile.dart';
import 'web/team_web.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: TeamMobile(),
      desktop: TeamWeb(),
    );
  }
}
