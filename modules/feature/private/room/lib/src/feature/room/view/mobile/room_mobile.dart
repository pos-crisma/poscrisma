import 'package:core/core.dart';
import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../provider/controller/action/room_action.dart';
import '../../provider/controller/store/room_store.dart';

class RoomMobile extends StatefulWidget {
  const RoomMobile({super.key});

  @override
  State<RoomMobile> createState() => _RoomMobileState();
}

class _RoomMobileState extends State<RoomMobile> {
  final RoomReducer viewStore = Modular.get();

  @override
  void initState() {
    super.initState();

    viewStore.send(const RoomAction.onAppear());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: viewStore.state.controller,
        slivers: [
          SliverAppBar(
            surfaceTintColor: Colors.transparent,
            elevation: 0,
            stretch: true,
            pinned: true,
            leadingWidth: 100,
            title: ValueListenableBuilder(
              valueListenable: viewStore,
              builder: (context, value, child) {
                return AnimatedSwitcher(
                  duration: Durations.medium1,
                  child: value.isCenterTitle
                      ? Hero(
                          tag: "hero",
                          child: Text(
                            "Todos os quartos",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium! //
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        )
                      : Container(),
                );
              },
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
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: AnimatedContainer(
                duration: Durations.extralong1,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    ValueListenableBuilder(
                      valueListenable: viewStore,
                      builder: (context, value, _) => Image(
                        image: value.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: 16,
                      bottom: 16,
                      child: Hero(
                        tag: "hero",
                        child: Text(
                          "Todos os quartos",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge! //
                              .copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          //*

          ValueListenableBuilder(
            valueListenable: viewStore,
            builder: (context, value, child) {
              final response = value.response;
              if (response != null &&
                  response.rooms != null &&
                  response.rooms!.isNotEmpty) {
                final rooms = response.rooms;

                if (rooms != null && rooms.isNotEmpty) {
                  return SliverPadding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewPadding.bottom,
                    ),
                    sliver: SliverList.builder(
                      itemCount: rooms.length,
                      itemBuilder: (context, index) {
                        final room = rooms[index];
                        return Column(
                          children: [
                            const SizedBox(height: 16.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16.0,
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Future.delayed(Durations.short1)
                                      .then((value) {
                                    showModalBottomSheet(
                                      context: context,
                                      useSafeArea: true,
                                      isScrollControlled: true,
                                      builder: (context) => ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: Scaffold(),
                                      ),
                                    );
                                  });
                                  // print("Tap on room: ${room.roomId}");
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    LayoutBuilder(
                                      builder: (context, constraints) {
                                        return ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          child: SizedBox(
                                            width: constraints.maxWidth,
                                            height: 300,
                                            child: Image.network(
                                              'https://raw.githubusercontent.com/augustineayeh/airbnb_ui_clone/main/assets/images/abiansemal.webp',
                                              fit: BoxFit.fitHeight,
                                              alignment: Alignment.center,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                    const SizedBox(height: 8),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          room.blockName ?? "Não adicionado",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium! //
                                              .copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: ColorMode.setColor(
                                                  context: context,
                                                  light: Colors.black,
                                                  dark: Colors.white,
                                                ),
                                              ),
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            const Icon(
                                              CupertinoIcons.person_2_alt,
                                              size: 16,
                                            ),
                                            const SizedBox(width: 4),
                                            Text(
                                              room.vacancies?.toString() ?? "0",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelMedium! //
                                                  .copyWith(
                                                    color: ColorMode.setColor(
                                                      context: context,
                                                      light: Colors.black,
                                                      dark: Colors.white,
                                                    ),
                                                  ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        text: 'Nome: ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall! //
                                            .copyWith(
                                              fontWeight: FontWeight.w300,
                                              color: ColorMode.setColor(
                                                context: context,
                                                light: Colors.grey.shade800,
                                                dark: Colors.grey.shade400,
                                              ),
                                            ),
                                        children: [
                                          TextSpan(
                                            text: room.roomName ??
                                                "Não adicionado",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall! //
                                                .copyWith(
                                                  fontWeight: FontWeight.w300,
                                                  color: ColorMode.setColor(
                                                    context: context,
                                                    light: Colors.grey.shade800,
                                                    dark: Colors.grey.shade400,
                                                  ),
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        text: 'Tipo: ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall! //
                                            .copyWith(
                                              fontWeight: FontWeight.w300,
                                              color: ColorMode.setColor(
                                                context: context,
                                                light: Colors.grey.shade800,
                                                dark: Colors.grey.shade400,
                                              ),
                                            ),
                                        children: [
                                          TextSpan(
                                            text: room.roomType ??
                                                "Não adicionado",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall! //
                                                .copyWith(
                                                  fontWeight: FontWeight.w300,
                                                  color: ColorMode.setColor(
                                                    context: context,
                                                    light: Colors.grey.shade800,
                                                    dark: Colors.grey.shade400,
                                                  ),
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      room.observations ?? "Não adicionado",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall! //
                                          .copyWith(
                                            fontWeight: FontWeight.w300,
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
                          ],
                        );
                      },
                    ),
                  );
                }
              }

              return const SliverToBoxAdapter();
            },
          ),
        ],
      ),
    );
  }
}
