import 'package:design/color/color.dart';
import 'package:flutter/material.dart';

class TeamMatchup extends StatelessWidget {
  const TeamMatchup({
    super.key,
    required this.hexColorA,
    required this.hexColorB,
    required this.teamNameA,
    required this.teamNameB,
  });

  final String hexColorA;
  final String hexColorB;
  final String teamNameA;
  final String teamNameB;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Durations.extralong1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: HexColor.fromHex(hexColorA),
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            const SizedBox(width: 4),
            Text(
              teamNameA,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium! //
                  .copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const Spacer(),
            const Text("vs"),
            const Spacer(),
            Text(
              teamNameB,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium! //
                  .copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(width: 4),
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: HexColor.fromHex(hexColorB),
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
