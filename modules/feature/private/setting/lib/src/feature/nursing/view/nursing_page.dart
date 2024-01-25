import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../provider/controller/action/nursing_action.dart';
import '../provider/controller/store/nursing_store.dart';

class NursingPage extends StatefulWidget {
  const NursingPage({super.key});

  @override
  State<NursingPage> createState() => _NursingPageState();
}

class _NursingPageState extends State<NursingPage> {
  late final NursingReducer viewStore;

  @override
  void initState() {
    super.initState();

    viewStore = NursingReducer(context);
    viewStore.send(const NursingAction.onAppear());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        leading: const CustomBackButton(),
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
                        text: 'Área da ',
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
                            text: "Enfermaria",
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
                      'Aqui você poderá ver as marcações de doenças é pesquisar a pessoa para ter essa informação.',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),

            const SliverToBoxAdapter(
              child: SizedBox(height: 16),
            ),

            // *
            SliverPersistentHeader(
              pinned: true,
              delegate: _SliverSecondAppBarDelegate(
                viewStore: viewStore,
              ),
              floating: true,
            ),

            const SliverToBoxAdapter(
              child: SizedBox(height: 16),
            ),

            ValueListenableBuilder(
              valueListenable: viewStore,
              builder: (context, value, child) {
                final list = value.filterUsers;

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

                if (list != null) {
                  return SliverList.builder(
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      final user = list[index];
                      return CupertinoListTile.notched(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                ),
                                child: Scaffold(
                                  appBar: AppBar(
                                    leadingWidth: 50,
                                    leading: const Padding(
                                      padding: EdgeInsets.only(left: 16.0),
                                      child: CustomBackButton(
                                        backIcon:
                                            CupertinoIcons.clear_circled_solid,
                                        backTitle: "",
                                      ),
                                    ),
                                    title: Text(
                                      "Dados pessoais",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                  body: CustomScrollView(
                                    slivers: [
                                      // * Title
                                      SliverToBoxAdapter(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 16.0,
                                          ),
                                          child: Text(
                                            user.name ?? "",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleLarge!
                                                .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                      ),

                                      const SliverToBoxAdapter(
                                        child: SizedBox(height: 8),
                                      ),

                                      SliverToBoxAdapter(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 16.0,
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                              text: "Genero: ",
                                              style: const TextStyle(),
                                              children: [
                                                TextSpan(
                                                  text: user.gender != null
                                                      ? user.gender!.text
                                                      : "",
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),

                                      const SliverToBoxAdapter(
                                        child: SizedBox(height: 8),
                                      ),

                                      SliverToBoxAdapter(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 16.0,
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                              text: "Tipo: ",
                                              style: const TextStyle(),
                                              children: [
                                                TextSpan(
                                                  text: user.typeUser != null
                                                      ? user.typeUser!.text
                                                      : "",
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),

                                      const SliverToBoxAdapter(
                                        child: SizedBox(height: 8),
                                      ),

                                      SliverToBoxAdapter(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 16.0,
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                              text: "Idade: ",
                                              style: const TextStyle(),
                                              children: [
                                                TextSpan(
                                                  text: user.age.toString(),
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),

                                      const SliverToBoxAdapter(
                                        child: SizedBox(height: 8),
                                      ),

                                      // * Medical
                                      SliverToBoxAdapter(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 16.0,
                                          ),
                                          child: CupertinoListTile.notched(
                                            padding: EdgeInsets.zero,
                                            title: Text(
                                              "Problemas medicos:",
                                              style: TextStyle(
                                                color: ColorMode.setColor(
                                                  context: context,
                                                  light: Colors.grey.shade400,
                                                  dark: Colors.grey.shade300,
                                                ),
                                              ),
                                            ),
                                            subtitle: Text(
                                              user.medicalRecord == null
                                                  ? "Não possui ou não informado"
                                                  : user.medicalRecord!
                                                              .trim() ==
                                                          ""
                                                      ? "Não possui ou não informado"
                                                      : user.medicalRecord!,
                                              maxLines: 4,
                                              style: TextStyle(
                                                color: ColorMode.setColor(
                                                  context: context,
                                                  light: Colors.grey.shade400,
                                                  dark: Colors.grey.shade300,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                        subtitle: Text(
                          user.medicalRecord == null
                              ? "Não possui ou não informado"
                              : user.medicalRecord!.trim() == ""
                                  ? "Não possui ou não informado"
                                  : user.medicalRecord!,
                          style: TextStyle(
                            color: ColorMode.setColor(
                              context: context,
                              light: Colors.grey.shade400,
                              dark: Colors.grey.shade300,
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }

                return const SliverToBoxAdapter();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _SliverSecondAppBarDelegate extends SliverPersistentHeaderDelegate {
  final NursingReducer viewStore;

  _SliverSecondAppBarDelegate({required this.viewStore});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return CustomTextFormField(
      controller: viewStore.state.filterUserController,
      focusNote: viewStore.state.filterUserFocus,
      labelText: "Pesquisar pelo nome ou parte",
      boxDecorationColor: ColorMode.setColor(
        context: context,
        light: Colors.grey.shade200,
        dark: Colors.black,
      ),
    );
  }

  @override
  double get maxExtent => 64.0;

  @override
  double get minExtent => 64.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
