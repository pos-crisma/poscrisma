import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HostedYoungCard extends StatelessWidget {
  const HostedYoungCard({
    super.key,
    required this.roomId,
    required this.callback,
    this.godFather = "Padrinho",
    this.godMother = "Madrinha",
    this.isGuest = false,
    required this.name,
    required this.userRoomId,
  });

  final String roomId;
  final String godMother;
  final String godFather;
  final String name;
  final String userRoomId;
  final bool isGuest;
  // final HostedUser user;

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return CupertinoListTile.notched(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      leadingSize: 0,
      title: Badge(
        isLabelVisible: isGuest,
        child: Text(
          name,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            godMother,
          ),
          Text(
            godFather,
          ),
        ],
      ),
      onTap: callback,
      trailing: Icon(
        userRoomId == roomId
            ? CupertinoIcons.checkmark_seal_fill
            : CupertinoIcons.xmark_seal,
      ),
    );
  }
}
