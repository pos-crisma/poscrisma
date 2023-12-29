import 'package:flutter/material.dart';

class RoomTypeMobile extends StatelessWidget {
  const RoomTypeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: const Text('Type'),
    );
  }
}
