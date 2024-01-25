import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../provider/controller/action/families_action.dart';
import '../provider/controller/store/families_store.dart';

class FamiliesPage extends StatefulWidget {
  const FamiliesPage({super.key});

  @override
  State<FamiliesPage> createState() => _FamiliesPageState();
}

class _FamiliesPageState extends State<FamiliesPage> {
  late final FamiliesReducer viewStore;

  @override
  void initState() {
    super.initState();

    viewStore = FamiliesReducer(context);
    viewStore.send(const FamiliesAction.onAppear());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: RefreshIndicator(
          onRefresh: () => viewStore.send(const FamiliesAction.pullToRefresh()),
          child: CustomScrollView(
            slivers: [
              const SliverAppBar(
                leadingWidth: 100,
                leading: CustomBackButton(),
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
                          text: 'Ver ',
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
                              text: "Familias",
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
                        'Ver todas as familias que vai para o poscrisma com os jovens e mascotes.',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),

              // *

              ValueListenableBuilder(
                valueListenable: viewStore,
                builder: (context, value, child) {
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

                  if (value.families != null && value.families!.isNotEmpty) {
                    final families = value.families!;

                    return SliverList.builder(
                      itemCount: families.length,
                      itemBuilder: (context, index) {
                        final family = families[index];
                        return GestureDetector(
                          onTap: () => viewStore.send(
                            FamiliesAction.showMore(family),
                          ),
                          child: CupertinoListSection.insetGrouped(
                            backgroundColor: darkBackground,
                            header: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: "Padrinho: ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                          // fontWeight: FontWeight.bold,
                                          color: ColorMode.setColor(
                                            context: context,
                                            light: Colors.black,
                                            dark: Colors.white,
                                          ),
                                        ),
                                    children: [
                                      TextSpan(
                                        text: family.father ?? "Não convidado",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: ColorMode.setColor(
                                                context: context,
                                                light: Colors.black,
                                                dark: Colors.white,
                                              ),
                                            ),
                                      )
                                    ],
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: "Madrinha: ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                          // fontWeight: FontWeight.bold,
                                          color: ColorMode.setColor(
                                            context: context,
                                            light: Colors.black,
                                            dark: Colors.white,
                                          ),
                                        ),
                                    children: [
                                      TextSpan(
                                        text: family.mother ?? "Não convidado",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: ColorMode.setColor(
                                                context: context,
                                                light: Colors.black,
                                                dark: Colors.white,
                                              ),
                                            ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            children: [
                              CupertinoListTile.notched(
                                backgroundColor: ColorMode.setColor(
                                  context: context,
                                  light: Colors.black,
                                  dark: Colors.grey.shade800,
                                ),
                                title: Text(
                                  "Mascotes",
                                  style: TextStyle(
                                    color: ColorMode.setColor(
                                      context: context,
                                      light: Colors.black,
                                      dark: Colors.white,
                                    ),
                                  ),
                                ),
                                additionalInfo: Text(
                                  "${family.childrens?.length ?? 0}",
                                ),
                              ),
                              family.groups != null && family.groups!.isNotEmpty
                                  ? CupertinoListTile.notched(
                                      backgroundColor: ColorMode.setColor(
                                        context: context,
                                        light: Colors.black,
                                        dark: Colors.grey.shade800,
                                      ),
                                      title: Text(
                                        "Grupo",
                                        style: TextStyle(
                                          color: ColorMode.setColor(
                                            context: context,
                                            light: Colors.black,
                                            dark: Colors.white,
                                          ),
                                        ),
                                      ),
                                      additionalInfo: Text(
                                        "${family.groups?.first.grupo?.length ?? 0}",
                                      ),
                                    )
                                  : Container(),
                            ],
                          ),
                        );
                      },
                    );
                  }

                  return const SliverToBoxAdapter();
                },
              ),

              SliverToBoxAdapter(
                child: SizedBox(
                  height: MediaQuery.of(context).padding.bottom,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
