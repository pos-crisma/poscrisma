import 'package:core/core.dart';
import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../provider/controller/action/family_action.dart';
import '../../provider/controller/store/family_store.dart';

class FamilyMobile extends StatelessWidget {
  FamilyMobile({super.key});

  final FamilyReducer viewStore = Modular.get();

  @override
  Widget build(BuildContext context) {
    viewStore.send(FamilyAction.onAppear(context));

    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
      ),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              elevation: 0,
              leadingWidth: 50,
              leading: const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: CustomBackButton(
                  backIcon: CupertinoIcons.clear_thick_circled,
                  backTitle: "",
                ),
              ),
              actions: [
                CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: () =>
                      viewStore.send(FamilyAction.mascotButtonTapped()),
                  child: const Icon(
                    CupertinoIcons.person_add_solid,
                  ),
                ),
              ],
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
                        text: 'Sua ', // TODO: move to i18n
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
                            text: "Familia", // TODO: move to i18n
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
                      'Aqui você poderá ver a sua familia.', // TODO: move to i18n
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

            // * Send invite to partener
            ValueListenableBuilder(
              valueListenable: viewStore,
              builder: (context, value, child) {
                final user = value.user;
                if (user != null) {
                  if (user.family != null) {
                    final motherId = user.family?.motherId ?? "";
                    final fatherId = user.family?.fatherId ?? "";

                    if (fatherId == "") {
                      return SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          child: Column(
                            children: [
                              Text(
                                "Convide sua esposo",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium! //
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Row(
                                children: [
                                  Expanded(
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
                                      child: ValueListenableBuilder(
                                        valueListenable: viewStore,
                                        builder: (context, value, child) =>
                                            Text(
                                          value.invite != null
                                              ? "https://poscrisma.com.br/${value.invite?.inviteCode}"
                                              : "Erro ao gerar o invite",
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
                                  CupertinoButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () => viewStore.send(
                                      FamilyAction.inviteButtonTapped(),
                                    ),
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
                              )
                            ],
                          ),
                        ),
                      );
                    } else if (motherId == "") {
                      return SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          child: Column(
                            children: [
                              Text(
                                "Convide sua esposa",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium! //
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Row(
                                children: [
                                  Expanded(
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
                                      child: Text(
                                        "https://poscrisma.com.br/codigo_invite",
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
                                  GestureDetector(
                                    onTap: () => viewStore.send(
                                      FamilyAction.inviteButtonTapped(),
                                    ),
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
                                      child: const Icon(
                                        CupertinoIcons.tickets_fill,
                                        size: 26,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }
                  }
                }

                return const SliverToBoxAdapter();
              },
            ),

            // * Show Mother and Father
            ValueListenableBuilder(
              valueListenable: viewStore,
              builder: (context, value, child) {
                final user = value.user;

                if (user != null) {
                  final mother = user.family?.mother ?? "Ainda Não cadastrado";
                  final father = user.family?.father ?? "Ainda não cadastrado";

                  return SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Mãe: ', // TODO: move to i18n
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium! //
                                  .copyWith(
                                    color: ColorMode.setColor(
                                      context: context,
                                      light: Colors.black,
                                      dark: Colors.white,
                                    ),
                                  ),
                              children: [
                                TextSpan(
                                  text: mother,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge! //
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
                          RichText(
                            text: TextSpan(
                              text: 'Pai: ', // TODO: move to i18n
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium! //
                                  .copyWith(
                                    color: ColorMode.setColor(
                                      context: context,
                                      light: Colors.black,
                                      dark: Colors.white,
                                    ),
                                  ),
                              children: [
                                TextSpan(
                                  text: father,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge! //
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
                        ],
                      ),
                    ),
                  );
                } else {
                  return const SliverToBoxAdapter();
                }
              },
            ),

            const SliverToBoxAdapter(
              child: SizedBox(height: 16),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Text(
                  "Lista seus filhos pequenos",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium! //
                      .copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),

            // * List young
            ValueListenableBuilder(
                valueListenable: viewStore,
                builder: (context, value, child) {
                  final user = value.user;
                  if (user != null) {
                    final family = user.family;
                    if (family != null) {
                      final childrens = family.childrens;
                      if (childrens != null) {
                        return SliverList.builder(
                          itemCount: childrens.length,
                          itemBuilder: (context, index) {
                            final young = childrens[index];

                            return Column(
                              children: [
                                ItemButton(
                                  onPress: () {},
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 8,
                                    ),
                                    width: MediaQuery.of(context).size.width,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            text: 'Nome: ',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium! //
                                                .copyWith(
                                                  color: ColorMode.setColor(
                                                    context: context,
                                                    light: Colors.black,
                                                    dark: Colors.white,
                                                  ),
                                                ),
                                            children: [
                                              TextSpan(
                                                text: young.name,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyLarge! //
                                                    .copyWith(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorMode.setColor(
                                                        context: context,
                                                        light: Colors.deepPurple
                                                            .shade900,
                                                        dark: Colors.deepPurple
                                                            .shade200,
                                                      ),
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            text: 'Idade: ',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium! //
                                                .copyWith(
                                                  color: ColorMode.setColor(
                                                    context: context,
                                                    light: Colors.black,
                                                    dark: Colors.white,
                                                  ),
                                                ),
                                            children: [
                                              TextSpan(
                                                text: young.age.toString(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyLarge! //
                                                    .copyWith(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorMode.setColor(
                                                        context: context,
                                                        light: Colors.deepPurple
                                                            .shade900,
                                                        dark: Colors.deepPurple
                                                            .shade200,
                                                      ),
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            text: 'Participa: ',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium! //
                                                .copyWith(
                                                  color: ColorMode.setColor(
                                                    context: context,
                                                    light: Colors.black,
                                                    dark: Colors.white,
                                                  ),
                                                ),
                                            children: [
                                              TextSpan(
                                                text: young.joinGames
                                                    ? "Participa"
                                                    : "Não participa",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyLarge! //
                                                    .copyWith(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorMode.setColor(
                                                        context: context,
                                                        light: Colors.deepPurple
                                                            .shade900,
                                                        dark: Colors.deepPurple
                                                            .shade200,
                                                      ),
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                (index + 1) == childrens.length
                                    ? Container()
                                    : const CustomDivider(),
                              ],
                            );
                          },
                        );
                      }
                    }
                  }

                  return const SliverToBoxAdapter();
                })
          ],
        ),
      ),
    );
  }
}
