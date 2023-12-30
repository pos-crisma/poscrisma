import 'package:core/core.dart';
import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home/src/feature/create_family/provider/controller/action/create_family_action.dart';

import '../../provider/controller/store/create_family_store.dart';

class CreateFamilyMobile extends StatelessWidget {
  CreateFamilyMobile({super.key});

  final CreateFamilyReducer viewStore = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                const SliverAppBar(
                  pinned: true,
                  elevation: 0,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Vamos criar sua', // TODO: move to i18n
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge! //
                                  .copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                            Text(
                              ' Familia', // TODO: move to i18n
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
                        const SizedBox(height: 8),
                        Text(
                          'A parti da sua familia, você poderá gerenciar seus filhos e seu grupo do poscrisma.', // TODO: move to i18n
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
                  child: SizedBox(height: 36),
                ),

                // * form
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Nome da familia', // TODO: move to i18n
                          textAlign: TextAlign.start,
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge! //
                              .copyWith(
                                color: ColorMode.setColor(
                                  context: context,
                                  light: Colors.black,
                                  dark: Colors.grey.shade200,
                                ),
                              ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      CustomTextFormField(
                        controller: viewStore.state.nameFamilyController,
                        focusNote: viewStore.state.nameFamilyFocus,
                        boxDecorationColor: ColorMode.setColor(
                          context: context,
                          light: Colors.grey.shade200,
                          dark: Colors.black,
                        ),
                        labelText: "Nome da familia",
                      ),
                    ],
                  ),
                ),

                // *
                const SliverToBoxAdapter(
                  child: SizedBox(height: 16),
                ),

                // * Form
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Ano da familia no acampamento', // TODO: move to i18n
                          textAlign: TextAlign.start,
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge! //
                              .copyWith(
                                color: ColorMode.setColor(
                                  context: context,
                                  light: Colors.black,
                                  dark: Colors.grey.shade200,
                                ),
                              ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      CustomTextFormField(
                        controller: viewStore.state.yearFamilyController,
                        focusNote: viewStore.state.yearFamilyFocus,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        boxDecorationColor: ColorMode.setColor(
                          context: context,
                          light: Colors.grey.shade200,
                          dark: Colors.black,
                        ),
                        labelText: "Ano da familia no acampamento",
                      ),
                    ],
                  ),
                ),

                const SliverToBoxAdapter(
                  child: SizedBox(height: 36),
                ),
              ],
            ),
          ),

          // * Button final
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(
              top: 8,
              bottom: MediaQuery.of(context).padding.bottom == 0
                  ? View.of(context).viewInsets.bottom > 0.0
                      ? 0
                      : 8
                  : MediaQuery.of(context).padding.bottom,
            ),
            child: AnimatedButton(
              isFocus: View.of(context).viewInsets.bottom > 0.0,
              isDisabled: false,
              onPress: () {
                FocusManager.instance.primaryFocus?.unfocus();
                viewStore.send(CreateFamilyAction.buttonTapped());
              },
              enableColor: Colors.deepPurple.shade300,
              disableColor: ColorMode.setColor(
                context: context,
                light: Colors.deepPurple.shade100,
                dark: Colors.deepPurple.shade500,
              ),
              disabledChild: const CupertinoActivityIndicator(),
              child: Text(
                'Proximo',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium! //
                    .copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
