import 'package:core/core.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../provider/controller/action/room_action.dart';
import '../../provider/controller/store/room_store.dart';

class RoomMobile extends StatelessWidget {
  RoomMobile({super.key});

  final RoomReducer viewStore = Modular.get();

  @override
  Widget build(BuildContext context) {
    viewStore.send(RoomAction.onAppear());

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            surfaceTintColor: Colors.transparent,
            elevation: 0,
            stretch: true,
            leadingWidth: 100,
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
                child: ValueListenableBuilder(
                  valueListenable: viewStore,
                  builder: (context, value, _) => Image(
                    image: value.image,
                    fit: BoxFit.cover,
                  ),
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
