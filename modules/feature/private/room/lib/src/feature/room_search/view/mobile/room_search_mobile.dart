import 'dart:async';

import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RoomSearchMobile extends StatefulWidget {
  const RoomSearchMobile({super.key});

  @override
  State<RoomSearchMobile> createState() => _RoomSearchMobileState();
}

class _RoomSearchMobileState extends State<RoomSearchMobile> {
  AssetImage _currentImage = roomDay;

  @override
  void initState() {
    super.initState();
    _updateImage();

    Timer.periodic(const Duration(minutes: 1), (Timer t) => _updateImage());
  }

  void _updateImage() {
    DateTime now = DateTime.now();
    AssetImage image = roomDay;

    if (now.hour >= 8 && now.hour < 17) {
      if (image != roomDay) {
        setState(() => _currentImage = roomDay);
      }
    } else if ((now.hour >= 17 && now.hour < 22) ||
        (now.hour >= 0 && now.hour < 8)) {
      if (image != roomDawn) {
        setState(() => _currentImage = roomDawn);
      }
    } else {
      if (image != roomMoon) {
        setState(() => _currentImage = roomMoon);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            elevation: 0,
            stretch: true,
            leadingWidth: 50,
            leading: const CustomBackButton(
              backIcon: CupertinoIcons.chevron_back,
              backTitle: "",
            ),
            expandedHeight: kIsWeb
                ? 300
                : Responsive.isSmallScreen(context)
                    ? 150
                    : 200,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: AnimatedSwitcher(
                duration: Durations.extralong1,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Image(
                    image: _currentImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
