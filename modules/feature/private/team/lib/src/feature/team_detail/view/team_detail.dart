import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

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
            child: Column(
              children: [
                Text(team.captainName ?? ""),
                Text("Tabela de jogos:"),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CupertinoButton(
                        onPressed: () {},
                        child: Column(
                          children: [
                            Text("Quarta Feira - Noite"),
                            Text(
                                "Numero de jogos: ${team.games?.quartaFeiraNoite?.length ?? 0}")
                          ],
                        ),
                      ),
                      CupertinoButton(
                        onPressed: () {},
                        child: Column(
                          children: [
                            Text("Quinta Feira - Manha"),
                            Text(
                                "Numero de jogos: ${team.games?.quintaFeiraManha?.length ?? 0}")
                          ],
                        ),
                      ),
                      CupertinoButton(
                        onPressed: () {},
                        child: Column(
                          children: [
                            Text("Sexta Feira - Manha"),
                            Text(
                                "Numero de jogos: ${team.games?.sextaFeiraManha?.length ?? 0}"),
                          ],
                        ),
                      ),
                      CupertinoButton(
                        onPressed: () {},
                        child: Column(
                          children: [
                            Text("Sexta Feira - Manha"),
                            Text(
                                "Numero de jogos: ${team.games?.quintaFeiraManha?.length ?? 0}")
                          ],
                        ),
                      ),
                      // CupertinoButton(
                      //   onPressed: () {},
                      //   child: Text("Quinta Feira - Manha"),
                      // ),
                      // CupertinoButton(
                      //   onPressed: () {},
                      //   child: Text("Sexta Feira - Manha"),
                      // ),
                      // CupertinoButton(
                      //   onPressed: () {},
                      //   child: Text("Sexta Feira - Tarde"),
                      // ),
                      // CupertinoButton(
                      //   onPressed: () {},
                      //   child: Text("Sexta Feira - Noite"),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
