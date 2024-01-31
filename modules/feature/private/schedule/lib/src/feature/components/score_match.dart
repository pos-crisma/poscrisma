import 'package:design/color/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScoreMatch extends StatelessWidget {
  const ScoreMatch({
    super.key,
    required this.name,
    required this.team,
    required this.minusButton,
    required this.plusButton,
    required this.score,
  });

  final String name;
  final Color team;
  final int score;
  final VoidCallback minusButton;
  final VoidCallback plusButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorMode.setColor(
          context: context,
          light: Colors.grey.shade100,
          dark: Colors.grey.shade900,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8,
      ),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                score.toString(),
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge! //
                    .copyWith(
                      color: team,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                name.toString(),
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge! //
                    .copyWith(),
              ),
            ],
          ),
          const Spacer(),
          CupertinoButton(
            padding: EdgeInsets.zero,
            color: Colors.red.shade600.withOpacity(0.2),
            onPressed: minusButton,
            child: Icon(
              CupertinoIcons.minus,
              color: Colors.red.shade600,
            ),
          ),
          const SizedBox(width: 8),
          CupertinoButton(
            padding: EdgeInsets.zero,
            color: Colors.deepPurple.shade600,
            onPressed: plusButton,
            child: const Icon(
              CupertinoIcons.plus,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
