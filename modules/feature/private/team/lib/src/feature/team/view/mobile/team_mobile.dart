import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../provider/action/team_action.dart';
import '../../provider/store/team_store.dart';

class TeamMobile extends StatefulWidget {
  const TeamMobile({super.key});

  @override
  State<TeamMobile> createState() => _TeamMobileState();
}

class _TeamMobileState extends State<TeamMobile> {
  late final TeamReducer viewStore;

  @override
  void initState() {
    super.initState();
    viewStore = TeamReducer(context);
    viewStore.send(const TeamAction.onAppear());
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
                          text: "Times",
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
                    'Visualizar todos os times cadastrados.',
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

          //*

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

              final teams = value.filterTeams;
              if (teams != null) {
                return SliverList.builder(
                  itemCount: teams.length,
                  itemBuilder: (context, index) {
                    final team = teams[index];

                    return InkWell(
                      onTap: () =>
                          viewStore.send(TeamAction.buttonTapped(team)),
                      child: CupertinoListTile.notched(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 4.0,
                        ),
                        title: Text(
                          team.teamName?.toUpperCase() ?? "",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ColorMode.setColor(
                              context: context,
                              light: Colors.black,
                              dark: Colors.white,
                            ),
                          ),
                        ),
                        subtitle: RichText(
                          text: TextSpan(
                            text: "Capitão: ",
                            children: [
                              TextSpan(
                                text: team.captainName ?? "",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
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
  final TeamReducer viewStore;

  _SliverSecondAppBarDelegate({required this.viewStore});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: ColorMode.setColor(
        context: context,
        light: lightBackground,
        dark: darkBackground,
      ),
      child: CustomTextFormField(
        controller: viewStore.state.filterController,
        focusNote: viewStore.state.filterFocus,
        labelText: "Pesquisar pelo nome ou parte",
        boxDecorationColor: ColorMode.setColor(
          context: context,
          light: Colors.grey.shade200,
          dark: Colors.black,
        ),
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
