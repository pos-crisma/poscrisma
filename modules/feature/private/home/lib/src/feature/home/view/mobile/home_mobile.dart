import 'package:core/core.dart';
import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../create_family/view/mobile/create_family_mobile.dart';
import '../../provider/controller/action/home_action.dart';
import '../../provider/controller/store/home_store.dart';

class HomeMobile extends StatelessWidget {
  HomeMobile({super.key});

  final HomeReducer viewStore = Modular.get();

  void generateInvite(BuildContext context) {
    Future.delayed(Durations.short1).then((value) {
      showModalBottomSheet(
        context: context,
        useSafeArea: true,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(8),
          ),
        ),
        builder: (context) {
          return Container();
        },
      );
    });
  }

  void generateFamily(BuildContext context) {
    Future.delayed(Durations.short1).then((value) {
      showModalBottomSheet(
        context: context,
        useSafeArea: true,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(8),
          ),
        ),
        builder: (context) {
          return CreateFamilyMobile();
        },
      );
    });
  }

  void showFamily(BuildContext context) {
    Future.delayed(Durations.short1).then((value) {
      showModalBottomSheet(
        context: context,
        useSafeArea: true,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(8),
          ),
        ),
        builder: (context) {
          return Container();
        },
      );
    });
  }

  void notification(BuildContext context) {
    Future.delayed(Durations.short1).then((value) {
      showModalBottomSheet(
        context: context,
        useSafeArea: true,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(8),
          ),
        ),
        builder: (context) {
          return Container();
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    viewStore.send(HomeAction.onAppear());

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.deepPurpleAccent,
      ),
    );

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // * Header
          SliverAppBar(
            forceElevated: false,
            pinned: true,
            elevation: 0,
            stretch: true,
            backgroundColor: Colors.deepPurple.shade400,
            expandedHeight: 0,
            collapsedHeight: 0,
            toolbarHeight: 0,
          ),

          //*
          SliverToBoxAdapter(
            child: Container(
              color: Colors.deepPurple.shade400,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        // * Settings
                        InkWell(
                          onTap: () => Modular.to.pushNamed('/setting/'),
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.deepPurple.shade300,
                            ),
                            child: const Icon(
                              Icons.settings,
                              color: Colors.white,
                            ),
                          ),
                        ),

                        // *
                        const Spacer(),

                        // * Notification
                        IconButton(
                          onPressed: () async => notification(context),
                          icon: const Icon(
                            CupertinoIcons.bell_solid,
                            color: Colors.white,
                          ),
                        ),

                        // * Invite
                        ValueListenableBuilder(
                          valueListenable: viewStore,
                          builder: (context, value, child) {
                            if (value.user != null &&
                                value.user!.permissions != null &&
                                value.user!.permissions!
                                    .contains('manager_invite')) {
                              return IconButton(
                                onPressed: () async => generateInvite(context),
                                icon: const Icon(
                                  CupertinoIcons.tickets_fill,
                                  color: Colors.white,
                                ),
                              );
                            } else {
                              return Container();
                            }
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    ValueListenableBuilder(
                      valueListenable: viewStore,
                      builder: (context, value, child) => RichText(
                        text: TextSpan(
                          text: 'Olá, ', // TODO: move to i18n
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge! //
                              .copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                          children: [
                            TextSpan(
                              text: value.user?.name ??
                                  'Carregando ...', // TODO: move to i18n
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ValueListenableBuilder(
                      valueListenable: viewStore,
                      builder: (context, value, child) {
                        final createFamily = (value.user != null &&
                            value.user!.familyId == null &&
                            (value.user!.typeUser == "GodParent" ||
                                value.user!.typeUser == "Voluntary"));
                        final viewFamily = (value.user != null &&
                            value.user!.familyId != null &&
                            (value.user!.typeUser == "GodParent" ||
                                value.user!.typeUser == "Voluntary"));

                        if (createFamily) {
                          return Column(
                            children: [
                              const SizedBox(height: 8),
                              ComplexButton(
                                onPress: () => generateFamily(context),
                                text: 'Crie sua familia', // TODO: move to i18n
                                iconData: CupertinoIcons
                                    .person_crop_circle_badge_plus,
                                light: Colors.grey.shade200,
                                dark: Colors.grey.shade800,
                              ),
                            ],
                          );
                        } else if (viewFamily) {
                          return Column(
                            children: [
                              const SizedBox(height: 8),
                              ComplexButton(
                                onPress: () => showFamily(context),
                                text:
                                    'Visualiza sua familia', // TODO: move to i18n
                                iconData: CupertinoIcons
                                    .person_crop_circle_badge_checkmark,
                                light: Colors.grey.shade200,
                                dark: Colors.grey.shade800,
                              ),
                            ],
                          );
                        } else {
                          return Container();
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),

          //* Room
          ValueListenableBuilder(
            valueListenable: viewStore,
            builder: (context, value, child) {
              if (value.user != null &&
                  value.user!.permissions != null &&
                  value.user!.permissions!.contains('view_room')) {
                return SliverToBoxAdapter(
                  child: Column(
                    children: [
                      ItemButton(
                        onPress: () => Modular.to.pushNamed('/room/'),
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            return Container(
                              // alignment: Alignment.centerLeft,
                              width: constraints.maxWidth,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 8,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Todos quartos",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(),
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            text:
                                                'Total de quartos usados: ', // TODO: move to i18n
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge!
                                                .copyWith(),
                                            children: [
                                              TextSpan(
                                                text: '45',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyLarge!
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
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 24,
                                    color: Colors.grey.shade800,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LayoutBuilder(
                                builder: (context, constraints) =>
                                    AnimatedButton(
                                  padding: EdgeInsets.zero,
                                  innerPadding: EdgeInsets.zero,
                                  onPress: () =>
                                      Modular.to.pushNamed('/room/type'),
                                  disabledChild: Container(),
                                  enableColor: Colors.transparent,
                                  child: SizedBox(
                                    width: 100,
                                    height: constraints.maxHeight,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: ColorMode.setColor(
                                                context: context,
                                                light: Colors.grey.shade300,
                                                dark: Colors.grey.shade800,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "Padrinho", // TODO: move to i18n
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
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
                              const SizedBox(width: 8),
                              LayoutBuilder(
                                builder: (context, constraints) =>
                                    AnimatedButton(
                                  padding: EdgeInsets.zero,
                                  innerPadding: EdgeInsets.zero,
                                  onPress: () =>
                                      Modular.to.pushNamed('/room/type'),
                                  disabledChild: Container(),
                                  enableColor: Colors.transparent,
                                  child: SizedBox(
                                    width: 100,
                                    height: constraints.maxHeight,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: ColorMode.setColor(
                                                context: context,
                                                light: Colors.grey.shade300,
                                                dark: Colors.grey.shade800,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "Jovem", // TODO: move to i18n
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
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
                              const SizedBox(width: 8),
                              LayoutBuilder(
                                builder: (context, constraints) =>
                                    AnimatedButton(
                                  padding: EdgeInsets.zero,
                                  innerPadding: EdgeInsets.zero,
                                  onPress: () =>
                                      Modular.to.pushNamed('/room/type'),
                                  disabledChild: Container(),
                                  enableColor: Colors.transparent,
                                  child: SizedBox(
                                    width: 100,
                                    height: constraints.maxHeight,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: ColorMode.setColor(
                                                context: context,
                                                light: Colors.grey.shade300,
                                                dark: Colors.grey.shade800,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "Voluntarios", // TODO: move to i18n
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
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
                              const SizedBox(width: 8),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: ComplexButton(
                          onPress: () => Modular.to.pushNamed('/room/search'),
                          text: "Pesquisar quarto", // TODO: move to i18n
                          iconData: CupertinoIcons.search,
                          light: Colors.grey.shade300,
                          dark: Colors.grey.shade800,
                          showIsNew: false,
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

          //* Camp
          ValueListenableBuilder(
            valueListenable: viewStore,
            builder: (context, value, child) {
              if (value.user != null &&
                  value.user!.permissions != null &&
                  value.user!.permissions!.contains('view_camp')) {
                return SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        child: Text(
                          'Acampamento', // TODO: move to i18n
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge! //
                              .copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                      const SizedBox(height: 8),

                      // ? Events camp area
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: ComplexButton(
                          onPress: () => Modular.to.pushNamed('/team/'),
                          text: "Equipes", // TODO: move to i18n
                          iconData: CupertinoIcons.group_solid,
                          light: Colors.grey.shade300,
                          dark: Colors.grey.shade800,
                          showIsNew: false,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          right: 16,
                        ),
                        child: Text(
                          'Eventos', // TODO: move to i18n
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge! //
                              .copyWith(
                                  // fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: ComplexButton(
                          onPress: () => Modular.to.pushNamed('/team/'),
                          text: "Pesquisar Jogos", // TODO: move to i18n
                          iconData: CupertinoIcons.gamecontroller_alt_fill,
                          light: Colors.grey.shade300,
                          dark: Colors.grey.shade800,
                          showIsNew: false,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: ComplexButton(
                          onPress: () => Modular.to.pushNamed('/schedule/'),
                          text: "Tabela de jogos", // TODO: move to i18n
                          iconData: CupertinoIcons.calendar,
                          light: Colors.grey.shade300,
                          dark: Colors.grey.shade800,
                          showIsNew: false,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const CustomDivider(),
                    ],
                  ),
                );
              } else {
                return const SliverToBoxAdapter();
              }
            },
          ),

          //* Item
          ValueListenableBuilder(
            valueListenable: viewStore,
            builder: (context, value, child) {
              if (value.user != null &&
                  value.user!.permissions != null &&
                  value.user!.permissions!.contains('manager_warehouse')) {
                return SliverPadding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  sliver: SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: Text(
                            'Itens do acampamento', // TODO: move to i18n
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge! //
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ComplexButton(
                            onPress: () => Modular.to.pushNamed('/warehouse/'),
                            text: "Almoxarifado",
                            iconData: CupertinoIcons.cube_box_fill,
                            light: Colors.grey.shade300,
                            dark: Colors.grey.shade800,
                            showIsNew: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                return const SliverToBoxAdapter();
              }
            },
          ),

          const SliverToBoxAdapter(
            child: SizedBox(height: 8),
          ),

          ValueListenableBuilder(
            valueListenable: viewStore,
            builder: (context, value, child) {
              if (value.version != null) {
                return SliverToBoxAdapter(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Versão: ', // TODO: move to i18n
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall! //
                          .copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                      children: [
                        TextSpan(
                          text: value.version?.version ?? '...',
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall! //
                              .copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                return const SliverToBoxAdapter();
              }
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
