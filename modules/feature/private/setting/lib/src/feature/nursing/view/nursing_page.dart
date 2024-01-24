import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

class NursingPage extends StatelessWidget {
  const NursingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              pinned: true,
              floating: true,
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
            SliverToBoxAdapter(
              child: CustomTextFormField(
                controller: TextEditingController(),
                focusNote: FocusNode(),
                labelText: "Pesquisar pelo nome ou parte",
              ),
            ),

            SliverList.builder(
              itemCount: 0,
              itemBuilder: (context, index) {
                return Container();
              },
            ),
          ],
        ),
      ),
    );
  }
}
