import 'package:core/core.dart';
import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../provider/controller/action/room_manager_action.dart';
import '../provider/controller/store/room_manager_store.dart';

class RoomManagerPage extends StatefulWidget {
  const RoomManagerPage({super.key});

  @override
  State<RoomManagerPage> createState() => _RoomManagerPageState();
}

class _RoomManagerPageState extends State<RoomManagerPage> {
  final RoomManagerReducer viewStore = RoomManagerReducer();

  @override
  void initState() {
    super.initState();
    viewStore.send(RoomManagerAction.onAppear(context));
  }

  String roomTypeDescription(String? roomType) {
    return switch (roomType) {
      "Couple" => "Casal",
      "Single" => "Solteiro",
      _ => "Sem ocupantes"
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator.adaptive(
        edgeOffset: 16,
        onRefresh: () {
          return viewStore.send(const RoomManagerAction.pullToRefresh());
        },
        child: CustomScrollView(
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
            SliverPersistentHeader(
              pinned: true,
              delegate: _SliverSecondAppBarDelegate(
                viewStore: viewStore,
              ),
              floating: true,
            ),

            //*
            ValueListenableBuilder(
              valueListenable: viewStore,
              builder: (context, value, child) {
                if (value.isLoading) {
                  return const SliverToBoxAdapter(
                    child: CupertinoActivityIndicator(),
                  );
                }

                final rooms = value.filterRooms;
                if (rooms != null && rooms.isNotEmpty) {
                  return SliverPadding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewPadding.bottom,
                    ),
                    sliver: SliverList.builder(
                      itemCount: rooms.length,
                      itemBuilder: (context, index) {
                        final room = rooms[index];

                        return Hero(
                          tag: room.roomId ?? "room_id",
                          child: CupertinoListTile.notched(
                            onTap: () => viewStore
                                .send(RoomManagerAction.buttonTapped(room)),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 8,
                            ),
                            title: Text(
                              room.roomName ?? "",
                              style: TextStyle(
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
                                Text(
                                  room.blockName ?? "",
                                ),
                                Text(
                                  roomTypeDescription(
                                    room.roomType,
                                  ),
                                )
                              ],
                            ),
                            trailing: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: "Vagas: ",
                                    style: TextStyle(
                                      color: ColorMode.setColor(
                                        context: context,
                                        light: CupertinoColors.secondaryLabel,
                                        dark: CupertinoColors.systemGrey2,
                                      ),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "${room.vacancies}",
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: "Pessoas: ",
                                    style: TextStyle(
                                      color: ColorMode.setColor(
                                        context: context,
                                        light: CupertinoColors.secondaryLabel,
                                        dark: CupertinoColors.systemGrey2,
                                      ),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "${room.hosted!.length}",
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                }

                return const SliverToBoxAdapter();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _SliverSecondAppBarDelegate extends SliverPersistentHeaderDelegate {
  final RoomManagerReducer viewStore;

  _SliverSecondAppBarDelegate({required this.viewStore});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      padding: const EdgeInsets.only(
        left: 8,
        right: 8,
        top: 16,
        bottom: 0,
      ),
      alignment: Alignment.center,
      color: ColorMode.setColor(
        context: context,
        light: Colors.grey.shade200,
        dark: Colors.grey.shade800,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
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
                  size: 26,
                  color: Colors.grey,
                ),
              ),
              const Spacer(),
              CupertinoButton(
                minSize: 0,
                alignment: Alignment.centerLeft,
                color: Colors.transparent,
                padding: EdgeInsets.zero,
                onPressed: () => viewStore.send(
                  const RoomManagerAction.buttonAddRoomTapped(),
                ),
                child: const Icon(
                  Icons.add_home_work,
                  size: 26,
                  color: Colors.grey,
                ),
              ),
            ],
          ),

          //?
          const Spacer(),

          //*
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Gerenciar",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge! //
                  .copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),

          const SizedBox(height: 8),

          //*
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Aqui você pode gerenciar o quartos",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge! //
                  .copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),

          const SizedBox(height: 8),

          //*
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ValueListenableBuilder(
              valueListenable: viewStore,
              builder: (context, value, child) {
                return CustomTextFormField(
                  edgeInsets: EdgeInsets.zero,
                  enabled: !value.isLoading,
                  labelText: "Pesquisa Quarto",
                  controller: viewStore.state.filterRoomController,
                  focusNote: viewStore.state.filterRoomFocus,
                  boxDecorationColor: SystemMode.isDark(context)
                      ? Colors.black
                      : Colors.grey.shade100,
                );
              },
            ),
          ),

          //?
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 200.0;

  @override
  double get minExtent => 200.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
