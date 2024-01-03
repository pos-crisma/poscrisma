import 'package:design/design.dart';
import 'package:flutter/material.dart';

import 'mobile/room_search_mobile.dart';
import 'web/room_search_web.dart';

class RoomSearchPage extends StatelessWidget {
  const RoomSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: RoomSearchMobile(),
      desktop: RoomSearchWeb(),
    );
  }
}
