import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../components/room_card.dart';
import '../../../../provider/controller/action/room_action.dart';
import '../../../../provider/controller/state/room_state.dart';
import '../../../../provider/controller/store/room_store.dart';

class RoomMobile extends StatefulWidget {
  const RoomMobile({super.key});

  @override
  State<RoomMobile> createState() => _RoomMobileState();
}

class _RoomMobileState extends State<RoomMobile> {
  final RoomReducer viewStore = RoomReducer();

  @override
  void initState() {
    super.initState();

    viewStore.send(RoomAction.onAppear(RoomAreaPage.all, null, context));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: viewStore.state.controller,
        slivers: [
          ValueListenableBuilder(
            valueListenable: viewStore,
            builder: (context, value, child) {
              return SliverAppBar(
                backgroundColor: ColorMode.setColor(
                  context: context,
                  light: lightBackground,
                  dark: darkBackground,
                ),
                elevation: 0,
                stretch: true,
                pinned: true,
                leadingWidth: 100,
                title: AnimatedSwitcher(
                  duration: Durations.medium1,
                  child: value.isCenterTitle
                      ? Text(
                          "Todos os quartos",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium! //
                              .copyWith(
                                fontWeight: FontWeight.bold,
                                color: ColorMode.setColor(
                                  context: context,
                                  light: Colors.black,
                                  dark: Colors.white,
                                ),
                              ),
                        )
                      : Container(),
                ),
                leading: AnimatedSwitcher(
                  duration: Durations.medium1,
                  child: CustomBackButton(
                    backIcon: CupertinoIcons.chevron_back,
                    backTitle: "Voltar",
                    light: value.isCenterTitle ? Colors.black : Colors.white,
                    // dark: Colors.white,
                  ),
                ),
                expandedHeight: kIsWeb
                    ? 300
                    : Responsive.isSmallScreen(context)
                        ? 100
                        : 150,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.parallax,
                  background: AnimatedContainer(
                    color: Colors.deepPurple,
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
                          child: Text(
                            "Todos os quartos",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge! //
                                .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
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
                        return CardRoom(
                          room: room,
                          tapped: () =>
                              viewStore.send(RoomAction.buttonTapped(room)),
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
