import 'dart:async';

import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RoomTypeMobile extends StatefulWidget {
  const RoomTypeMobile({super.key});

  @override
  State<RoomTypeMobile> createState() => _RoomTypeMobileState();
}

class _RoomTypeMobileState extends State<RoomTypeMobile> {
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
    } else if ((now.hour >= 16 && now.hour < 20)) {
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
                child: Image(
                  image: _currentImage,
                  fit: BoxFit.cover,
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
