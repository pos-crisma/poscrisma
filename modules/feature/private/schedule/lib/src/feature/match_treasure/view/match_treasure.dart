import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/score_match.dart';
import '../provider/action/match_treasure_action.dart';
import '../provider/store/match_treasure.dart';

class MatchTreasure extends StatefulWidget {
  const MatchTreasure({
    super.key,
  });

  @override
  State<MatchTreasure> createState() => _MatchTreasureState();
}

class _MatchTreasureState extends State<MatchTreasure> {
  late final MatchTreasureReducer viewStore;

  @override
  void initState() {
    super.initState();

    viewStore = MatchTreasureReducer(context);
    viewStore.send(const MatchTreasureAction.onAppear());
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) =>
          viewStore.send(const MatchTreasureAction.backButton()),
      child: Scaffold(
        bottomNavigationBar: SizedBox(
          height: MediaQuery.of(context).padding.bottom + 58,
          child: Column(
            children: [
              AnimatedOpacity(
                opacity: View.of(context).viewInsets.bottom > 0.0 ? 0 : 1,
                duration: Durations.medium1,
                child: const Divider(
                  thickness: 0.2,
                  height: 1,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(
                  top: 8,
                  bottom: MediaQuery.of(context).padding.bottom == 0
                      ? View.of(context).viewInsets.bottom > 0.0
                          ? 0
                          : 8
                      : MediaQuery.of(context).padding.bottom,
                ),
                child: ValueListenableBuilder(
                  valueListenable: viewStore,
                  builder: (context, value, child) {
                    return AnimatedButton(
                      isFocus: View.of(context).viewInsets.bottom > 0.0,
                      isDisabled: false,
                      onPress: () =>
                          viewStore.send(const MatchTreasureAction.backButton()),
                      enableColor: Colors.deepPurple.shade300,
                      disableColor: SystemMode.isDark(context)
                          ? Colors.deepPurple.shade500
                          : Colors.deepPurple.shade100,
                      disabledChild: const CupertinoActivityIndicator(),
                      child: Text(
                        'Concluir',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium! //
                            .copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
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
            ValueListenableBuilder(
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
                              MatchTreasureAction.minusTapped(
                                data.teamId ?? "",
                              ),
                            ),
                            plusButton: () => viewStore.send(
                              MatchTreasureAction.addedTapped(
                                data.teamId ?? "",
                              ),
                            ),
                            score: data.score ?? 0,
                          );
                        },
                      )
                    : const SliverToBoxAdapter();
              },
            ),

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
