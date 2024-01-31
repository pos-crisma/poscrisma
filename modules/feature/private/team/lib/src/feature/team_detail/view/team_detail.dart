import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';
import 'package:team/src/feature/team_schedule/view/team_schedule.dart';

class TeamDetail extends StatelessWidget {
  const TeamDetail({
    super.key,
    required this.team,
  });
  final Team team;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        leading: const CustomBackButton(),
        title: Text(
          team.teamName ?? "",
          style: Theme.of(context)
              .textTheme
              .bodyLarge! //
              .copyWith(
                fontWeight: FontWeight.bold,
                color: HexColor.fromHex(team.teamColor ?? ""),
              ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CupertinoListTile.notched(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              title: RichText(
                text: TextSpan(
                  text: "Nome do capitão: ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: ColorMode.setColor(
                      context: context,
                      light: Colors.black,
                      dark: Colors.white,
                    ),
                  ),
                  children: [
                    TextSpan(
                      text: "${team.captainName ?? "Sem capitão"}",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: ColorMode.setColor(
                              context: context,
                              light: Colors.black,
                              dark: Colors.white,
                            ),
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Text(team.captainName ?? ""),
                const Text("Tabela de jogos:"),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CupertinoButton(
                        onPressed: () {
                          if (team.games != null &&
                              team.games!.quartaFeiraNoite != null) {
                            showModalBottomSheet(
                              context: context,
                              useSafeArea: true,
                              isScrollControlled: true,
                              builder: (context) {
                                return TeamScheduleView(
                                    games: team.games!.quartaFeiraNoite!,
                                    teamName: team.teamName ?? "");
                              },
                            );
                          }
                        },
                        child: Column(
                          children: [
                            const Text("Quarta Feira - Noite"),
                            Text(
                                "Numero de jogos: ${team.games?.quartaFeiraNoite?.length ?? 0}")
                          ],
                        ),
                      ),
                      CupertinoButton(
                        onPressed: () {
                          if (team.games != null &&
                              team.games!.quintaFeiraManha != null) {
                            showModalBottomSheet(
                              context: context,
                              useSafeArea: true,
                              isScrollControlled: true,
                              builder: (context) {
                                return TeamScheduleView(
                                    games: team.games!.quintaFeiraManha!,
                                    teamName: team.teamName ?? "");
                              },
                            );
                          }
                        },
                        child: Column(
                          children: [
                            const Text("Quinta Feira - Manha"),
                            Text(
                                "Numero de jogos: ${team.games?.quintaFeiraManha?.length ?? 0}")
                          ],
                        ),
                      ),
                      CupertinoButton(
                        onPressed: () {
                          if (team.games != null &&
                              team.games!.sextaFeiraManha != null) {
                            showModalBottomSheet(
                              context: context,
                              useSafeArea: true,
                              isScrollControlled: true,
                              builder: (context) {
                                return TeamScheduleView(
                                    games: team.games!.sextaFeiraTarde!,
                                    teamName: team.teamName ?? "");
                              },
                            );
                          }
                        },
                        child: Column(
                          children: [
                            const Text("Sexta Feira - Tarde"),
                            Text(
                                "Numero de jogos: ${team.games?.sextaFeiraManha?.length ?? 0}"),
                          ],
                        ),
                      ),
                      CupertinoButton(
                        onPressed: () {
                          if (team.games != null &&
                              team.games!.sextaFeiraManha != null) {
                            showModalBottomSheet(
                              context: context,
                              useSafeArea: true,
                              isScrollControlled: true,
                              builder: (context) {
                                return TeamScheduleView(
                                    games: team.games!.sextaFeiraNoite!,
                                    teamName: team.teamName ?? "");
                              },
                            );
                          }
                        },
                        child: Column(
                          children: [
                            const Text("Sexta Feira - Noite"),
                            Text(
                                "Numero de jogos: ${team.games?.quintaFeiraManha?.length ?? 0}")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(height: 8),
                Text(
                  "Jovens",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge! //
                      .copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
          team.members != null
              ? SliverList.builder(
                  itemCount: team.members!.length,
                  itemBuilder: (context, index) {
                    final member = team.members![index];
                    return CupertinoListTile.notched(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      title: Text(
                        member.name ?? "",
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${member.godParent?.godFather}"),
                          Text("${member.godParent?.godMother}"),
                        ],
                      ),
                    );
                  },
                )
              : const SliverToBoxAdapter(),
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(height: 8),
                Text(
                  "Mascotes",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge! //
                      .copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
          team.members != null
              ? SliverList.builder(
                  itemCount: team.members!.length,
                  itemBuilder: (context, index) {
                    final member = team.members![index];
                    return CupertinoListTile.notched(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      title: Text(
                        member.name ?? "",
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${member.godParent?.godFather}"),
                          Text("${member.godParent?.godMother}"),
                        ],
                      ),
                    );
                  },
                )
              : const SliverToBoxAdapter(),
        ],
      ),
    );
  }
}
