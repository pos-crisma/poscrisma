import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

import '../../provider/controller/action/create_mascot_action.dart';
import '../../provider/controller/state/create_mascot_state.dart';
import '../../provider/controller/store/create_mascot_reducer.dart';

class CreateMascotMobile extends StatelessWidget {
  CreateMascotMobile({super.key});

  final CreateMascotReducer viewStore = CreateMascotReducer();

  @override
  Widget build(BuildContext context) {
    viewStore.send(CreateMascotAction.onAppear(context));

    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
      ),
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: CustomScrollView(
                slivers: [
                  const SliverAppBar(
                    pinned: true,
                    elevation: 0,
                    leadingWidth: 50,
                    leading: Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: CustomBackButton(
                        popResult: false,
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
                              text: 'Seus ', // TODO: move to i18n
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
                                  text: "Filhos", // TODO: move to i18n
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
                            'Aqui você poderá adicionar seus filhos mascotes.', // TODO: move to i18n
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

                  // * Form
                  ValueListenableBuilder(
                    valueListenable: viewStore,
                    builder: (context, value, child) {
                      return SliverPadding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        sliver: SliverList.builder(
                          itemCount: value.contentOnPage.list.length,
                          itemBuilder: (context, index) {
                            final contentOnPage =
                                value.contentOnPage.list[index];

                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  contentOnPage.text,
                                  textAlign: TextAlign.start,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge! //
                                      .copyWith(
                                          // fontWeight: FontWeight.bold,
                                          ),
                                ),
                                const SizedBox(height: 8),
                                contentOnPage == CreateMascotType.gender
                                    ? Column(
                                        children: [
                                          RadioListTile(
                                            contentPadding: EdgeInsets.zero,
                                            title: const Text('Masculino'),
                                            value: UserGender.Male,
                                            groupValue: value.genderInput,
                                            onChanged: (UserGender? value) {
                                              if (value != null) {
                                                viewStore.send(
                                                  CreateMascotAction
                                                      .genderTapped(
                                                    value,
                                                  ),
                                                );
                                              }
                                            },
                                          ),
                                          RadioListTile(
                                            contentPadding: EdgeInsets.zero,
                                            title: const Text('Feminino'),
                                            value: UserGender.Female,
                                            groupValue: value.genderInput,
                                            onChanged: (UserGender? value) {
                                              if (value != null) {
                                                viewStore.send(
                                                  CreateMascotAction
                                                      .genderTapped(
                                                    value,
                                                  ),
                                                );
                                              }
                                            },
                                          ),
                                        ],
                                      )
                                    : CustomTextFormField(
                                        edgeInsets: EdgeInsets.zero,
                                        focusNote: switch (contentOnPage) {
                                          CreateMascotType.name =>
                                            value.nameFocus,
                                          CreateMascotType.age =>
                                            value.ageFocus,
                                          CreateMascotType.gender => null,
                                        },
                                        controller: switch (contentOnPage) {
                                          CreateMascotType.age =>
                                            value.ageController,
                                          CreateMascotType.name =>
                                            value.nameController,
                                          CreateMascotType.gender => null,
                                        },
                                        keyboardType: switch (contentOnPage) {
                                          CreateMascotType.age =>
                                            TextInputType.number,
                                          CreateMascotType.name =>
                                            TextInputType.name,
                                          CreateMascotType.gender => null,
                                        },
                                        maxLine: switch (contentOnPage) {
                                          CreateMascotType.age => 1,
                                          CreateMascotType.name => 1,
                                          CreateMascotType.gender => 1,
                                        },
                                        inputFormatters: switch (
                                            contentOnPage) {
                                          CreateMascotType.age => null,
                                          CreateMascotType.name => null,
                                          CreateMascotType.gender => null,
                                        },
                                        boxDecorationColor:
                                            SystemMode.isDark(context)
                                                ? Colors.black
                                                : Colors.grey.shade200,
                                        labelText: contentOnPage.inputText,
                                      ),
                                SizedBox(
                                    height: (contentOnPage.tipTitle != '' ||
                                            contentOnPage.tipContent != '')
                                        ? 16
                                        : 0),
                                contentOnPage.tipTitle == ''
                                    ? const SizedBox(height: 0)
                                    : Text(
                                        contentOnPage.tipTitle,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge,
                                      ),
                                contentOnPage.tipContent == ''
                                    ? const SizedBox(height: 0)
                                    : Text(
                                        contentOnPage.tipContent,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium! //
                                            .copyWith(
                                              fontWeight: FontWeight.w300,
                                              color: SystemMode.isDark(context)
                                                  ? Colors.grey.shade50
                                                  : Colors.grey.shade800,
                                            ),
                                      ),
                                const SizedBox(height: 16),
                              ],
                            );
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            AnimatedOpacity(
              opacity: View.of(context).viewInsets.bottom > 0.0 ? 0 : 1,
              duration: Durations.medium1,
              child: const Divider(
                thickness: 0.2,
                height: 1,
              ),
            ),
            AnimatedContainer(
              duration: Durations.medium1,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(
                top: 8,
                bottom: MediaQuery.of(context).padding.bottom == 0
                    ? View.of(context).viewInsets.bottom > 0.0
                        ? 0
                        : 8
                    : MediaQuery.of(context).padding.bottom,
              ),
              child: ValueListenableBuilder(
                valueListenable: viewStore,
                builder: (context, value, child) {
                  return AnimatedButton(
                    isFocus: View.of(context).viewInsets.bottom > 0.0,
                    isDisabled: value.isLoading,
                    onPress: () => viewStore
                        .send(const CreateMascotAction.handlerTapped()),
                    enableColor: Colors.deepPurple.shade300,
                    disableColor: SystemMode.isDark(context)
                        ? Colors.deepPurple.shade500
                        : Colors.deepPurple.shade100,
                    disabledChild: const CupertinoActivityIndicator(),
                    child: Text(
                      'Adicionar',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium! //
                          .copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
