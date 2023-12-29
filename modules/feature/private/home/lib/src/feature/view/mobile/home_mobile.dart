import 'package:core/core.dart';
import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../provider/controller/action/home_action.dart';
import '../../provider/controller/store/home_store.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({super.key});

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  final HomeReducer viewStore = Modular.get();

  @override
  void initState() {
    super.initState();

    viewStore.send(HomeAction.onAppear());
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.deepPurpleAccent,
      ),
    );

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // * Header
          SliverAppBar(
            forceElevated: false,
            pinned: true,
            elevation: 0,
            stretch: true,
            backgroundColor: Colors.deepPurple.shade400,
            expandedHeight: 0,
            collapsedHeight: 0,
            toolbarHeight: 0,
          ),

          //*
          SliverToBoxAdapter(
            child: Container(
              color: Colors.deepPurple.shade400,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () => Modular.to.pushNamed('/setting/'),
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.deepPurple.shade300,
                            ),
                            child: const Icon(
                              Icons.settings,
                              color: Colors.white,
                            ),
                          ),
                        ),

                        // *
                        const Spacer(),

                        //*
                        InkWell(
                          onTap: () {},
                          child: const Icon(
                            CupertinoIcons.bell_solid,
                            color: Colors.white,
                          ),
                        ),

                        const SizedBox(width: 8),

                        InkWell(
                          onTap: () =>
                              Modular.to.pushNamed('/generate_invite/'),
                          child: const Icon(
                            CupertinoIcons.tickets_fill,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    ValueListenableBuilder(
                      valueListenable: viewStore,
                      builder: (context, value, child) => RichText(
                        text: TextSpan(
                          text: 'Olá, ',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge! //
                              .copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                          children: [
                            TextSpan(
                              text: value.user?.nickName ?? 'Carregando ...',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    ComplexButton(
                      text: 'Crie sua familia',
                      iconData: CupertinoIcons.person_crop_circle_badge_plus,
                      light: Colors.grey.shade200,
                      dark: Colors.grey.shade800,
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ),
          ),

          //* Room
          SliverToBoxAdapter(
            child: Column(
              children: [
                ItemButton(
                  onPress: () => Modular.to.pushNamed('/room/'),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return Container(
                        // alignment: Alignment.centerLeft,
                        width: constraints.maxWidth,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Todos quartos",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: 'Total de quartos usados: ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(),
                                      children: [
                                        TextSpan(
                                          text: '45',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 24,
                              color: Colors.grey.shade800,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LayoutBuilder(
                          builder: (context, constraints) => AnimatedButton(
                            padding: EdgeInsets.zero,
                            innerPadding: EdgeInsets.zero,
                            onPress: () => Modular.to.pushNamed('/room/type'),
                            disabledChild: Container(),
                            enableColor: Colors.transparent,
                            child: SizedBox(
                              width: 100,
                              height: constraints.maxHeight,
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: ColorMode.setColor(
                                          context: context,
                                          light: Colors.grey.shade300,
                                          dark: Colors.grey.shade800,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Padrinho",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: ColorMode.setColor(
                                            context: context,
                                            light: Colors.black,
                                            dark: Colors.white,
                                          ),
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        LayoutBuilder(
                          builder: (context, constraints) => AnimatedButton(
                            padding: EdgeInsets.zero,
                            innerPadding: EdgeInsets.zero,
                            onPress: () => Modular.to.pushNamed('/room/type'),
                            disabledChild: Container(),
                            enableColor: Colors.transparent,
                            child: SizedBox(
                              width: 100,
                              height: constraints.maxHeight,
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: ColorMode.setColor(
                                          context: context,
                                          light: Colors.grey.shade300,
                                          dark: Colors.grey.shade800,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Jovem",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: ColorMode.setColor(
                                            context: context,
                                            light: Colors.black,
                                            dark: Colors.white,
                                          ),
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        LayoutBuilder(
                          builder: (context, constraints) => AnimatedButton(
                            padding: EdgeInsets.zero,
                            innerPadding: EdgeInsets.zero,
                            onPress: () => Modular.to.pushNamed('/room/type'),
                            disabledChild: Container(),
                            enableColor: Colors.transparent,
                            child: SizedBox(
                              width: 100,
                              height: constraints.maxHeight,
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: ColorMode.setColor(
                                          context: context,
                                          light: Colors.grey.shade300,
                                          dark: Colors.grey.shade800,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Voluntarios",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: ColorMode.setColor(
                                            context: context,
                                            light: Colors.black,
                                            dark: Colors.white,
                                          ),
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: ComplexButton(
                    onPress: () => Modular.to.pushNamed('/room/search'),
                    text: "Pesquisar quarto",
                    iconData: CupertinoIcons.search,
                    light: Colors.grey.shade300,
                    dark: Colors.grey.shade800,
                    showIsNew: false,
                  ),
                ),
              ],
            ),
          ),

          const SliverToBoxAdapter(
            child: CustomDivider(),
          ),

          //*
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Text(
                    'Acampamento',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge! //
                        .copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                const SizedBox(height: 8),

                // ? Events camp area
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: ComplexButton(
                    onPress: () => Modular.to.pushNamed('/team/'),
                    text: "Equipes",
                    iconData: CupertinoIcons.group_solid,
                    light: Colors.grey.shade300,
                    dark: Colors.grey.shade800,
                    showIsNew: false,
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  child: Text(
                    'Eventos',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge! //
                        .copyWith(
                            // fontWeight: FontWeight.bold,
                            ),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: ComplexButton(
                    onPress: () => Modular.to.pushNamed('/team/'),
                    text: "Pesquisar Jogos",
                    iconData: CupertinoIcons.gamecontroller_alt_fill,
                    light: Colors.grey.shade300,
                    dark: Colors.grey.shade800,
                    showIsNew: false,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: ComplexButton(
                    onPress: () => Modular.to.pushNamed('/schedule/'),
                    text: "Tabela de jogos",
                    iconData: CupertinoIcons.calendar,
                    light: Colors.grey.shade300,
                    dark: Colors.grey.shade800,
                    showIsNew: false,
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),

          const SliverToBoxAdapter(
            child: CustomDivider(),
          ),

          //*
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    // color: Colors.white,
                    child: Text(
                      'Itens do acampamento',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge! //
                          .copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ComplexButton(
                      onPress: () => Modular.to.pushNamed('/warehouse/'),
                      text: "Almoxarifado",
                      iconData: CupertinoIcons.cube_box_fill,
                      light: Colors.grey.shade300,
                      dark: Colors.grey.shade800,
                      showIsNew: false,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
