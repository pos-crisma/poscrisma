import 'package:design/color/color.dart';
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
    required this.birthday,
  });

  final String roomId;
  final String godMother;
  final String godFather;
  final String name;
  final String userRoomId;
  final String birthday;
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
          style: CupertinoTheme.of(context).textTheme.textStyle.merge(
                TextStyle(
                  color: ColorMode.setColor(
                    context: context,
                    light: CupertinoColors.black,
                    dark: CupertinoColors.white,
                  ),
                ),
              ),
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
          Row(
            children: [
              const Text(
                "Idade: ",
              ),
              Text(
                birthday,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
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
