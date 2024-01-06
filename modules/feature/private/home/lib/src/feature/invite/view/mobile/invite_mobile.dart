// import 'package:core/core.dart';
import 'package:core/core.dart';
import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../provider/controller/action/invite_action.dart';
import '../../provider/controller/store/invite_store.dart';

class InviteMobile extends StatelessWidget {
  InviteMobile({super.key});

  final InviteReducer viewStore = Modular.get();

  @override
  Widget build(BuildContext context) {
    viewStore.send(InviteAction.onAppear(context));

    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
      ),
      child: Scaffold(
        body: CustomScrollView(
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
                    RichText(
                      text: TextSpan(
                        text: 'Gerar ', // TODO: move to i18n
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
                            text: "Convite", // TODO: move to i18n
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
                    Text(
                      'Aqui você poderá gerar convite aos padrinhos e voluntarios.', // TODO: move to i18n
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
              child: SizedBox(height: 16),
            ),

            // * Selected invite type
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ValueListenableBuilder(
                  valueListenable: viewStore,
                  builder: (context, value, _) {
                    return CustomSlidingSegmentedControl<int>(
                      fromMax: true,
                      isStretch: true,
                      padding: 16,
                      initialValue: value.inviteSelector,
                      children: {
                        1: Text(
                          'Padrinho',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium! //
                              .copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        2: Text(
                          'Voluntario',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium! //
                              .copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        3: Text(
                          'Jovem',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium! //
                              .copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      },
                      innerPadding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: ColorMode.setColor(
                          context: context,
                          light: CupertinoColors.lightBackgroundGray,
                          dark: CupertinoColors.darkBackgroundGray,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      thumbDecoration: BoxDecoration(
                        color: ColorMode.setColor(
                          context: context,
                          light: Colors.grey.shade100,
                          dark: Colors.grey.shade900,
                        ),
                        borderRadius: BorderRadius.circular(6),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.3),
                            blurRadius: 4.0,
                            spreadRadius: 1.0,
                            offset: const Offset(
                              0.0,
                              2.0,
                            ),
                          ),
                        ],
                      ),
                      duration: Durations.medium4,
                      curve: Curves.easeInToLinear,
                      onValueChanged: (v) =>
                          viewStore.send(InviteAction.inviteSelector(v)),
                    );
                  },
                ),
              ),
            ),

            const SliverToBoxAdapter(
              child: SizedBox(height: 8),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () =>
                            viewStore.send(InviteAction.inviteButtonTapped()),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                            ),
                            color: ColorMode.setColor(
                              context: context,
                              light: Colors.grey.shade300,
                              dark: Colors.black,
                            ),
                          ),
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(
                            left: 16,
                          ),

                          // ? https://poscrisma.com.br/value.invite?.inviteCode
                          child: ValueListenableBuilder(
                            valueListenable: viewStore,
                            builder: (context, value, child) => Text(
                              value.invite != null
                                  ? value.invite?.inviteCode ??
                                      "Erro ao gerar o codigo"
                                  : "Clique para gerar o convite!",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall! //
                                  .copyWith(
                                    color: ColorMode.setColor(
                                      context: context,
                                      light: Colors.grey.shade900,
                                      dark: Colors.grey.shade50,
                                    ),
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () =>
                          viewStore.send(InviteAction.inviteButtonTapped()),
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                          color: Colors.deepPurple.shade700,
                        ),
                        child: Icon(
                          CupertinoIcons.doc_on_clipboard_fill,
                          size: 26,
                          color: Colors.grey.shade200,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: MergeSemantics(
                child: ListTile(
                  title: Text(
                    'Selecione caso for convidado',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium! //
                        .copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  trailing: ValueListenableBuilder(
                    valueListenable: viewStore,
                    builder: (context, value, child) {
                      return CupertinoSwitch(
                        value: value.isGuest,
                        onChanged: (_) =>
                            viewStore.send(InviteAction.inviteIsGuest()),
                      );
                    },
                  ),
                  onTap: () => viewStore.send(InviteAction.inviteIsGuest()),
                ),
              ),
            ),

            // *
            // ValueListenableBuilder(
            //   valueListenable: viewStore,
            //   builder: (context, value, child) {
            //     return const SliverToBoxAdapter();
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
