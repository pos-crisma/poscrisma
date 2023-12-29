import 'package:design/design.dart';
import 'package:flutter/material.dart';

import 'mobile/room_type_mobile.dart';
import 'web/room_type_web.dart';

class RoomTypePage extends StatelessWidget {
  const RoomTypePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: RoomTypeMobile(),
      desktop: RoomTypeWeb(),
    );
  }
}
