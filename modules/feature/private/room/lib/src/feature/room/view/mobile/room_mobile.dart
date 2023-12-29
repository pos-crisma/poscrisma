import 'package:design/color/color.dart';
import 'package:flutter/material.dart';

class RoomMobile extends StatelessWidget {
  const RoomMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: ColorMode.setColor(
            context: context,
            light: Colors.black,
            dark: Colors.white,
          ),
        ),
      ),
      body: const Text('Room'),
    );
  }
}
