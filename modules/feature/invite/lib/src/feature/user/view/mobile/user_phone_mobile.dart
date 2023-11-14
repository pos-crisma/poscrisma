import 'package:core/core.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../store/action/user_mobile_action.dart';
import '../../store/user_mobile_reducer.dart';

class UserPhoneMobile extends StatelessWidget {
  const UserPhoneMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final viewStore = context.watch<UserMobileReducer>();

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  surfaceTintColor: Colors.transparent,
                  pinned: true,
                  elevation: 0,
                  leadingWidth: 66,
                  leading: CupertinoButton(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    onPressed: () => Modular.to.pop(),
                    child: Icon(
                      CupertinoIcons.arrow_left,
                      color: SystemMode.isDark(context)
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Seu convite e para jovem do acampamento', // TODO: move to i18n
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge! //
                              .copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Agora seu telefone', // TODO: move to i18n
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium! //
                              .copyWith(
                                  // fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 24),
                ),
                const SliverToBoxAdapter(
                  child: CustomTextFormField(
                    autoFocus: true,
                    labelText: 'Telefone', // TODO: Move to i18n
                  ),
                ),
              ],
            ),
          ),
          LayoutBuilder(
            builder: (context, constraints) => Container(
              width: constraints.maxWidth,
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).padding.bottom,
              ),
              child: CupertinoButton(
                minSize: 44,
                color: Colors.deepPurple.shade300,
                borderRadius: BorderRadius.zero,
                pressedOpacity: 0.9,
                onPressed: () => viewStore.send(
                  UserMobileAction.phoneButtonTapped(phone: ""),
                ),
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
