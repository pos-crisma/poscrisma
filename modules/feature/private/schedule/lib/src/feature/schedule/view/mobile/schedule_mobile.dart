// import 'package:design/color/color.dart';
import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

import '../../provider/controller/action/schedule_action.dart';
import '../../provider/controller/store/schedule_store.dart';
import '../components/team_matchup.dart';
import '../components/team_score.dart';

class ScheduleMobile extends StatelessWidget {
  final ScheduleReducer viewStore;

  const ScheduleMobile({
    super.key,
    required this.viewStore,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: viewStore.state.controller,
        slivers: [
          ValueListenableBuilder(
            valueListenable: viewStore,
            builder: (context, value, child) {
              return SliverAppBar(
                surfaceTintColor: Colors.transparent,
                elevation: 0,
                stretch: true,
                pinned: true,
                leadingWidth: 100,
                title: AnimatedSwitcher(
                  duration: Durations.medium1,
                  child: value.isCenterTitle
                      ? Text(
                          "Tabela de jogos",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium! //
                              .copyWith(
                                fontWeight: FontWeight.bold,
                                color: ColorMode.setColor(
                                  context: context,
                                  light: Colors.black,
                                  dark: Colors.white,
                                ),
                              ),
                        )
                      : Container(),
                ),
                leading: CustomBackButton(
                  backIcon: CupertinoIcons.chevron_back,
                  backTitle: "Voltar",
                  light: Colors.grey.shade300,
                  dark: Colors.grey.shade300,
                ),
                expandedHeight: kIsWeb
                    ? 300
                    : Responsive.isSmallScreen(context)
                        ? 100
                        : 150,
                toolbarHeight: 50,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.parallax,
                  background: AnimatedContainer(
                    duration: Durations.extralong1,
                    child: const Image(
                      image: backgroundCastleTower,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),

          // *
          const SliverToBoxAdapter(
            child: SizedBox(height: 8),
          ),

          // *
          SliverToBoxAdapter(
            child: CustomTextFormField(
              controller: viewStore.state.filterController,
              focusNote: viewStore.state.filterFocus,
              labelText: "Pesquisar pelo nome do jogo",
              boxDecorationColor: ColorMode.setColor(
                context: context,
                light: Colors.grey.shade200,
                dark: Colors.black,
              ),
            ),
          ),

          // *
          const SliverToBoxAdapter(
            child: SizedBox(height: 8),
          ),

          // *
          ValueListenableBuilder(
            valueListenable: viewStore,
            builder: (context, value, child) {
              if (value.listSchedule.isNotEmpty) {
                final schedules = value.filterSchedule;

                return SliverList.builder(
                  itemCount: schedules.length,
                  itemBuilder: (context, index) {
                    final schedule = schedules[index];
                    final data = schedule.data();

                    if (data != null) {
                      return InkWell(
                        onTap: () => viewStore.send(
                          ScheduleAction.buttonTapped(schedule),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16.0,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  text: "${data.gameName?.toUpperCase()}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsets.only(
                                bottom: 8,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 16.0,
                                      right: 8.0,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            text: "${data.day?.toUpperCase()} ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall!
                                                .copyWith(),
                                            children: [
                                              TextSpan(
                                                text: "-",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelSmall!
                                                    .copyWith(),
                                              ),
                                              TextSpan(
                                                text:
                                                    " ${data.timeOfDay?.name.toUpperCase()} ",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelSmall!
                                                    .copyWith(),
                                              ),
                                            ],
                                          ),
                                        ),

                                        const Spacer(),

                                        data.gameStatus != null &&
                                                data.gameStatus ==
                                                    GameStatus.live
                                            ? const LiveAnimation()
                                            : Container(),
                                        // const Spacer(),
                                        RichText(
                                          textAlign: TextAlign.start,
                                          text: TextSpan(
                                            text: " Rodada:",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall!
                                                .copyWith(),
                                            children: [
                                              TextSpan(
                                                text: " ${data.numberRound} ",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelMedium!
                                                    .copyWith(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Builder(
                                    builder: (context) {
                                      if (value.user != null &&
                                          value.user!.permissions != null &&
                                          (value.user!.permissions!.contains(
                                                  "manager_schedule") ||
                                              value.user!.permissions!
                                                  .contains("game_judge"))) {
                                        if (data.gameType ==
                                                GameType.one_vs_one &&
                                            data.gameScore != null &&
                                            data.gameScore!.isNotEmpty) {
                                          return Column(
                                              children: data.gameScore!
                                                  .map((e) => TeamScore(
                                                        hexColor:
                                                            e.teamColor ?? "",
                                                        scoreTeam: e.score ?? 0,
                                                        teamName:
                                                            e.teamName ?? "",
                                                        showBestTeam:
                                                            (e.score != null &&
                                                                e.score !=
                                                                    null &&
                                                                e.score! >
                                                                    e.score!),
                                                      ))
                                                  .toList());
                                        }

                                        if (data.gameType ==
                                                GameType.all_vs_all &&
                                            data.gameScore != null &&
                                            data.gameScore!.isNotEmpty) {
                                          return Container();
                                        }

                                        if (data.gameType ==
                                                GameType.challenge &&
                                            data.gameScore != null &&
                                            data.gameScore!.isNotEmpty) {
                                          return Container();
                                        }
                                      }

                                      if (data.gameType ==
                                          GameType.one_vs_one) {
                                        return TeamMatchup(
                                          hexColorA:
                                              data.teamInfoA?.color ?? "",
                                          hexColorB:
                                              data.teamInfoB?.color ?? "",
                                          teamNameA: data.teamInfoA?.name ?? "",
                                          teamNameB: data.teamInfoB?.name ?? "",
                                        );
                                      }

                                      if (data.gameType ==
                                          GameType.all_vs_all) {
                                        return Container();
                                      }

                                      if (data.gameType == GameType.challenge) {
                                        return Container();
                                      }

                                      return Container();
                                    },
                                  ),

                                  // *
                                ],
                              ),
                            ),
                            const CustomDivider(height: 0.5),
                          ],
                        ),
                      );
                    }

                    return const Text(
                      "Sem acesso ou não tem nenhum jogo cadastrado",
                    );
                  },
                );
              }

              return const SliverToBoxAdapter();
            },
          ),

          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).padding.bottom,
            ),
          ),
        ],
      ),
    );
  }
}
