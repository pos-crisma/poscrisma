import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

import 'mobile/room_type_mobile.dart';
// import 'web/room_type_web.dart';

class RoomTypePage extends StatelessWidget {
  const RoomTypePage({
    super.key,
    required this.type,
  });

  final InviteUserType type;

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: RoomTypeMobile(type: type),
      desktop: RoomTypeMobile(type: type),
    );
  }
}
