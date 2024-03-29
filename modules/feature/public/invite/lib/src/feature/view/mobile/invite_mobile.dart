import 'package:core/core.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../provider/controller/action/invite_action.dart';
import '../../provider/controller/state/invite_state.dart';
import '../../provider/controller/store/invite_store.dart';

class InviteMobile extends StatelessWidget {
  const InviteMobile({
    super.key,
    required this.inviteCode,
    required this.viewStore,
  });

  final String inviteCode;
  final InviteReducer viewStore;

  @override
  Widget build(BuildContext context) {
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
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    onPressed: () => context.pop(),
                    child: Text(
                      'Fechar',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        Text(
                          'Voce possui um convite?',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge! //
                              .copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Tendo o convite voce poderar acessar ao acampamento do poscrisma',
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium! //
                              .copyWith(
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
                    focusNote: viewStore.value.onFocus,
                    controller: viewStore.value.textEditingController,
                    boxDecorationColor: SystemMode.isDark(context)
                        ? Colors.black
                        : Colors.grey.shade200,
                    labelText: 'Link do convite',
                  ),
                ),
                const SliverPadding(padding: EdgeInsets.symmetric(vertical: 8)),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Os convites devem ser parecidos',
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'hash589340',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium! //
                              .copyWith(
                                fontWeight: FontWeight.w300,
                                color: SystemMode.isDark(context)
                                    ? Colors.grey.shade50
                                    : Colors.grey.shade800,
                              ),
                        ),
                        Text(
                          'https://poscrisma/hash589340',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium! //
                              .copyWith(
                                fontWeight: FontWeight.w300,
                                color: SystemMode.isDark(context)
                                    ? Colors.grey.shade50
                                    : Colors.grey.shade800,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          AnimatedOpacity(
            opacity: View.of(context).viewInsets.bottom > 0.0 ? 0 : 1,
            duration: Durations.medium1,
            child: const Divider(
              thickness: 0.2,
              height: 1,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(
              top: 8,
              bottom: MediaQuery.of(context).padding.bottom == 0
                  ? View.of(context).viewInsets.bottom > 0.0
                      ? 0
                      : 8
                  : MediaQuery.of(context).padding.bottom,
            ),
            child: ValueListenableBuilder(
              valueListenable: viewStore,
              builder: (context, value, child) {
                return ValueListenableBuilder(
                  valueListenable: value.textEditingController,
                  builder: (context, textController, child) {
                    return AnimatedButton(
                      isFocus: View.of(context).viewInsets.bottom > 0.0,
                      isDisabled: textController.text.length > 3
                          ? value.status == InviteServiceStatus.loading
                          : true,
                      onPress: () =>
                          viewStore.send(const InviteAction.buttonTapped()),
                      enableColor: Colors.deepPurple.shade500,
                      disableColor: SystemMode.isDark(context)
                          ? Colors.deepPurple.shade300
                          : Colors.deepPurple.shade100,
                      disabledChild: value.status == InviteServiceStatus.loading
                          ? const CupertinoActivityIndicator()
                          : Text(
                              'Verifica convite',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium! //
                                  .copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                            ),
                      child: Text(
                        'Verifica convite',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium! //
                            .copyWith(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
