import 'package:design/design.dart';
import 'package:flutter/material.dart';

class RoomPage extends StatelessWidget {
  const RoomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Container(),
      desktop: Container(),
    );
  }
}
