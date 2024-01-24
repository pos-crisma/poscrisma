import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../provider/action/list_punish_action.dart';
import '../provider/store/list_punish_store.dart';

class ListPunish extends StatefulWidget {
  const ListPunish({super.key});

  @override
  State<ListPunish> createState() => _ListPunishState();
}

class _ListPunishState extends State<ListPunish> {
  late final ListPunishStore viewStore;
  @override
  void initState() {
    super.initState();
    viewStore = ListPunishStore(context);
    viewStore.send(const ListPunishAction.onAppear());
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
        body: CustomScrollView(
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
                        text: 'Visualizar ', // TODO: move to i18n
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
                            text: "Punições", // TODO: move to i18n
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
                      'Aqui você poderá visualizar as punições individual ou em grupo.',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),

            // *
            SliverToBoxAdapter(
              child: SizedBox(height: 8),
            ),

            ValueListenableBuilder(
              valueListenable: viewStore,
              builder: (context, value, child) {
                return SliverList.builder(
                  itemCount: value.listPunish.length,
                  itemBuilder: (context, index) {
                    final punishRef = value.listPunish[index];
                    final punish = value.listPunish[index].data()!;
                    return CupertinoListTile.notched(
                      onTap: () => viewStore.send(
                        ListPunishAction.markDone(punishRef.id, !punish.done),
                      ),
                      leading: Icon(
                        punish.done
                            ? CupertinoIcons.bookmark_fill
                            : CupertinoIcons.bookmark,
                      ),
                      title: const Text(
                        "Visualizar punição",
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(punish.justifyPunish ?? ""),
                          RichText(
                            text: TextSpan(
                              text: "Criado por: ",
                              style: TextStyle(
                                color: Colors.grey.shade500,
                              ),
                              children: [
                                TextSpan(
                                  text: punish.createBy,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.shade500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: "Pessoas punidas: ",
                              style: TextStyle(
                                color: Colors.grey.shade500,
                              ),
                              children: [
                                TextSpan(
                                  text: "\n${punish.punish.map((e) => e.name)}"
                                      .replaceAll("(", "")
                                      .replaceAll(")", ""),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.shade500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: "Feito: ",
                              style: TextStyle(
                                color: Colors.grey.shade500,
                              ),
                              children: [
                                TextSpan(
                                  text: punish.done ? "Feito" : "Não realizado",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.shade500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
