import 'package:core/core.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:room/src/feature/provider/controller/state/room_state.dart';

import '../../../../components/room_card.dart';
import '../../../../provider/controller/action/room_action.dart';
import '../../../../provider/controller/store/room_store.dart';

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

    viewStore.send(const RoomAction.onAppear(RoomAreaPage.all, null));
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
                        return CardRoom(room: room);
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
