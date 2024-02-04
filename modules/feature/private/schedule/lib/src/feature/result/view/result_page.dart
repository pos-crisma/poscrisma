import 'package:design/color/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../provider/action/result_action.dart';
import '../provider/store/result_store.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  late ResultReducer viewStore;

  @override
  void initState() {
    super.initState();
    viewStore = ResultReducer(context);
    viewStore.send(const ResultAction.onAppear());
  }

  @override
  void dispose() {
    super.dispose();
    viewStore.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                      text: 'O ',
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
                          text: "Ranqueamento",
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
                ],
              ),
            ),
          ),

          const SliverToBoxAdapter(
            child: SizedBox(height: 16),
          ),

          // *
          ValueListenableBuilder(
            valueListenable: viewStore,
            builder: (context, value, child) {
              if (value.filterResult.isEmpty) {
                return SliverToBoxAdapter(
                  child: Center(
                    child: Transform.scale(
                      scale: 1,
                      child: const CircularProgressIndicator.adaptive(),
                    ),
                  ),
                );
              }

              return SliverList.builder(
                itemCount: value.filterResult.length,
                itemBuilder: (context, index) {
                  final result = value.filterResult[index];
                  final data = result.data();
                  return CupertinoListTile.notched(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
                    title: Text(
                      data?.teamName ?? "",
                      style: TextStyle(
                        color: ColorMode.setColor(
                          context: context,
                          light: Colors.black,
                          dark: Colors.white,
                        ),
                      ),
                    ),
                    additionalInfo: Text(
                      "Primeiro lugar",
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: "Caça Tesouro: ",
                            style: const TextStyle(
                              color: Colors.grey,
                            ),
                            children: [
                              TextSpan(
                                text: "${data?.teamOutcome?.points}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                              TextSpan(
                                text: " - ",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                              TextSpan(
                                text: " Ranking: 1",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: "Pontuação jogos: ",
                            style: const TextStyle(
                              color: Colors.grey,
                            ),
                            children: [
                              TextSpan(
                                text: "${data?.teamOutcome?.points}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: "Show de talentos: ",
                            style: const TextStyle(
                              color: Colors.grey,
                            ),
                            children: [
                              TextSpan(
                                text: "${data?.teamOutcome?.points}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
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
          )
        ],
      ),
    );
  }
}
