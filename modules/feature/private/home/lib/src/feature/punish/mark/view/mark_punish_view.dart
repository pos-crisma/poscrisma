import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../provider/action/mark_punish_action.dart';
import '../provider/store/mark_punish_store.dart';

class MarkPunish extends StatefulWidget {
  const MarkPunish({super.key});

  @override
  State<MarkPunish> createState() => _MarkPunishState();
}

class _MarkPunishState extends State<MarkPunish> {
  late final MarkPunishStore viewStore;
  @override
  void initState() {
    super.initState();
    viewStore = MarkPunishStore(context);
    viewStore.send(const MarkPunishAction.onAppear());
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
      ),
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 100,
          leading: const CustomBackButton(),
        ),
        bottomNavigationBar: SizedBox(
          height: MediaQuery.of(context).padding.bottom + 58,
          child: Column(
            children: [
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
                    return AnimatedButton(
                      isFocus: View.of(context).viewInsets.bottom > 0.0,
                      isDisabled: value.isLoading,
                      onPress: () =>
                          viewStore.send(const MarkPunishAction.finishPunish()),
                      enableColor: Colors.deepPurple.shade300,
                      disableColor: SystemMode.isDark(context)
                          ? Colors.deepPurple.shade500
                          : Colors.deepPurple.shade100,
                      disabledChild: const CupertinoActivityIndicator(),
                      child: Text(
                        'Concluir',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium! //
                            .copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              // * Title
              SliverToBoxAdapter(
                child: Container(
                  alignment: Alignment.topCenter,
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Vamos ', // TODO: move to i18n
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge! //
                              .copyWith(
                                color: ColorMode.setColor(
                                  context: context,
                                  light: Colors.black,
                                  dark: Colors.white,
                                ),
                              ),
                          children: [
                            TextSpan(
                              text: "Punir", // TODO: move to i18n
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
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Aqui você poderá adicionar punições individual ou em grupo.',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),

              // *
              const SliverToBoxAdapter(
                child: SizedBox(height: 16),
              ),

              // *
              SliverToBoxAdapter(
                child: CustomTextFormField(
                  labelText: "Motivo da punição",
                  controller: viewStore.state.punishController,
                  focusNote: viewStore.state.punishFocus,
                  maxLine: null,
                  boxDecorationColor: SystemMode.isDark(context)
                      ? Colors.black
                      : Colors.grey.shade200,
                ),
              ),

              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: CustomDivider(),
                ),
              ),

              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "Encontrar pesquisa a ser punida:",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge! //
                        .copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),

              const SliverToBoxAdapter(
                child: SizedBox(height: 8),
              ),

              // *
              SliverToBoxAdapter(
                child: CustomTextFormField(
                  labelText: "Pesquisa pessoa",
                  controller: viewStore.state.filterController,
                  focusNote: viewStore.state.filterFocus,
                  boxDecorationColor: SystemMode.isDark(context)
                      ? Colors.black
                      : Colors.grey.shade200,
                ),
              ),

              const SliverToBoxAdapter(
                child: SizedBox(height: 8),
              ),

              // *

              ValueListenableBuilder(
                valueListenable: viewStore,
                builder: (context, value, child) {
                  final users = value.filterUser;
                  if (value.isLoading) {
                    return SliverToBoxAdapter(
                      child: Center(
                        child: Transform.scale(
                          scale: 1,
                          child: const CircularProgressIndicator.adaptive(),
                        ),
                      ),
                    );
                  }

                  if (users != null) {
                    return SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      sliver: SliverGrid.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 4,
                          crossAxisSpacing: 4,
                          childAspectRatio: 2.5,
                        ),
                        itemCount: users.length,
                        itemBuilder: (context, index) {
                          final user = users[index];

                          final isPunished = value.punishUser
                              .where((element) => element == user.userId)
                              .isNotEmpty;

                          return Container(
                            decoration: BoxDecoration(
                              color: isPunished
                                  ? ColorMode.setColor(
                                      context: context,
                                      light: Colors.deepPurple.shade200
                                          .withOpacity(0.3),
                                      dark: Colors.deepPurple.shade900
                                          .withOpacity(0.2),
                                    )
                                  : null,
                              border: isPunished
                                  ? Border.all(
                                      color: Colors.deepPurple.shade800,
                                    )
                                  : null,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: CupertinoListTile.notched(
                              onTap: () => isPunished
                                  ? viewStore.send(
                                      MarkPunishAction.removePunish(
                                        user.userId ?? "",
                                      ),
                                    )
                                  : viewStore.send(
                                      MarkPunishAction.markPunish(
                                        user.userId ?? "",
                                      ),
                                    ),
                              padding: const EdgeInsets.only(
                                left: 8,
                                top: 4,
                                bottom: 4,
                                right: 4,
                              ),
                              title: Text(
                                user.name ?? "",
                                style: TextStyle(
                                  color: ColorMode.setColor(
                                    context: context,
                                    light: Colors.black,
                                    dark: Colors.white,
                                  ),
                                ),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(user.typeUser?.text ?? ""),
                                  Text(user.gender?.text ?? ""),
                                ],
                              ),
                              trailing: isPunished
                                  ? Icon(
                                      CupertinoIcons.checkmark_alt,
                                      color: Colors.deepPurple.shade800,
                                    )
                                  : null,
                            ),
                          );
                        },
                      ),
                    );
                  }

                  return const SliverToBoxAdapter();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
