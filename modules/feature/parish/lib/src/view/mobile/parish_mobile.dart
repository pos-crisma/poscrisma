import 'dart:ui';

import 'package:core/core.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ParishMobile extends StatelessWidget {
  ParishMobile({super.key});

  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: SystemMode.isDark(context)
                      ? Colors.black
                      : Colors.grey.shade200,
                  surfaceTintColor: Colors.transparent,
                  pinned: true,
                  elevation: 0,
                  leadingWidth: 66,
                  leading: CupertinoButton(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    onPressed: () => Modular.to.pop(),
                    child: Icon(
                      CupertinoIcons.clear_thick_circled,
                      color: SystemMode.isDark(context)
                          ? Colors.white
                          : Colors.black,
                      size: 26,
                    ),
                  ),
                ),
                const SliverPadding(
                    padding: EdgeInsets.symmetric(vertical: 12)),
                SliverToBoxAdapter(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Vamos criar a', // TODO: move to i18n
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge! //
                                  .copyWith(
                                    fontWeight: FontWeight.w400,
                                    // color: Colors.white,
                                  ),
                            ),
                            Text(
                              ' Paroquia', // TODO: move to i18n
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium! //
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: SystemMode.isDark(context)
                                        ? Colors.deepPurple.shade200
                                        : Colors.deepPurple.shade900,
                                  ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Essa paroquia, sera a base de todos os acampamentos do poscrisma.', // TODO: move to i18n
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge! //
                              .copyWith(
                                  // color: Colors.white,
                                  // fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SliverPadding(padding: EdgeInsets.symmetric(vertical: 8)),
                SliverToBoxAdapter(
                  child: CustomTextFormField(
                    boxDecorationColor: SystemMode.isDark(context)
                        ? Colors.black
                        : Colors.grey.shade200,
                    autoFocus: true,
                    labelText: 'Criar nome da paroquia', // TODO: Move to i18n
                  ),
                ),
                const SliverPadding(padding: EdgeInsets.symmetric(vertical: 8)),
                SliverToBoxAdapter(
                  child: CustomTextFormField(
                    boxDecorationColor: SystemMode.isDark(context)
                        ? Colors.black
                        : Colors.grey.shade200,
                    autoFocus: true,
                    labelText: 'Endereço da paroquia', // TODO: Move to i18n
                  ),
                ),
                const SliverPadding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).padding.bottom,
            ),
            width: MediaQuery.of(context).size.width,
            child: CupertinoButton(
              color: Colors.deepPurple.shade300,
              borderRadius: BorderRadius.zero,
              pressedOpacity: 0.9,
              child: Text(
                'Proximo', // TODO: move to i18n
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge! //
                    .copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              ),
              onPressed: () => Modular.to.pushNamed('/invite/user'),
            ),
          )
        ],
      ),
    );
  }
}
