import 'package:core/core.dart';
import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

import '../../provider/controller/action/family_group_action.dart';
import '../../provider/controller/store/family_group_store.dart';

class FamilyGroupMobile extends StatelessWidget {
  FamilyGroupMobile({super.key});

  final FamilyGroupReducer viewStore = Modular.get();

  @override
  Widget build(BuildContext context) {
    viewStore.send(FamilyGroupAction.onAppear(context));

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
                      RichText(
                        text: TextSpan(
                          text: 'Seu ', // TODO: move to i18n
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
                              text: "Grupo", // TODO: move to i18n
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
                        'Aqui você poderá ver o seu grupo do poscrisma.', // TODO: move to i18n
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

              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () => viewStore.send(
                            FamilyGroupAction.inviteButtonTapped(),
                          ),
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
                        onPressed: () => viewStore.send(
                          FamilyGroupAction.inviteButtonTapped(),
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
                  ),
                ),
              ),

              const SliverToBoxAdapter(
                child: SizedBox(height: 4),
              ),

              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Text(
                    "Com o codigo copiado você pode enviar a seu jovem do grupo do poscrisma",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              const SliverToBoxAdapter(
                child: SizedBox(height: 4),
              ),

              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Text(
                    "O invite so pode ser usado por um jovem, cada um outro e gerado.",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium! //
                        .copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
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
                    "Lista os jovens do grupo",
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
                      final groups = family.groups;
                      if (groups != null) {
                        final group = groups.first.grupo;

                        return SliverList.builder(
                          itemCount: group.length,
                          itemBuilder: (context, index) {
                            final young = group[index];

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
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
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
                                                          color: ColorMode
                                                              .setColor(
                                                            context: context,
                                                            light: Colors
                                                                .deepPurple
                                                                .shade900,
                                                            dark: Colors
                                                                .deepPurple
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
                                                          color: ColorMode
                                                              .setColor(
                                                            context: context,
                                                            light: Colors
                                                                .deepPurple
                                                                .shade900,
                                                            dark: Colors
                                                                .deepPurple
                                                                .shade200,
                                                          ),
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            RichText(
                                              text: TextSpan(
                                                text: 'Data de nascimento: ',
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
                                                    text: young.birthdate
                                                        .toString(),
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyLarge! //
                                                        .copyWith(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: ColorMode
                                                              .setColor(
                                                            context: context,
                                                            light: Colors
                                                                .deepPurple
                                                                .shade900,
                                                            dark: Colors
                                                                .deepPurple
                                                                .shade200,
                                                          ),
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        // TODO:
                                        Container(
                                          padding: const EdgeInsets.all(4),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            color: ColorMode.setColor(
                                              context: context,
                                              light: Colors.grey.shade200,
                                              dark: Colors.grey.shade800,
                                            ),
                                          ),
                                          child: Text(
                                            "Inativo",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall!
                                                .copyWith(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                (index + 1) == group.length
                                    ? Container()
                                    : const Padding(
                                        padding: EdgeInsets.only(left: 16),
                                        child: CustomDivider(
                                          height: 0.5,
                                        ),
                                      ),
                              ],
                            );
                          },
                        );
                      }
                    }
                  }

                  return const SliverToBoxAdapter(
                    child: Text(
                      "Ainda não possui jovens cadastrados",
                    ),
                  );
                },
              ),

              const SliverToBoxAdapter(
                child: CustomDivider(),
              ),

              const SliverToBoxAdapter(
                child: SizedBox(height: 8),
              ),

              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Text(
                    "Lista os invites gerados com status",
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
                  final list = value.listInvite;
                  if (list != null) {
                    final invites = list.invites;
                    return SliverList.builder(
                      itemCount: invites.length,
                      itemBuilder: (context, index) {
                        
                        final invite = invites[index];

                        return Column(
                          children: [
                            ItemButton(
                              onPress: () => viewStore.send(
                                FamilyGroupAction.clipboardTapped(
                                    invite.inviteCode, true),
                              ),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 8,
                                ),
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            text: 'Codigo: ',
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
                                                text: invite.inviteCode,
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
                                            text: 'Tipo: ',
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
                                                text: invite.inviteType.name,
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
                                    // TODO:
                                    Container(
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: ColorMode.setColor(
                                          context: context,
                                          light: Colors.grey.shade200,
                                          dark: Colors.grey.shade800,
                                        ),
                                      ),
                                      child: Text(
                                        invite.status == InviteStatus.active
                                            ? "Ativo"
                                            : "Inativo",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall!
                                            .copyWith(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            (index + 1) == invites.length
                                ? Container()
                                : const Padding(
                                    padding: EdgeInsets.only(left: 16),
                                    child: CustomDivider(
                                      height: 0.5,
                                    ),
                                  ),
                          ],
                        );
                      },
                    );
                  }

                  return const SliverToBoxAdapter(
                    child: Text(
                      "Ainda não possui jovens cadastrados",
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
