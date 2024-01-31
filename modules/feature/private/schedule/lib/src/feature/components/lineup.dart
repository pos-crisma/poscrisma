import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schedule/src/feature/components/young_player.dart';
import 'package:store/store.dart';

import 'mascot_player.dart';

class Lineup extends StatelessWidget {
  const Lineup({
    super.key,
    required this.teamMember,
    this.textAlign = TextAlign.start,
    required this.alignment,
  });

  final TeamMember teamMember;
  final TextAlign textAlign;
  final CrossAxisAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8,
      ),
      child: Builder(
        builder: (context) {
          if (teamMember.mascots != null && teamMember.youngs != null) {
            return Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Jovens",
                ),
                Column(
                  children: teamMember.youngs!.map((e) {
                    return YoungPlayer(
                      young: e,
                      textAlign: textAlign,
                    );
                  }).toList(),
                ),
                const Text(
                  "Mascotes",
                ),
                Column(
                  children: teamMember.mascots!.map((e) {
                    return MascotPlayer(
                      young: e,
                      textAlign: textAlign,
                    );
                  }).toList(),
                ),
              ],
            );
          }

          return const SizedBox();
        },
      ),
    );
  }
}
