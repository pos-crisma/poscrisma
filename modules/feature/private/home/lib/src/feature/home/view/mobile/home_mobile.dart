import 'package:core/core.dart';
import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:store/store.dart';

import '../../../create_family/view/mobile/create_family_mobile.dart';
import '../../../family/view/mobile/family_mobile.dart';
import '../../../family_group/view/mobile/family_group_mobile.dart';
import '../../../invite/view/mobile/invite_mobile.dart';
import '../../../notification/view/mobile/notification_mobile.dart';
import '../../../punish/list/view/list_punish_view.dart';
import '../../../punish/mark/view/mark_punish_view.dart';
import '../../provider/controller/action/home_action.dart';
import '../../provider/controller/store/home_store.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key, required this.viewStore});

  final HomeReducer viewStore;

  void generateInvite(BuildContext context) {
    Future.delayed(Durations.short1).then((value) {
      showModalBottomSheet(
        context: context,
        useSafeArea: true,
        isScrollControlled: true,
        builder: (context) => const InviteMobile(),
      );
    });
  }

  void generateFamily(BuildContext context) {
    Future.delayed(Durations.short1).then((value) {
      showModalBottomSheet(
        context: context,
        useSafeArea: true,
        isScrollControlled: true,
        builder: (context) => CreateFamilyMobile(),
      );
    });
  }

  void showFamilyGroup(BuildContext context) {
    Future.delayed(Durations.short1).then((value) {
      showModalBottomSheet(
        context: context,
        useSafeArea: true,
        isScrollControlled: true,
        builder: (context) => FamilyGroupMobile(),
      );
    });
  }

  void showFamily(BuildContext context) {
    Future.delayed(Durations.short1).then((value) {
      showModalBottomSheet(
        context: context,
        useSafeArea: true,
        isScrollControlled: true,
        builder: (context) => const FamilyMobile(),
      );
    });
  }

  void notification(BuildContext context) {
    Future.delayed(Durations.short1).then((value) {
      showModalBottomSheet(
        context: context,
        useSafeArea: true,
        isScrollControlled: true,
        builder: (context) => const NotificationMobile(),
      );
    });
  }

  void listPunish(BuildContext context) {
    Future.delayed(Durations.short1).then((value) {
      showModalBottomSheet(
        context: context,
        useSafeArea: true,
        isScrollControlled: true,
        barrierColor: Colors.transparent,
        builder: (context) => const ListPunish(),
      );
    });
  }

  void markPunish(BuildContext context) {
    Future.delayed(Durations.short1).then((value) {
      showModalBottomSheet(
        context: context,
        useSafeArea: true,
        isScrollControlled: true,
        barrierColor: Colors.transparent,
        builder: (context) => const MarkPunish(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.deepPurpleAccent,
      ),
    );

    return Scaffold(
      body: RefreshIndicator.adaptive(
        edgeOffset: 16,
        onRefresh: () {
          return viewStore.send(const HomeAction.pullToRefresh());
        },
        child: CustomScrollView(
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
                            onTap: () => context.pushNamed('setting'),
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
                            icon: const Badge(
                              // label: Text("1"),
                              isLabelVisible: true,
                              child: Icon(
                                CupertinoIcons.bell_solid,
                                color: Colors.white,
                              ),
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
                                  onPressed: () async =>
                                      generateInvite(context),
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
                            text: 'Olá, ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge! //
                                .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                            children: [
                              TextSpan(
                                text: value.user?.name ?? 'Carregando ...',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      //*
                      ValueListenableBuilder(
                        valueListenable: viewStore,
                        builder: (context, value, child) {
                          if (value.user != null &&
                              value.user!.family != null &&
                              value.user!.permissions != null &&
                              value.user!.permissions!
                                  .contains('manager_family') &&
                              value.user!.permissions!
                                  .contains('create_family')) {
                            return Column(
                              children: [
                                const SizedBox(height: 8),
                                ComplexButton(
                                  onPress: () => showFamily(context),
                                  text: "Sua familia",
                                  iconData: CupertinoIcons.person_2_alt,
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

                      ValueListenableBuilder(
                        valueListenable: viewStore,
                        builder: (context, value, child) {
                          final createFamily = (value.user != null &&
                              value.user!.familyId == null &&
                              value.user!.permissions!
                                  .contains('create_family'));
                          final viewFamily = (value.user != null &&
                              value.user!.familyId != null &&
                              value.user!.permissions!
                                  .contains('manager_group'));

                          if (createFamily) {
                            return Column(
                              children: [
                                const SizedBox(height: 8),
                                ComplexButton(
                                  onPress: () => generateFamily(context),
                                  text: 'Crie sua familia',
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
                                  onPress: () => showFamilyGroup(context),
                                  text: 'Seu grupo poscrisma',
                                  iconData: CupertinoIcons.person_3_fill,
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

            ValueListenableBuilder(
              valueListenable: viewStore,
              builder: (context, value, child) => value.internetCheck == false
                  ? SliverToBoxAdapter(
                      child: Column(
                        children: [
                          const SizedBox(height: 8),
                          Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 16,
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: ColorMode.setColor(
                                context: context,
                                light: Colors.grey.shade200,
                                dark: Colors.grey.shade800,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: [
                                const Icon(
                                  CupertinoIcons.wifi_slash,
                                ),
                                const SizedBox(width: 16),
                                Flexible(
                                  child: Text(
                                    "Sem internet sua experiencia no app sera limitada ${value.internetCheck.toString()}",
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const CustomDivider(),
                        ],
                      ),
                    )
                  : SliverToBoxAdapter(
                      child: Container(),
                    ),
            ),

            //* Room
            ValueListenableBuilder(
              valueListenable: viewStore,
              builder: (context, value, child) {
                return SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        child: Text(
                          'Quartos',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge! //
                              .copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),

                      // * Your room
                      Builder(
                        builder: (context) {
                          if (value.user == null) {
                            return Container();
                          }

                          final hosted = value.user?.hosted;

                          return Container(
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.only(
                              top: 8,
                              left: 16,
                              right: 16,
                            ),
                            child: RichText(
                              text: TextSpan(
                                text: 'Seu quarto: ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge! //
                                    .copyWith(
                                      color: ColorMode.setColor(
                                        context: context,
                                        light: Colors.black,
                                        dark: Colors.white,
                                      ),
                                      // fontWeight: FontWeight.w500,
                                    ),
                                children: [
                                  TextSpan(
                                    text: hosted?.roomName ??
                                        "Ainda não possui quarto definido",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                          color: ColorMode.setColor(
                                            context: context,
                                            light: Colors.black,
                                            dark: Colors.white,
                                          ),
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),

                      value.user != null &&
                              value.user!.permissions != null &&
                              value.user!.permissions!.contains('view_room')
                          ? ItemButton(
                              onPress: () => context.pushNamed('room'),
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
                                              ValueListenableBuilder(
                                                valueListenable: viewStore,
                                                builder:
                                                    (context, value, child) {
                                                  return RichText(
                                                    text: TextSpan(
                                                      text:
                                                          'Total de quartos usados: ',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyLarge!
                                                          .copyWith(),
                                                      children: [
                                                        TextSpan(
                                                          text:
                                                              '${value.lodging?.totalRoom ?? 0}',
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodyLarge!
                                                                  .copyWith(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
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
                            )
                          : Container(),

                      value.user != null &&
                              value.user!.permissions != null &&
                              value.user!.permissions!.contains('view_room') &&
                              value.internetCheck
                          ? Container(
                              padding: const EdgeInsets.only(
                                top: 8,
                                left: 16,
                                right: 16,
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
                                        onPress: () => context.pushNamed(
                                          'room_type',
                                          pathParameters: {
                                            "type":
                                                InviteUserType.GodParent.name,
                                          },
                                        ),
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
                                                    image:
                                                        const DecorationImage(
                                                      image: iconAdult,
                                                      fit: BoxFit.scaleDown,
                                                    ),
                                                    color: ColorMode.setColor(
                                                      context: context,
                                                      light:
                                                          Colors.grey.shade300,
                                                      dark:
                                                          Colors.grey.shade800,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                "Padrinho",
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
                                        onPress: () => context.pushNamed(
                                          'room_type',
                                          pathParameters: {
                                            "type": InviteUserType.Young.name,
                                          },
                                        ),
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
                                                    image:
                                                        const DecorationImage(
                                                      image: iconYoung,
                                                      fit: BoxFit.scaleDown,
                                                    ),
                                                    color: ColorMode.setColor(
                                                      context: context,
                                                      light:
                                                          Colors.grey.shade300,
                                                      dark:
                                                          Colors.grey.shade800,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      8.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                "Jovem",
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
                                        onPress: () => context.pushNamed(
                                          'room_type',
                                          pathParameters: {
                                            "type":
                                                InviteUserType.Voluntary.name,
                                          },
                                        ),
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
                                                    image:
                                                        const DecorationImage(
                                                      image: iconVoluntary,
                                                      fit: BoxFit.scaleDown,
                                                    ),
                                                    color: ColorMode.setColor(
                                                      context: context,
                                                      light:
                                                          Colors.grey.shade300,
                                                      dark:
                                                          Colors.grey.shade800,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                "Voluntarios",
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
                            )
                          : Container(),

                      // value.user != null &&
                      //         value.user!.permissions != null &&
                      //         value.user!.permissions!.contains('view_room') &&
                      //         value.internetCheck
                      //     ? Container(
                      //         padding: const EdgeInsets.only(
                      //           top: 8,
                      //           left: 16,
                      //           right: 16,
                      //         ),
                      //         width: MediaQuery.of(context).size.width,
                      //         child: ComplexButton(
                      //           onPress: () => context.pushNamed('room_search'),
                      //           text: "Pesquisar quarto",
                      //           iconData: CupertinoIcons.search,
                      //           light: Colors.grey.shade300,
                      //           dark: Colors.grey.shade800,
                      //           showIsNew: false,
                      //         ),
                      //       )
                      //     : Container(),

                      value.user != null &&
                              value.user!.permissions != null &&
                              value.user!.permissions!.contains('view_room') &&
                              value.internetCheck
                          ? Container(
                              padding: const EdgeInsets.only(
                                top: 8,
                                left: 16,
                                right: 16,
                              ),
                              width: MediaQuery.of(context).size.width,
                              child: ComplexButton(
                                onPress: () =>
                                    context.pushNamed('room_manager'),
                                text: "Pesquisar quartos",
                                iconData: CupertinoIcons.search,
                                light: Colors.grey.shade300,
                                dark: Colors.grey.shade800,
                                showIsNew: false,
                              ),
                            )
                          : Container(),

                      value.user != null &&
                              value.user!.permissions != null &&
                              value.user!.permissions!.contains('view_room') &&
                              value.internetCheck
                          ? Container(
                              padding: const EdgeInsets.only(
                                top: 8,
                                left: 16,
                                right: 16,
                              ),
                              width: MediaQuery.of(context).size.width,
                              child: ComplexButton(
                                onPress: () => context.pushNamed('room_finder'),
                                text: "Pesquisar por nome",
                                iconData: CupertinoIcons.search,
                                light: Colors.grey.shade300,
                                dark: Colors.grey.shade800,
                                showIsNew: false,
                              ),
                            )
                          : Container(),

                      const SizedBox(
                        height: 8,
                      ),
                      const CustomDivider(),
                    ],
                  ),
                );
              },
            ),

            ValueListenableBuilder(
              valueListenable: viewStore,
              builder: (context, value, child) {
                return value.user != null &&
                        value.user?.typeUser.toLowerCase() != 'young'
                    ? SliverToBoxAdapter(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            value.user != null &&
                                    value.user!.permissions != null
                                ? const SizedBox(height: 8)
                                : Container(),

                            //
                            value.user != null &&
                                    value.user!.permissions != null
                                ? Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: Text(
                                      'Castigos',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge! //
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  )
                                : Container(),

                            //
                            const SizedBox(height: 8),

                            //
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    value.user != null &&
                                            value.user!.permissions != null &&
                                            value.user!.permissions!
                                                .contains('view_punish')
                                        ? CupertinoButton(
                                            padding: EdgeInsets.zero,
                                            onPressed: () =>
                                                listPunish(context),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding:
                                                      const EdgeInsets.all(16),
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: ColorMode.setColor(
                                                      context: context,
                                                      light:
                                                          Colors.grey.shade300,
                                                      dark:
                                                          Colors.grey.shade900,
                                                    ),
                                                  ),
                                                  child: Icon(
                                                    Icons.policy_rounded,
                                                    color: ColorMode.setColor(
                                                      context: context,
                                                      light:
                                                          Colors.grey.shade800,
                                                      dark:
                                                          Colors.grey.shade200,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  "Lista\ncastigo",
                                                  textAlign: TextAlign.center,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelSmall! //
                                                      .copyWith(),
                                                ),
                                              ],
                                            ),
                                          )
                                        : Container(),
                                    value.user != null &&
                                            value.user!.permissions != null &&
                                            value.user!.permissions!
                                                .contains('view_punish')
                                        ? const SizedBox(width: 16)
                                        : Container(),

                                    // *

                                    value.user != null &&
                                            value.user!.permissions != null &&
                                            value.user!.permissions!
                                                .contains('mark_punish')
                                        ? CupertinoButton(
                                            padding: EdgeInsets.zero,
                                            onPressed: () =>
                                                markPunish(context),
                                            child: Column(
                                              children: [
                                                Container(
                                                  padding:
                                                      const EdgeInsets.all(16),
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: ColorMode.setColor(
                                                      context: context,
                                                      light:
                                                          Colors.grey.shade300,
                                                      dark:
                                                          Colors.grey.shade900,
                                                    ),
                                                  ),
                                                  child: Icon(
                                                    CupertinoIcons
                                                        .doc_person_fill,
                                                    color: ColorMode.setColor(
                                                      context: context,
                                                      light:
                                                          Colors.grey.shade800,
                                                      dark:
                                                          Colors.grey.shade200,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(height: 8),
                                                Text(
                                                  "Marcar\ncastigo",
                                                  textAlign: TextAlign.center,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelSmall! //
                                                      .copyWith(),
                                                ),
                                              ],
                                            ),
                                          )
                                        : Container()
                                  ],
                                ),
                              ),
                            ),

                            value.user != null &&
                                    value.user!.permissions != null &&
                                    !value.user!.permissions!
                                        .contains('view_punish') &&
                                    !value.user!.permissions!
                                        .contains('jugde_punish') &&
                                    !value.user!.permissions!
                                        .contains('mark_punish')
                                ? const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16),
                                    child: Text(
                                      "Você não tem permissão de ver os castigos",
                                    ),
                                  )
                                : Container(),

                            //
                            const SizedBox(height: 8),

                            //
                            value.user != null &&
                                    value.user!.permissions != null
                                ? const CustomDivider()
                                : Container(),
                          ],
                        ),
                      )
                    : const SliverToBoxAdapter();
              },
            ),

            //* Camp
            ValueListenableBuilder(
              valueListenable: viewStore,
              builder: (context, value, child) {
                return value.user != null &&
                        value.user!.permissions != null &&
                        value.user!.permissions!.contains('view_camp')
                    ? SliverToBoxAdapter(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              child: Text(
                                'Acampamento',
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
                            value.user != null &&
                                    value.user!.permissions != null &&
                                    value.user!.permissions!
                                        .contains('view_camp') &&
                                    value.user!.permissions!
                                        .contains('view_team')
                                ? Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                    ),
                                    width: MediaQuery.of(context).size.width,
                                    child: ComplexButton(
                                      onPress: () => context.pushNamed('team'),
                                      text: "Equipes",
                                      iconData: CupertinoIcons.group_solid,
                                      light: Colors.grey.shade300,
                                      dark: Colors.grey.shade800,
                                      showIsNew: false,
                                    ),
                                  )
                                : Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                    ),
                                    child: const Text(
                                        "Não possui o devido acesso"),
                                  ),

                            // ? Events camp area
                            value.user != null &&
                                    value.user!.permissions != null &&
                                    value.user!.permissions!
                                        .contains('view_camp') &&
                                    value.user!.permissions!
                                        .contains('view_result')
                                ? Container(
                                    margin: const EdgeInsets.only(top: 8.0),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                    ),
                                    width: MediaQuery.of(context).size.width,
                                    child: ComplexButton(
                                      onPress: () =>
                                          context.pushNamed('result'),
                                      text: "Resultados",
                                      iconData: CupertinoIcons.doc_richtext,
                                      light: Colors.grey.shade300,
                                      dark: Colors.grey.shade800,
                                      showIsNew: true,
                                    ),
                                  )
                                : Container(),

                            // ? Events camp area
                            value.user != null &&
                                    value.user!.permissions != null &&
                                    value.user!.permissions!
                                        .contains('view_camp') &&
                                    value.user!.permissions!.contains('audit')
                                ? Container(
                                    margin: const EdgeInsets.only(top: 8.0),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                    ),
                                    width: MediaQuery.of(context).size.width,
                                    child: ComplexButton(
                                      onPress: () => context.pushNamed('team'),
                                      text: "Auditoria",
                                      iconData:
                                          CupertinoIcons.shield_lefthalf_fill,
                                      light: Colors.grey.shade300,
                                      dark: Colors.grey.shade800,
                                      showIsNew: true,
                                    ),
                                  )
                                : Container(),

                            const SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 16,
                                right: 16,
                              ),
                              child: Text(
                                'Jogos',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge! //
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                            const SizedBox(height: 8),

                            value.user != null &&
                                    value.user!.permissions != null &&
                                    value.user!.permissions!
                                        .contains('view_camp') &&
                                    value.user!.permissions!
                                        .contains('view_game')
                                ? Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                    ),
                                    width: MediaQuery.of(context).size.width,
                                    child: ComplexButton(
                                      onPress: () =>
                                          context.pushNamed('schedule'),
                                      text: "Tabela de jogos",
                                      iconData: CupertinoIcons.calendar,
                                      light: Colors.grey.shade300,
                                      dark: Colors.grey.shade800,
                                      showIsNew: false,
                                    ),
                                  )
                                : Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                    ),
                                    child: const Text(
                                        "Não possui o devido acesso"),
                                  ),
                            const SizedBox(height: 8),

                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              child: Text(
                                'Caça ao tesouros',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge! //
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                            const SizedBox(height: 8),

                            value.user != null &&
                                    value.user!.permissions != null &&
                                    value.user!.permissions!
                                        .contains('view_camp') &&
                                    value.user!.permissions!
                                        .contains('view_treasure')
                                ? Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                    ),
                                    width: MediaQuery.of(context).size.width,
                                    child: ComplexButton(
                                      badge: true,
                                      onPress: () =>
                                          context.pushNamed('treasure'),
                                      text: "Tendas",
                                      iconData: Icons.emoji_events,
                                      light: Colors.grey.shade300,
                                      dark: Colors.grey.shade800,
                                    ),
                                  )
                                : Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                    ),
                                    child: const Text(
                                      "Não possui o devido acesso",
                                    ),
                                  ),
                            const SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              child: Text(
                                'Show de talentos',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge! //
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            value.user != null &&
                                    value.user!.permissions != null &&
                                    value.user!.permissions!
                                        .contains('view_camp') &&
                                    value.user!.permissions!
                                        .contains('view_talent')
                                ? Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                    ),
                                    width: MediaQuery.of(context).size.width,
                                    child: ComplexButton(
                                      badge: true,
                                      onPress: () =>
                                          context.pushNamed('talent'),
                                      text: "Talentos",
                                      iconData: CupertinoIcons.today,
                                      light: Colors.grey.shade300,
                                      dark: Colors.grey.shade800,
                                    ),
                                  )
                                : Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                    ),
                                    child: const Text(
                                      "Não possui o devido acesso",
                                    ),
                                  ),
                            const SizedBox(height: 8),

                            const CustomDivider(),
                          ],
                        ),
                      )
                    : const SliverToBoxAdapter();
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
                              'Lista de jogos',
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
                              onPress: () => context.pushNamed('game'),
                              text: "Jogos",
                              iconData: CupertinoIcons.game_controller_solid,
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

            // * Version
            ValueListenableBuilder(
              valueListenable: viewStore,
              builder: (context, value, child) {
                if (value.version != null) {
                  return SliverToBoxAdapter(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Versão: ',
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
                height: MediaQuery.of(context)
                    .padding //
                    .bottom,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
