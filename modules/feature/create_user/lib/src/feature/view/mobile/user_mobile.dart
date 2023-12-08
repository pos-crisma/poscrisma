import 'package:core/core.dart';
import 'package:create_user/src/feature/provider/controller/state/user_mobile_state.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../provider/controller/action/user_mobile_action.dart';
import '../../provider/controller/store/user_mobile_reducer.dart';
import '../../provider/model/user_type.dart';

class UserMobile extends StatefulWidget {
  final UserType type;
  final String parishId;
  final String spenderId;

  const UserMobile({
    super.key,
    required this.type,
    required this.parishId,
    required this.spenderId,
  });

  @override
  State<UserMobile> createState() => _UserMobileState();
}

class _UserMobileState extends State<UserMobile> {
  final UserMobileReducer viewStore = Modular.get();

  @override
  void initState() {
    super.initState();

    viewStore.send(
      UserMobileAction.onAppear(
        widget.parishId,
        widget.spenderId,
        widget.type,
      ),
    );
  }

  @override
  void dispose() {
    viewStore.dispose();
    super.dispose();
  }

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
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    onPressed: () =>
                        viewStore.send(UserMobileAction.backTapped()),
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
                        ValueListenableBuilder(
                          valueListenable: viewStore,
                          builder: (context, value, child) {
                            if (value.type != null) {
                              final type = value.type;
                              final result = switch (type) {
                                UserType.GodParent => 'Padrinho',
                                UserType.Voluntary => 'Voluntarios',
                                UserType.Young => 'Jovens',
                                _ => 'Jovens',
                              };

                              return Text(
                                'Seu convite e para $result do acampamento', // TODO: move to i18n
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge! //
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              );
                            } else {
                              return Container();
                            }
                          },
                        ),
                        const SizedBox(height: 16),
                        ValueListenableBuilder(
                          valueListenable: viewStore,
                          builder: (context, value, child) {
                            return Text(
                              value.pageViewer.text,
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium! //
                                  .copyWith(
                                      // fontWeight: FontWeight.bold,
                                      ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                const SliverPadding(padding: EdgeInsets.symmetric(vertical: 8)),
                SliverToBoxAdapter(
                  child: ValueListenableBuilder(
                    valueListenable: viewStore,
                    builder: (context, value, child) => CustomTextFormField(
                      focusNote: value.onFocus,
                      controller: value.textEditingController,
                      keyboardType: switch (value.pageViewer) {
                        PageViewer.email => TextInputType.emailAddress,
                        PageViewer.name => TextInputType.name,
                        PageViewer.nickname => TextInputType.text,
                        PageViewer.phone => TextInputType.phone,
                        PageViewer.medicalRecords => TextInputType.multiline,
                      },
                      maxLine: switch (value.pageViewer) {
                        PageViewer.email => 1,
                        PageViewer.name => 1,
                        PageViewer.nickname => 1,
                        PageViewer.phone => 1,
                        PageViewer.medicalRecords => null,
                      },
                      boxDecorationColor: SystemMode.isDark(context)
                          ? Colors.black
                          : Colors.grey.shade200,
                      labelText: value.pageViewer.inputText,
                    ),
                  ),
                ),
                const SliverPadding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: ValueListenableBuilder(
                      valueListenable: viewStore,
                      builder: (context, value, child) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            value.pageViewer.tipTitle,
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          const SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              value.pageViewer.tipContent,
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
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ValueListenableBuilder(
            valueListenable: viewStore,
            builder: (context, value, child) => AnimatedOpacity(
              opacity: value.onFocus.hasFocus ? 0 : 1,
              duration: Durations.medium1,
              child: const Divider(thickness: 0.2),
            ),
          ),
          LayoutBuilder(
            builder: (context, constraints) => Container(
              width: constraints.maxWidth,
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).padding.bottom,
              ),
              child: ValueListenableBuilder(
                valueListenable: viewStore,
                builder: (context, value, child) {
                  return AnimatedButton(
                    isFocus: value.onFocus.hasFocus,
                    // isDisabled: value.status == InviteServiceStatus.loading,
                    onPress: () =>
                        viewStore.send(UserMobileAction.handlerTapped()),
                    enableColor: Colors.deepPurple.shade300,
                    disableColor: SystemMode.isDark(context)
                        ? Colors.deepPurple.shade500
                        : Colors.deepPurple.shade100,
                    disabledChild: const CircularProgressIndicator.adaptive(),
                    child: Text(
                      'Proximo',
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
