import 'package:core/core.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../provider/controller/action/room_search_action.dart';
import '../../provider/controller/store/room_search_store.dart';

class RoomSearchMobile extends StatefulWidget {
  const RoomSearchMobile({super.key});

  @override
  State<RoomSearchMobile> createState() => _RoomSearchMobileState();
}

class _RoomSearchMobileState extends State<RoomSearchMobile> {
  final RoomSearchReducer viewStore = Modular.get();

  late ScrollController _controller = ScrollController(initialScrollOffset: 1);

  bool showCenterTitle = false;

  @override
  void initState() {
    super.initState();

    viewStore.send(RoomSearchAction.onAppear());

    _controller = ScrollController(initialScrollOffset: 1);
    _controller.addListener(_scrollListener);
  }

  // Listening for user scroll on screen.
  void _scrollListener() {
    if (_controller.offset >= 65) {
      setState(() => showCenterTitle = true);
    } else {
      setState(() => showCenterTitle = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _controller,
        slivers: [
          SliverAppBar(
            surfaceTintColor: Colors.transparent,
            elevation: 0,
            stretch: true,
            pinned: true,
            leadingWidth: 100,
            title: AnimatedSwitcher(
              duration: Durations.medium1,
              child: showCenterTitle
                  ? Hero(
                      tag: "hero",
                      child: Text(
                        "Pesquisar quarto",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium! //
                            .copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    )
                  : Container(),
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
                          "Pesquisar quarto",
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
        ],
      ),
    );
  }
}
