import 'package:core/core.dart';
import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../provider/controller/action/setting_action.dart';
import '../../provider/controller/store/setting_store.dart';

class SettingMobile extends StatefulWidget {
  const SettingMobile({super.key});

  @override
  State<SettingMobile> createState() => _SettingMobileState();
}

class _SettingMobileState extends State<SettingMobile> {
  final SettingReducer viewStore = SettingReducer();

  @override
  void initState() {
    super.initState();

    viewStore.send(SettingAction.onAppear(context));
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
                        onPressed: () => context.pop(),
                        child: const Icon(
                          CupertinoIcons.clear_circled_solid,
                          size: 30,
                          color: Colors.grey,
                        ),
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
                  ValueListenableBuilder(
                    valueListenable: viewStore,
                    builder: (context, value, child) {
                      if (value.user == null) {
                        return Container();
                      }

                      final hosted = value.user?.hosted;

                      return Text(
                        hosted?.roomName ?? "Ainda não possui quarto definido",
                        style: Theme.of(context)
                            .textTheme //
                            .bodySmall,
                      );
                    },
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

          // * Create User
          ValueListenableBuilder(
            valueListenable: viewStore,
            builder: (context, value, child) {
              if (value.user != null &&
                  value.user!.permissions != null &&
                  value.user!.permissions!.contains('create_user_generic')) {
                return SliverToBoxAdapter(
                  child: Column(
                    children: [
                      ItemButton(
                        onPress: () => context.pushNamed('config_create_user'),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 24,
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                CupertinoIcons.person_add_solid,
                                size: 30,
                              ),
                              const SizedBox(width: 16),
                              Text(
                                "Criar usuario",
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
                  value.user!.permissions!.contains('area_nursing')) {
                return SliverToBoxAdapter(
                  child: Column(
                    children: [
                      ItemButton(
                        onPress: () => context.pushNamed('nursing'),
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

          // * Families
          ValueListenableBuilder(
            valueListenable: viewStore,
            builder: (context, value, child) {
              if (value.user != null &&
                  value.user!.permissions != null &&
                  value.user!.permissions!.contains('area_nursing')) {
                return SliverToBoxAdapter(
                  child: Column(
                    children: [
                      ItemButton(
                        onPress: () => context.pushNamed('families'),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 24,
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                CupertinoIcons.person_3_fill,
                                size: 30,
                              ),
                              const SizedBox(width: 16),
                              Text(
                                "Familias",
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
              }

              return const SliverToBoxAdapter();
            },
          ),

          // * Settings
          SliverToBoxAdapter(
            child: Column(
              children: [
                ItemButton(
                  onPress: () => context.pushNamed('setting_config'),
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
              onPress: () =>
                  viewStore.send(const SettingAction.logoutButtonTapped()),
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
