import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game/src/provider/action/game_action.dart';

import '../../provider/store/game_store.dart';

class GameMobile extends StatefulWidget {
  const GameMobile({super.key});

  @override
  State<GameMobile> createState() => _GameMobileState();
}

class _GameMobileState extends State<GameMobile> {
  late final GameReducer viewStore;

  @override
  void initState() {
    super.initState();
    viewStore = GameReducer(context);
    viewStore.send(const GameAction.onAppear());
  }

  @override
  void dispose() {
    super.dispose();
    viewStore.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        leading: const CustomBackButton(),
      ),
      body: CustomScrollView(
        slivers: [
          // * Title
          SliverToBoxAdapter(
            child: Container(
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Visualizar ',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge! //
                          .copyWith(
                            color: ColorMode.setColor(
                              context: context,
                              light: Colors.black,
                              dark: Colors.white,
                            ),
                          ),
                      children: [
                        TextSpan(
                          text: "Jogos",
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium! //
                              .copyWith(
                                fontWeight: FontWeight.bold,
                                color: ColorMode.setColor(
                                  context: context,
                                  light: Colors.deepPurple.shade900,
                                  dark: Colors.deepPurple.shade200,
                                ),
                              ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Visualizar todos os jogos cadastrados.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge! //
                        .copyWith(),
                  ),
                ],
              ),
            ),
          ),

          // *
          const SliverToBoxAdapter(
            child: SizedBox(height: 8),
          ),

          // *
          SliverPersistentHeader(
            pinned: true,
            delegate: _SliverSecondAppBarDelegate(
              viewStore: viewStore,
            ),
            floating: true,
          ),

          // *
          const SliverToBoxAdapter(
            child: SizedBox(height: 8),
          ),

          // *
          ValueListenableBuilder(
            valueListenable: viewStore,
            builder: (context, value, child) {
              if (value.isLoading) {
                return SliverToBoxAdapter(
                  child: Center(
                    child: Transform.scale(
                      scale: 1,
                      child: const CircularProgressIndicator.adaptive(),
                    ),
                  ),
                );
              }

              final games = value.filterGames;
              if (games != null) {
                return SliverList.builder(
                  itemCount: games.length,
                  itemBuilder: (context, index) {
                    final game = games[index];

                    return CupertinoListTile.notched(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 4.0,
                      ),
                      title: Text(
                        game.name?.toUpperCase() ?? "",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorMode.setColor(
                            context: context,
                            light: Colors.black,
                            dark: Colors.white,
                          ),
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: "Descrição: ",
                              children: [
                                TextSpan(
                                  text: game.description ?? "",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: "Regras: ",
                              children: [
                                TextSpan(
                                  text: game.rules ?? "",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: "Regras mascotes: ",
                              children: [
                                TextSpan(
                                  text: game.rules ?? "",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: "Materias: ",
                              children: [
                                TextSpan(
                                  text: game.materials != null
                                      ? game.materials!.isEmpty
                                          ? "Sem materiais"
                                          : game.materials
                                              .toString()
                                              .replaceAll("[", "")
                                              .replaceAll("]", "")
                                      : "Sem materiais",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              }

              return const SliverToBoxAdapter();
            },
          ),

          // *
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

class _SliverSecondAppBarDelegate extends SliverPersistentHeaderDelegate {
  final GameReducer viewStore;

  _SliverSecondAppBarDelegate({required this.viewStore});
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return CustomTextFormField(
      controller: viewStore.state.filterController,
      focusNote: viewStore.state.filterFocus,
      labelText: "Pesquisar pelo nome ou parte",
      boxDecorationColor: ColorMode.setColor(
        context: context,
        light: Colors.grey.shade200,
        dark: Colors.black,
      ),
    );
  }

  @override
  double get maxExtent => 64.0;

  @override
  double get minExtent => 64.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
