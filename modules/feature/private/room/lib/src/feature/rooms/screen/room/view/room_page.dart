import 'package:design/design.dart';
import 'package:flutter/material.dart';

import 'mobile/room_mobile.dart';
// import 'package:room/src/feature/room/view/web/room_web.dart';

class RoomPage extends StatelessWidget {
  const RoomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: RoomMobile(),
      desktop: RoomMobile(),
    );
  }
}
