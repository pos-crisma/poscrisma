import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationMobile extends StatelessWidget {
  const NotificationMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
      ),
      child: Scaffold(
        body: SafeArea(
            child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              pinned: true,
              elevation: 0,
              leadingWidth: 50,
              leading: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: CustomBackButton(
                  backIcon: CupertinoIcons.clear_thick_circled,
                  backTitle: "",
                ),
              ),
            ),

            // * Title
            SliverToBoxAdapter(
              child: Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: [
                    Text(
                      "Notificação", // TODO: move to i18n
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium! //
                          .copyWith(
                            fontWeight: FontWeight.bold,
                            color: ColorMode.setColor(
                              context: context,
                              light: Colors.deepPurple.shade900,
                              dark: Colors.deepPurple.shade200,
                            ),
                          ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Lista as notificações que você recebe.', // TODO: move to i18n
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge! //
                          .copyWith(),
                    ),
                  ],
                ),
              ),
            ),

            const SliverToBoxAdapter(
              child: SizedBox(height: 8),
            ),

            SliverToBoxAdapter(
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: ColorMode.setColor(
                        context: context,
                        light: Colors.grey.shade200,
                        dark: Colors.grey.shade800,
                      ),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Text(
                    "Em desenvolvimento",
                  ),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
