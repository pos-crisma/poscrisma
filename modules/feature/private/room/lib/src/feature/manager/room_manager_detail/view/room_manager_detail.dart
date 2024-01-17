import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

class RoomManagerDetail extends StatelessWidget {
  const RoomManagerDetail({
    super.key,
    required this.room,
  });

  final Room room;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
      ),
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 100,
          leading: const CustomBackButton(),
        ),
        body: const SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
