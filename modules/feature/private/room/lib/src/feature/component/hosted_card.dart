import 'package:design/color/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HostedCard extends StatelessWidget {
  const HostedCard({
    super.key,
    required this.roomId,
    required this.callback,
    this.isGuest = false,
    required this.name,
    required this.userRoomId,
    required this.type,
  });

  final String roomId;
  final String name;
  final String type;
  final String userRoomId;
  final bool isGuest;

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: callback,
      child: CupertinoListTile.notched(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        leadingSize: 0,
        title: Badge(
          isLabelVisible: isGuest,
          child: Text(
            name,
            style: CupertinoTheme.of(context)
                .textTheme
                .textStyle //
                .merge(
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
        subtitle: Text(type),
        // onTap: ,
        trailing: Icon(
          userRoomId == roomId
              ? CupertinoIcons.checkmark_seal_fill
              : CupertinoIcons.xmark_seal,
        ),
      ),
    );
  }
}
