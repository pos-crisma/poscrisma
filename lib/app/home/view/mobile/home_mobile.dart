import 'dart:ui';

import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeMobile extends StatelessWidget {
  HomeMobile({super.key});

  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          SystemMode.isDark(context) ? Colors.grey.shade900 : Colors.white,
      body: CustomScrollView(
        controller: controller,
        slivers: [
          SliverAppBar(
            backgroundColor: SystemMode.isDark(context)
                ? Colors.deepPurple.shade700
                : Colors.deepPurple.shade300,
            forceElevated: false,
            pinned: true,
            elevation: 0,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: Stack(
                children: [
                  const Positioned.fill(
                    child: Image(
                      image: backgroundCastleTower,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).padding.top,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: Responsive.isSmallScreen(context) ? 8 : 16,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Inicio",
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.copyWith(
                                  color: Colors.white,
                                ),
                          ),
                          const Icon(
                            CupertinoIcons.bell_fill,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            expandedHeight: Responsive.isSmallScreen(context) ? 250 : 300,
            collapsedHeight: 0,
            toolbarHeight: 0,
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(8),
              height: 70,
              decoration: BoxDecoration(
                color: SystemMode.isDark(context)
                    ? Colors.deepPurple.shade700
                    : Colors.deepPurple.shade300,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GlassMorphism(
                    start: 0.3,
                    end: 0.6,
                    child: SizedBox(
                      width: 60,
                      height: 60,
                      child: Icon(
                        CupertinoIcons.alt,
                        size: 20,
                        color: SystemMode.isDark(context)
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                  GlassMorphism(
                    start: 0.3,
                    end: 0.6,
                    child: SizedBox(
                      width: 60,
                      height: 60,
                      child: Icon(
                        CupertinoIcons.alt,
                        size: 20,
                        color: SystemMode.isDark(context)
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                  GlassMorphism(
                    start: 0.3,
                    end: 0.6,
                    child: SizedBox(
                      width: 60,
                      height: 60,
                      child: Icon(
                        CupertinoIcons.alt,
                        size: 20,
                        color: SystemMode.isDark(context)
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                  GlassMorphism(
                    start: 0.3,
                    end: 0.6,
                    child: SizedBox(
                      width: 60,
                      height: 60,
                      child: Icon(
                        CupertinoIcons.alt,
                        size: 20,
                        color: SystemMode.isDark(context)
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 100,
              (context, index) {
                return ListTile(
                  title: Text(
                    "Item $index",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: SystemMode.isDark(context)
                              ? Colors.white
                              : Colors.black,
                        ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class GlassMorphism extends StatelessWidget {
  final Widget child;
  final double start;
  final double end;

  const GlassMorphism({
    Key? key,
    required this.child,
    required this.start,
    required this.end,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                SystemMode.isDark(context)
                    ? Colors.black.withOpacity(start)
                    : Colors.white.withOpacity(start),
                SystemMode.isDark(context)
                    ? Colors.black.withOpacity(end)
                    : Colors.white.withOpacity(end),
              ],
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            border: Border.all(
              width: 1,
              color: SystemMode.isDark(context)
                  ? Colors.black.withOpacity(0.7)
                  : Colors.white.withOpacity(0.7),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
