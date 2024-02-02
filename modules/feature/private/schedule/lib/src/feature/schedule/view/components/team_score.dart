import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

class TeamScore extends StatelessWidget {
  const TeamScore({
    super.key,
    this.showBestTeam = false,
    required this.hexColor,
    required this.teamName,
    required this.scoreTeam,
  });

  final bool showBestTeam;
  final String hexColor;
  final String teamName;
  final int scoreTeam;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Durations.extralong1,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(
              right: 8,
            ),
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: showBestTeam //
                  ? HexColor.fromHex(hexColor)
                  : Colors.transparent,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: HexColor.fromHex(hexColor),
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(width: 4),
          Text(
            teamName,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const Spacer(),
          Text(
            "$scoreTeam",
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(width: 8),
          showBestTeam //
              ? const ConffetiAnimation()
              : Container()
        ],
      ),
    );
  }
}
