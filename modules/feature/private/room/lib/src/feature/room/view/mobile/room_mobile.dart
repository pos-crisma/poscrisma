import 'package:flutter/material.dart';

class RoomMobile extends StatelessWidget {
  const RoomMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: Text('Room'),
    );
  }
}
