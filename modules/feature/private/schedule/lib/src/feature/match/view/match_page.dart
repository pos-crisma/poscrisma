import 'package:core/core.dart';
import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:schedule/src/feature/components/lineup.dart';
import 'package:store/store.dart';

import '../provider/controller/action/match_action.dart';
import '../provider/controller/store/match_store.dart';
import '../../components/score_match.dart';

class MatchPage extends StatefulWidget {
  const MatchPage({
    super.key,
    required this.schedule,
    this.showScore = false,
  });

  final bool showScore;
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
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) => viewStore.send(const MatchAction.backButton()),
      child: Scaffold(
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
                        fontWeight: FontWeight.bold,
                      ),
                );
              },
            )),
        body: CustomScrollView(
          slivers: [
            widget.showScore
                ? ValueListenableBuilder(
                    valueListenable: viewStore,
                    builder: (context, value, child) {
                      return value.data != null &&
                              value.data!.gameScore != null &&
                              value.data!.gameScore!.isNotEmpty
                          ? SliverList.builder(
                              itemCount: value.data!.gameScore!.length,
                              itemBuilder: (context, index) {
                                final data = value.data!.gameScore![index];
                                return ScoreMatch(
                                  name: "${data.teamName}",
                                  team: data.score != null && data.score! > 0
                                      ? HexColor.fromHex(
                                          data.teamColor ?? "",
                                        )
                                      : ColorMode.setColor(
                                          context: context,
                                          light: Colors.black,
                                          dark: Colors.white,
                                        ),
                                  minusButton: () => viewStore.send(
                                    MatchAction.minusTapped(
                                      data.teamId ?? "",
                                    ),
                                  ),
                                  plusButton: () => viewStore.send(
                                    MatchAction.addedTapped(
                                      data.teamId ?? "",
                                    ),
                                  ),
                                  score: data.score ?? 0,
                                );
                              },
                            )
                          : const SliverToBoxAdapter();
                    })
                : const SliverToBoxAdapter(),
            //
            widget.showScore
                ? const SliverToBoxAdapter(
                    child: SizedBox(height: 8),
                  )
                : const SliverToBoxAdapter(),

            //
            const SliverToBoxAdapter(
              child: SizedBox(height: 8),
            ),

            SliverToBoxAdapter(
              child: ValueListenableBuilder(
                valueListenable: viewStore,
                builder: (context, value, child) {
                  if (value.game != null) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Descrição do jogo
                          Text(value.game?.description ?? ""),

                          // Regra do jogo
                          Text(value.game?.rules ?? ""),

                          // Modo do jogo
                          Text(
                            "Modo: ${value.game?.mode == "on_land" ? "Em terra" : "Aquatico"}",
                          ),

                          // Tipo do jogo
                          Text(
                            "Tipo de jogo: ${value.game?.type == "one_vs_one" ? "Um contra o outro" : "Todos"}",
                          ),

                          // Periodo
                          Text(
                            "Periodo do jogo: ${value.game?.period == "night" ? "Noite" : "Dia"}",
                          ),
                        ],
                      ),
                    );
                  }

                  return Container();
                },
              ),
            ),

            SliverToBoxAdapter(
              child: ValueListenableBuilder(
                valueListenable: viewStore,
                builder: (context, value, child) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      value.data != null &&
                              value.data?.teamInfoA != null &&
                              value.data?.teamInfoA?.members != null
                          ? Flexible(
                              child: Lineup(
                                alignment: CrossAxisAlignment.start,
                                textAlign: TextAlign.left,
                                teamMember: value.data!.teamInfoA!.members!,
                              ),
                            )
                          : Container(),
                      value.data != null &&
                              value.data?.teamInfoB != null &&
                              value.data?.teamInfoB?.members != null
                          ? Flexible(
                              child: Lineup(
                                alignment: CrossAxisAlignment.end,
                                textAlign: TextAlign.right,
                                teamMember: value.data!.teamInfoB!.members!,
                              ),
                            )
                          : Container(),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
