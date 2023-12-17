import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({super.key});

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  void initState() {
    super.initState();
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
                          onTap: () {
                            print('Settings!');
                          },
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
                          onTap: () {
                            print('Messages!');
                          },
                          child: const Icon(
                            CupertinoIcons.bell_solid,
                            color: Colors.white,
                          ),
                        ),

                        const SizedBox(width: 8),

                        InkWell(
                          onTap: () {
                            print('Generate ticket!');
                          },
                          child: const Icon(
                            CupertinoIcons.tickets_fill,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Olá, Cotonete',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge! //
                          .copyWith(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          //*
          const SliverPadding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            sliver: SliverToBoxAdapter(
              child: SizedBox(
                height: 100,
                // color: Colors.white,
                child: Text('Quartos'),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Divider(
              height: 1,
              color: SystemMode.isDark(context)
                  ? Colors.grey.shade900
                  : Colors.grey.shade100,
            ),
          ),

          //*
          const SliverPadding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            sliver: SliverToBoxAdapter(
              child: SizedBox(
                height: 100,
                // color: Colors.white,
                child: Text('Equipes'),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Divider(
              height: 1,
              color: SystemMode.isDark(context)
                  ? Colors.grey.shade900
                  : Colors.grey.shade100,
            ),
          ),

          //*
          const SliverPadding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            sliver: SliverToBoxAdapter(
              child: SizedBox(
                height: 100,
                // color: Colors.white,
                child: Text('Jogos'),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Divider(
              height: 1,
              color: SystemMode.isDark(context)
                  ? Colors.grey.shade900
                  : Colors.grey.shade100,
            ),
          ),

          //* Caso tenha a permissão de ver os jogos
          const SliverPadding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            sliver: SliverToBoxAdapter(
              child: SizedBox(
                height: 100,
                // color: Colors.white,
                child: Text('Tabelas de jogos'),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Divider(
              height: 1,
              color: SystemMode.isDark(context)
                  ? Colors.grey.shade900
                  : Colors.grey.shade100,
            ),
          ),

          //* Apenas se for Padrinho
          const SliverPadding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            sliver: SliverToBoxAdapter(
              child: SizedBox(
                height: 100,
                // color: Colors.white,
                child: Text('Mascotes'),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Divider(
              height: 1,
              color: SystemMode.isDark(context)
                  ? Colors.grey.shade900
                  : Colors.grey.shade100,
            ),
          ),

          //*
          const SliverPadding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            sliver: SliverToBoxAdapter(
              child: SizedBox(
                height: 100,
                // color: Colors.white,
                child: Text('Itens do acampamento'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
