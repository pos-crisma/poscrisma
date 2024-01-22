import 'package:flutter/material.dart';

import '../provider/enum/room_manager_update_input_type.dart';

class RoomManagerEditor extends StatelessWidget {
  const RoomManagerEditor({
    super.key,
    required this.inputType,
  });

  final RoomManagerUpdateInputType inputType;

  @override
  Widget build(BuildContext context) {
    return const ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
      ),
      child: Scaffold(),
    );
  }
}
