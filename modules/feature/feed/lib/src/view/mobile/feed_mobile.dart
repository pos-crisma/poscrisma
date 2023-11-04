import 'dart:ui';

import 'package:core/core.dart';
import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedMobile extends StatelessWidget {
  FeedMobile({super.key});

  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: controller,
        slivers: [
          // *
          SliverAppBar(
            forceElevated: false,
            pinned: true,
            elevation: 0,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: Stack(
                children: [
                  // * Image background Viewer
                  const Positioned.fill(
                    child: Image(
                      image: backgroundCastleTower,
                      fit: BoxFit.cover,
                    ),
                  ),

                  // * Header Viewer
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
                            "Inicio", // TODO: Move to i18n
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge! //
                                .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          CupertinoButton(
                            padding: EdgeInsets.zero,
                            onPressed: () => Modular.to.pushNamed('/invite/'),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                color: SystemMode.isDark(context)
                                    ? Colors.grey.shade900.withOpacity(0.3)
                                    : Colors.grey.shade300.withOpacity(0.3),
                                child: BackdropFilter(
                                  filter:
                                      ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                                  child: const Icon(
                                    CupertinoIcons.envelope_fill,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // * Bottom Viewer
                  Positioned(
                    bottom: 0,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: Responsive.isSmallScreen(context) //
                            ? 8
                            : 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 4,
                                horizontal: 8,
                              ),
                              decoration: BoxDecoration(
                                color: SystemMode.isDark(context)
                                    ? Colors.grey.shade900.withOpacity(0.3)
                                    : Colors.grey.shade300.withOpacity(0.3),
                              ),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaX: 30,
                                  sigmaY: 30,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "2023", // TODO: Move to i18n
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge! //
                                          .copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Text(
                                      "Acampamento poscrisma", // TODO: Move to i18n
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge! //
                                          .copyWith(
                                            color: Colors.white,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // * Center Viewer
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: CupertinoButton(
                          pressedOpacity: 0.8,
                          padding: EdgeInsets.zero,
                          onPressed: () => Modular.to.pushNamed('/auth/'),
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: SystemMode.isDark(context)
                                  ? Colors.grey.shade900.withOpacity(0.3)
                                  : Colors.grey.shade300.withOpacity(0.3),
                            ),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 5,
                                sigmaY: 5,
                              ),
                              child: const Icon(
                                CupertinoIcons.play_fill,
                                size: 60,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            expandedHeight: Responsive.isSmallScreen(context) ? 250 : 500,
            collapsedHeight: 0,
            toolbarHeight: 0,
          ),

          // *
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: Responsive.isSmallScreen(context) ? 8 : 16,
                vertical: 8,
              ),
              child: Text(
                "Principais", // TODO: Move to i18n
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge! //
                    .copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
              ),
            ),
          ),

          // *
          SliverToBoxAdapter(
            child: SizedBox(
              height: 200,
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1.0,
                  viewportFraction: 0.92,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  autoPlay: false,
                  scrollDirection: Axis.horizontal,
                ),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      // TODO: Create Card to Carousel
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          color: SystemMode.isDark(context) //
                              ? darkCardBackground
                              : lightCardBackground,
                        ),
                        child: Text(
                          'text $i',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
          ),

          // * Box Header
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: Responsive.isSmallScreen(context) ? 8 : 16,
                vertical: 8,
              ),
              child: Text(
                "Noticias", // TODO: Move to i18n
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge! //
                    .copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
              ),
            ),
          ),

          // * Box List
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 10,
              (context, index) {
                // TODO: Create card to show noticies
                return ListTile(
                  title: Text(
                    "Item $index",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                );
              },
            ),
          ),

          // * Bottom Space
          const SliverToBoxAdapter(
            child: SizedBox(height: 30),
          )
        ],
      ),
    );
  }
}
