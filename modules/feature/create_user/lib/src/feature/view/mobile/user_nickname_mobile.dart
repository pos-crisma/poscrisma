import 'package:core/core.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../store/action/user_mobile_action.dart';
import '../../store/user_mobile_reducer.dart';

class UserNicknameMobile extends StatelessWidget {
  const UserNicknameMobile({super.key});

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
                          'Vamos começar cadastrando o nome do usuario', // TODO: move to i18n
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
                SliverToBoxAdapter(
                  child: CustomTextFormField(
                    autoFocus: true,
                    boxDecorationColor: SystemMode.isDark(context)
                        ? Colors.black
                        : Colors.grey.shade200,
                    labelText: 'Nome do usuario', // TODO: Move to i18n
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 16),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nome do usuario pode ser nesse molde', // TODO: move to i18n
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'usuario123',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge! //
                              .copyWith(
                                fontWeight: FontWeight.w300,
                                color: Colors.grey.shade50,
                              ),
                        ),
                        Text(
                          'rodrigo.souza',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge! //
                              .copyWith(
                                fontWeight: FontWeight.w300,
                                color: Colors.grey.shade50,
                              ),
                        ),
                      ],
                    ),
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
                pressedOpacity: 0.85,
                alignment: Alignment.center,
                onPressed: () {
                  viewStore.send(
                    UserMobileAction.nicknameButtonTapped(nickname: ""),
                  );
                },
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
