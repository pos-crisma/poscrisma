import 'dart:io';

import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:room/src/feature/component/hosted_card.dart';
import 'package:store/store.dart';

import '../../../component/hosted_young_card.dart';
import '../provider/controller/action/room_manager_detail_action.dart';
import '../provider/controller/store/room_manager_detail_store.dart';

class RoomManagerDetail extends StatefulWidget {
  const RoomManagerDetail({
    super.key,
    required this.room,
  });

  final Room room;

  @override
  State<RoomManagerDetail> createState() => _RoomManagerDetailState();
}

class _RoomManagerDetailState extends State<RoomManagerDetail> {
  late RoomManagarDetailReducer viewStore;

  @override
  void initState() {
    super.initState();
    viewStore = RoomManagarDetailReducer(widget.room);
    viewStore.send(RoomManagarDetailAction.onAppear(context));
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
      ),
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 100,
          leading: const CustomBackButton(),
          title: Text(
            widget.room.roomName ?? "Nome do quarto",
            style: Theme.of(context)
                .textTheme
                .bodyLarge! //
                .copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: InkWell(
                  onTap: () => viewStore
                      .send(const RoomManagarDetailAction.updateRoomInfo()),
                  child: CupertinoListTile.notched(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    title: Text(
                      "Quarto informações",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge! //
                          .copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    subtitle: const Text("Visualizar e editar"),
                    trailing: const Icon(
                      CupertinoIcons.chevron_right,
                      size: 18,
                    ),
                  ),
                ),
              ),

              const SliverToBoxAdapter(
                child: CustomDivider(),
              ),

              SliverToBoxAdapter(
                child: ValueListenableBuilder(
                  valueListenable: viewStore,
                  builder: (context, value, _) {
                    return ExpansionPanelList(
                      expansionCallback: (panelIndex, isExpanded) =>
                          viewStore.send(const RoomManagarDetailAction
                              .expandedRoomSettings()),
                      expandedHeaderPadding: EdgeInsets.zero,
                      materialGapSize: 0,
                      elevation: 0,
                      children: [
                        ExpansionPanel(
                          backgroundColor: Colors.transparent,
                          canTapOnHeader: true,
                          isExpanded: value.roomSettingExpansion,
                          headerBuilder: (context, isExpanded) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                top: 12.0,
                                left: 16.0,
                              ),
                              child: Text(
                                "Quarto para: ",
                                textAlign: TextAlign.left,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge! //
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            );
                          },
                          body: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                            ),
                            child: Column(
                              children: [
                                CustomSlidingSegmentedControl<int>(
                                  fromMax: true,
                                  isStretch: true,
                                  padding: 16,
                                  initialValue: value.selector,
                                  children: {
                                    1: Text(
                                      'Padrinho',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium! //
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    2: Text(
                                      'Voluntario',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium! //
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    3: Text(
                                      'Jovem',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium! //
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  },
                                  innerPadding: const EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    color: ColorMode.setColor(
                                      context: context,
                                      light:
                                          CupertinoColors.lightBackgroundGray,
                                      dark: CupertinoColors.darkBackgroundGray,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  thumbDecoration: BoxDecoration(
                                    color: ColorMode.setColor(
                                      context: context,
                                      light: Colors.grey.shade100,
                                      dark: Colors.grey.shade900,
                                    ),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  duration: Durations.medium4,
                                  curve: Curves.easeInToLinear,
                                  onValueChanged: (v) => viewStore.send(
                                    RoomManagarDetailAction
                                        .segmentedControlTapped(v),
                                  ),
                                ),
                                value.selector == 3
                                    ? Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child:
                                            CustomSlidingSegmentedControl<int>(
                                          fromMax: true,
                                          isStretch: true,
                                          padding: 16,
                                          initialValue: value.selectorGender,
                                          children: {
                                            1: Text(
                                              'Masculino',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium! //
                                                  .copyWith(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                            2: Text(
                                              'Feminino',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium! //
                                                  .copyWith(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          },
                                          innerPadding: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                            color: ColorMode.setColor(
                                              context: context,
                                              light: CupertinoColors
                                                  .lightBackgroundGray,
                                              dark: CupertinoColors
                                                  .darkBackgroundGray,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          thumbDecoration: BoxDecoration(
                                            color: ColorMode.setColor(
                                              context: context,
                                              light: Colors.grey.shade100,
                                              dark: Colors.grey.shade900,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                          duration: Durations.medium4,
                                          curve: Curves.easeInToLinear,
                                          onValueChanged: (v) => viewStore.send(
                                            RoomManagarDetailAction
                                                .segmentedControlGenderTapped(
                                                    v),
                                          ),
                                        ),
                                      )
                                    : const SizedBox(),
                              ],
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),

              const SliverToBoxAdapter(
                child: CustomDivider(),
              ),

              const SliverToBoxAdapter(
                child: SizedBox(height: 8),
              ),

              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Pessoas no quarto: ",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge! //
                        .copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),

              const SliverToBoxAdapter(
                child: SizedBox(height: 4),
              ),

              ValueListenableBuilder(
                valueListenable: viewStore,
                builder: (context, value, child) {
                  final hosted = value.room.hosted;

                  if (value.isLoading) {
                    return SliverToBoxAdapter(
                      child: Center(
                        child: Transform.scale(
                          scale: Platform.isIOS ? 1.5 : 1,
                          child: const CircularProgressIndicator.adaptive(
                              // backgroundColor: context.primaryColors.primary100,
                              ),
                        ),
                      ),
                    );
                  } else if (hosted != null) {
                    return SliverList.builder(
                      itemCount: value.room.hosted!.length,
                      itemBuilder: (context, index) {
                        final user = hosted[index];

                        return user.userType == "Young"
                            ? HostedYoungCard(
                                name: user.userName ?? "",
                                userRoomId: user.roomId ?? "",
                                roomId: widget.room.roomId ?? "",
                                birthday: user.age.toString(),
                                godFather:
                                    user.godParents?.godFather ?? "Padrinho",
                                godMother:
                                    user.godParents?.godMother ?? "Madrinha",
                                callback: () => viewStore.send(
                                  RoomManagarDetailAction.checkOutTapped(
                                    user.userId ?? "",
                                  ),
                                ),
                              )
                            : HostedCard(
                                name: user.userName ?? "",
                                userRoomId: user.roomId ?? "",
                                roomId: widget.room.roomId ?? "",
                                type: switch (user.userType) {
                                  "GodParent" =>
                                    user.userGender?.toLowerCase() ==
                                            UserGender.Male.name.toLowerCase()
                                        ? "Padrinho"
                                        : "Madrinha",
                                  "Voluntary" =>
                                    user.userGender?.toLowerCase() ==
                                            UserGender.Male.name.toLowerCase()
                                        ? "Voluntario"
                                        : "Voluntaria",
                                  _ => "Jovem"
                                },
                                callback: () => viewStore.send(
                                  RoomManagarDetailAction.checkOutTapped(
                                    user.userId ?? "",
                                  ),
                                ),
                              );
                      },
                    );
                  }

                  return const SliverToBoxAdapter();
                },
              ),

              const SliverToBoxAdapter(
                child: SizedBox(height: 8),
              ),

              const SliverToBoxAdapter(
                child: CustomDivider(),
              ),

              const SliverToBoxAdapter(
                child: SizedBox(height: 4),
              ),

              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Pessoas sem quarto: ",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge! //
                        .copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),

              const SliverToBoxAdapter(
                child: SizedBox(height: 8),
              ),

              ValueListenableBuilder(
                valueListenable: viewStore,
                builder: (context, value, child) {
                  if (value.isLoading) {
                    return const SliverToBoxAdapter();
                  }

                  return SliverToBoxAdapter(
                    child: CustomTextFormField(
                      labelText: "Pesquisa usuário",
                      controller: viewStore.state.filterUserController,
                      focusNote: viewStore.state.filterUserFocus,
                      boxDecorationColor: SystemMode.isDark(context)
                          ? Colors.black
                          : Colors.grey.shade200,
                    ),
                  );
                },
              ),

              const SliverToBoxAdapter(
                child: SizedBox(height: 8),
              ),

              ValueListenableBuilder(
                valueListenable: viewStore,
                builder: (context, value, child) {
                  final filtersUsers = value.filtersUsers;

                  if (value.isLoading) {
                    return SliverToBoxAdapter(
                      child: Center(
                        child: Transform.scale(
                          scale: Platform.isIOS ? 1.5 : 1,
                          child: const CircularProgressIndicator.adaptive(
                              // backgroundColor: context.primaryColors.primary100,
                              ),
                        ),
                      ),
                    );
                  } else if (filtersUsers != null) {
                    return SliverList.builder(
                      itemCount: filtersUsers.length,
                      itemBuilder: (context, index) {
                        final user = filtersUsers[index];
                        return value.selector == 3
                            ? HostedYoungCard(
                                name: user.name ?? "",
                                userRoomId: user.hosted?.roomId ?? "",
                                isGuest: user.guest ?? false,
                                godFather:
                                    user.godParents?.godFather ?? "Padrinho",
                                godMother:
                                    user.godParents?.godMother ?? "Madrinha",
                                roomId: widget.room.roomId ?? "",
                                birthday: user.age.toString(),
                                callback: () => viewStore.send(
                                  RoomManagarDetailAction.checkInTapped(
                                    user.userId ?? "",
                                  ),
                                ),
                              )
                            : HostedCard(
                                name: user.name ?? "",
                                userRoomId: user.hosted?.roomId ?? "",
                                isGuest: user.guest ?? false,
                                roomId: widget.room.roomId ?? "",
                                type: switch (value.selector) {
                                  1 => user.gender == UserGender.Male
                                      ? "Padrinho"
                                      : "Madrinha",
                                  2 => user.gender == UserGender.Male
                                      ? "Voluntario"
                                      : "Voluntaria",
                                  _ => "Jovem"
                                },
                                callback: () => viewStore.send(
                                  RoomManagarDetailAction.checkInTapped(
                                    user.userId ?? "",
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
            ],
          ),
        ),
      ),
    );
  }
}
