import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:room/src/feature/room/view/mobile/room_mobile.dart';
import 'package:room/src/feature/room/view/web/room_web.dart';

class RoomPage extends StatelessWidget {
  const RoomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: RoomMobile(),
      desktop: const RoomWeb(),
    );
  }
}
