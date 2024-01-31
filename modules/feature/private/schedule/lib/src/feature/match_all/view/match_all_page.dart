import 'package:core/core.dart';
import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

import 'package:store/store.dart';

import '../../components/score_match.dart';
import '../provider/action/match_all_action.dart';
import '../provider/store/match_all_store.dart';

class MatchAllPage extends StatefulWidget {
  const MatchAllPage({
    super.key,
    required this.schedule,
    this.showScore = false,
  });

  final bool showScore;
  final DocumentSnapshot<Schedule> schedule;

  @override
  State<MatchAllPage> createState() => _MatchAllPageState();
}

class _MatchAllPageState extends State<MatchAllPage> {
  late final MatchAllReducer viewStore;

  @override
  void initState() {
    super.initState();

    viewStore = MatchAllReducer(context, widget.schedule);
    viewStore.send(const MatchAllAction.onAppear());
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) =>
          viewStore.send(const MatchAllAction.backButton()),
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
                                          value.data?.teamInfoA?.color ?? "",
                                        )
                                      : ColorMode.setColor(
                                          context: context,
                                          light: Colors.black,
                                          dark: Colors.white,
                                        ),
                                  minusButton: () => viewStore.send(
                                    MatchAllAction.minusTapped(
                                      data.teamId ?? "",
                                    ),
                                  ),
                                  plusButton: () => viewStore.send(
                                    MatchAllAction.addedTapped(
                                      data.teamId ?? "",
                                    ),
                                  ),
                                  score: data.score ?? 0,
                                );
                              },
                            )
                          : const SliverToBoxAdapter();
                    },
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
          ],
        ),
      ),
    );
  }
}
