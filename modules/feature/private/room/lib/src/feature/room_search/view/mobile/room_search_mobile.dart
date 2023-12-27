import 'package:flutter/material.dart';

class RoomSearchMobile extends StatelessWidget {
  const RoomSearchMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: Text('Search'),
    );
  }
}
