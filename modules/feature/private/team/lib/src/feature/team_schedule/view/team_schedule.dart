import 'package:design/color/color.dart';
import 'package:design/components/button/back_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

class TeamScheduleView extends StatelessWidget {
  const TeamScheduleView({
    super.key,
    required this.games,
    required this.teamName,
  });

  final String teamName;
  final List<GameMoment> games;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        leading: const CustomBackButton(),
        title: Text(
          teamName,
          style: Theme.of(context)
              .textTheme
              .bodyLarge! //
              .copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList.builder(
            itemCount: games.length,
            itemBuilder: (context, index) {
              final game = games[index];

              return CupertinoListTile.notched(
                title: Text(
                  game.gameName ?? "",
                  style: TextStyle(
                    color: ColorMode.setColor(
                      context: context,
                      light: Colors.black,
                      dark: Colors.white,
                    ),
                  ),
                ),
                subtitle: Text(
                  game.gameTitle ?? "",
                  style: TextStyle(
                    color: ColorMode.setColor(
                      context: context,
                      light: Colors.black,
                      dark: Colors.white,
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
