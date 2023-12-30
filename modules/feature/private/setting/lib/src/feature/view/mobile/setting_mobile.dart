import 'package:core/core.dart';
import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:setting/src/feature/provider/controller/store/setting_store.dart';

import '../../provider/controller/action/setting_action.dart';

class SettingMobile extends StatefulWidget {
  const SettingMobile({super.key});

  @override
  State<SettingMobile> createState() => _SettingMobileState();
}

class _SettingMobileState extends State<SettingMobile> {
  final SettingReducer viewStore = Modular.get();

  @override
  void initState() {
    super.initState();

    viewStore.send(SettingAction.onAppear());
  }

  String getUserType(String type) {
    return switch (type) {
      'GodParent' => 'Padrinho',
      'Young' => 'Jovem',
      'Voluntary' => 'Voluntario',
      _ => 'Falha ao carregar',
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          //*
          SliverAppBar(
            forceElevated: false,
            pinned: true,
            elevation: 0,
            stretch: true,
            backgroundColor: ColorMode.setColor(
              context: context,
              light: Colors.grey.shade200,
              dark: Colors.grey.shade800,
            ),
            expandedHeight: 0,
            collapsedHeight: 0,
            toolbarHeight: 0,
          ),

          //*
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.only(
                left: 8,
                right: 8,
                top: 16,
                bottom: 0,
              ),
              color: ColorMode.setColor(
                context: context,
                light: Colors.grey.shade200,
                dark: Colors.grey.shade800,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CupertinoButton(
                        minSize: 0,
                        alignment: Alignment.centerLeft,
                        color: Colors.transparent,
                        padding: EdgeInsets.zero,
                        onPressed: () => Modular.to.pop(),
                        child: const Icon(
                          CupertinoIcons.clear_circled_solid,
                          size: 26,
                          color: Colors.grey,
                        ),
                      ),

                      // *
                      const Spacer(),

                      // * Games
                      ValueListenableBuilder(
                        valueListenable: viewStore,
                        builder: (context, value, child) {
                          if (value.user != null &&
                              value.user!.permissions != null &&
                              value.user!.permissions!
                                  .contains('manager_invite')) {
                            return CupertinoButton(
                              minSize: 0,
                              alignment: Alignment.centerLeft,
                              color: Colors.transparent,
                              padding: EdgeInsets.zero,
                              onPressed: () =>
                                  Modular.to.pushNamed('/generate_invite/'),
                              child: const Icon(
                                CupertinoIcons.tickets_fill,
                                size: 26,
                                color: Colors.grey,
                              ),
                            );
                          } else {
                            return Container();
                          }
                        },
                      ),
                    ],
                  ),

                  //?
                  const SizedBox(height: 16),

                  //*
                  ValueListenableBuilder(
                    valueListenable: viewStore,
                    builder: (context, value, child) => Text(
                      value.user?.name ?? 'Carregando ...',
                      style: Theme.of(context)
                          .textTheme //
                          .titleMedium,
                    ),
                  ),

                  //*
                  ValueListenableBuilder(
                    valueListenable: viewStore,
                    builder: (context, value, child) => Text(
                      getUserType(value.user?.typeUser ?? 'Carregando ...'),
                      style: Theme.of(context)
                          .textTheme //
                          .bodySmall!
                          .copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),

                  //*
                  Text(
                    '<user_room>',
                    style: Theme.of(context)
                        .textTheme //
                        .bodySmall,
                  ),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Container(
              height: 8,
              color: ColorMode.setColor(
                context: context,
                light: Colors.grey.shade200,
                dark: Colors.grey.shade800,
              ),
            ),
          ),

          //*
          ValueListenableBuilder(
            valueListenable: viewStore,
            builder: (context, value, child) {
              if (value.user != null &&
                  value.user!.permissions != null &&
                  value.user!.permissions!.contains('manager_group')) {
                return SliverToBoxAdapter(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    color: ColorMode.setColor(
                      context: context,
                      light: Colors.grey.shade200,
                      dark: Colors.grey.shade800,
                    ),
                    child: ComplexButton(
                      onPress: () => Modular.to.pushNamed('/young'),
                      text: "Seus afilhados",
                      iconData: CupertinoIcons.person_2_fill,
                      light: Colors.grey.shade300,
                      dark: Colors.grey.shade600,
                    ),
                  ),
                );
              } else {
                return Container();
              }
            },
          ),

          SliverToBoxAdapter(
            child: Container(
              height: 8,
              color: ColorMode.setColor(
                context: context,
                light: Colors.grey.shade200,
                dark: Colors.grey.shade800,
              ),
            ),
          ),

          //*
          ValueListenableBuilder(
            valueListenable: viewStore,
            builder: (context, value, child) {
              if (value.user != null &&
                  value.user!.permissions != null &&
                  value.user!.permissions!.contains('manager_mascot')) {
                return SliverToBoxAdapter(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    color: ColorMode.setColor(
                      context: context,
                      light: Colors.grey.shade200,
                      dark: Colors.grey.shade800,
                    ),
                    child: ComplexButton(
                      onPress: () => Modular.to.pushNamed('/mascot'),
                      text: "Seus filhos ( Mascotes )",
                      iconData: CupertinoIcons.person_2_alt,
                      light: Colors.grey.shade300,
                      dark: Colors.grey.shade600,
                    ),
                  ),
                );
              } else {
                return Container();
              }
            },
          ),

          SliverToBoxAdapter(
            child: Container(
              height: 8,
              color: ColorMode.setColor(
                context: context,
                light: Colors.grey.shade200,
                dark: Colors.grey.shade800,
              ),
            ),
          ),

          // * WareHouse
          ValueListenableBuilder(
            valueListenable: viewStore,
            builder: (context, value, child) {
              if (value.user != null &&
                  value.user!.permissions != null &&
                  value.user!.permissions!.contains('manager_warehouse')) {
                return SliverToBoxAdapter(
                  child: Column(
                    children: [
                      ItemButton(
                        onPress: () =>
                            Modular.to.pushNamed('/warehouse/manager'),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 24,
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                CupertinoIcons.cube_box_fill,
                                size: 30,
                              ),
                              const SizedBox(width: 16),
                              Text(
                                "Almoxarifado",
                                style: Theme.of(context)
                                    .textTheme //
                                    .bodyLarge,
                              ),
                              const Spacer(),
                              const Icon(
                                CupertinoIcons.chevron_forward,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const CustomDivider(),
                    ],
                  ),
                );
              } else {
                return const SliverToBoxAdapter();
              }
            },
          ),

          // * Nursing
          ValueListenableBuilder(
            valueListenable: viewStore,
            builder: (context, value, child) {
              if (value.user != null &&
                  value.user!.permissions != null &&
                  value.user!.permissions!.contains('manager_nursing')) {
                return SliverToBoxAdapter(
                  child: Column(
                    children: [
                      ItemButton(
                        onPress: () => Modular.to.pushNamed('/nursing'),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 24,
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                CupertinoIcons.bandage_fill,
                                size: 30,
                              ),
                              const SizedBox(width: 16),
                              Text(
                                "Enfermagem",
                                style: Theme.of(context)
                                    .textTheme //
                                    .bodyLarge,
                              ),
                              const Spacer(),
                              const Icon(
                                CupertinoIcons.chevron_forward,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const CustomDivider(),
                    ],
                  ),
                );
              } else {
                return const SliverToBoxAdapter();
              }
            },
          ),

          // * Access manager
          ValueListenableBuilder(
            valueListenable: viewStore,
            builder: (context, value, child) {
              if (value.user != null &&
                  value.user!.permissions != null &&
                  value.user!.permissions!.contains('manager_permissions')) {
                return SliverToBoxAdapter(
                  child: Column(
                    children: [
                      ItemButton(
                        onPress: () => Modular.to.pushNamed('/access_manager'),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 24,
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                CupertinoIcons.lock_shield_fill,
                                size: 30,
                              ),
                              const SizedBox(width: 16),
                              Text(
                                "Controler de acesso",
                                style: Theme.of(context)
                                    .textTheme //
                                    .bodyLarge,
                              ),
                              const Spacer(),
                              const Icon(
                                CupertinoIcons.chevron_forward,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const CustomDivider(),
                    ],
                  ),
                );
              } else {
                return const SliverToBoxAdapter();
              }
            },
          ),

          // * Games
          ValueListenableBuilder(
            valueListenable: viewStore,
            builder: (context, value, child) {
              if (value.user != null &&
                  value.user!.permissions != null &&
                  value.user!.permissions!.contains('manager_game')) {
                return SliverToBoxAdapter(
                  child: Column(
                    children: [
                      ItemButton(
                        onPress: () => Modular.to.pushNamed('/game_manager'),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 24,
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                CupertinoIcons.rocket_fill,
                                size: 30,
                              ),
                              const SizedBox(width: 16),
                              Text(
                                "Jogos",
                                style: Theme.of(context)
                                    .textTheme //
                                    .bodyLarge,
                              ),
                              const Spacer(),
                              const Icon(
                                CupertinoIcons.chevron_forward,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const CustomDivider(),
                    ],
                  ),
                );
              } else {
                return const SliverToBoxAdapter();
              }
            },
          ),

          // * Settings
          SliverToBoxAdapter(
            child: Column(
              children: [
                ItemButton(
                  onPress: () => Modular.to.pushNamed('/manager'),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 24,
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          CupertinoIcons.gear_solid,
                          size: 30,
                        ),
                        const SizedBox(width: 16),
                        Text(
                          "Configuração",
                          style: Theme.of(context)
                              .textTheme //
                              .bodyLarge,
                        ),
                        const Spacer(),
                        const Icon(
                          CupertinoIcons.chevron_forward,
                        ),
                      ],
                    ),
                  ),
                ),
                const CustomDivider(),
              ],
            ),
          ),

          //*
          const SliverToBoxAdapter(
            child: SizedBox(height: 16),
          ),

          //?
          SliverToBoxAdapter(
            child: AnimatedButton(
              innerPadding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 8.0,
              ),
              onPress: () => viewStore.send(SettingAction.logoutButtonTapped()),
              disabledChild: Container(),
              enableColor: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    CupertinoIcons.arrow_turn_down_left,
                    size: 24,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 16),
                  Text(
                    "Sair",
                    style: Theme.of(context)
                        .textTheme //
                        .bodyLarge!
                        .copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                  ),
                ],
              ),
            ),
          ),

          //*
          SliverToBoxAdapter(
            child: SizedBox(height: MediaQuery.of(context).padding.bottom),
          ),
        ],
      ),
    );
  }
}
