import 'package:core/core.dart';
import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

import '../provider/controller/action/match_action.dart';
import '../provider/controller/store/match_store.dart';
import 'components/score_match.dart';

class MatchPage extends StatefulWidget {
  const MatchPage({
    super.key,
    required this.schedule,
  });

  final DocumentSnapshot<Schedule> schedule;

  @override
  State<MatchPage> createState() => _MatchPageState();
}

class _MatchPageState extends State<MatchPage> {
  late final MatchReducer viewStore;

  @override
  void initState() {
    super.initState();

    viewStore = MatchReducer(context, widget.schedule);
    viewStore.send(const MatchAction.onAppear());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leadingWidth: 100,
          leading: const CustomBackButton(),
          title: ValueListenableBuilder(
            valueListenable: viewStore,
            builder: (context, value, child) {
              return Text(
                "${value.data?.gameName?.toUpperCase()}",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge! //
                    .copyWith(
                        // fontWeight: FontWeight.bold,
                        ),
              );
            },
          )),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: ValueListenableBuilder(
              valueListenable: viewStore,
              builder: (context, value, child) {
                return ScoreMatch(
                  name: "${value.data?.teamInfoA?.name}",
                  team: value.data != null &&
                          value.data?.scoreTeamA != null &&
                          value.data!.scoreTeamA! > 0
                      ? HexColor.fromHex(
                          value.data?.teamInfoA?.color ?? "",
                        )
                      : ColorMode.setColor(
                          context: context,
                          light: Colors.black,
                          dark: Colors.white,
                        ),
                  minusButton: () => viewStore
                      .send(const MatchAction.minusTapped("scoreTeamA")),
                  plusButton: () => viewStore
                      .send(const MatchAction.addedTapped("scoreTeamA")),
                  score: value.data?.scoreTeamA ?? 0,
                );
              },
            ),
          ),

          //
          const SliverToBoxAdapter(
            child: SizedBox(height: 8),
          ),

          //
          SliverToBoxAdapter(
            child: ValueListenableBuilder(
              valueListenable: viewStore,
              builder: (context, value, child) {
                return ScoreMatch(
                  name: "${value.data?.teamInfoB?.name}",
                  team: value.data != null &&
                          value.data?.scoreTeamB != null &&
                          value.data!.scoreTeamB! > 0
                      ? HexColor.fromHex(
                          value.data?.teamInfoB?.color ?? "",
                        )
                      : ColorMode.setColor(
                          context: context,
                          light: Colors.black,
                          dark: Colors.white,
                        ),
                  minusButton: () => viewStore
                      .send(const MatchAction.minusTapped("scoreTeamB")),
                  plusButton: () => viewStore
                      .send(const MatchAction.addedTapped("scoreTeamB")),
                  score: value.data?.scoreTeamB ?? 0,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
