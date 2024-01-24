import 'package:core/core.dart';
import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:room/src/feature/manager/room_manager_update/provider/action/room_manager_update_action.dart';

import '../provider/enum/room_manager_update_input_type.dart';
import '../provider/store/room_manager_update_store.dart';

class RoomManagerEditor extends StatelessWidget {
  const RoomManagerEditor({
    super.key,
    required this.inputType,
    required this.viewStore,
  });

  final RoomManagerUpdateInputType inputType;
  final RoomManagarUpdateReducer viewStore;

  String getUpdateDescription() {
    return switch (inputType) {
      RoomManagerUpdateInputType.name => "nome",
      RoomManagerUpdateInputType.air => "Ar condicionado",
      RoomManagerUpdateInputType.availability => "Disponibilidade",
      RoomManagerUpdateInputType.block => "Bloco",
      RoomManagerUpdateInputType.couchBed => "Sofa cama",
      RoomManagerUpdateInputType.coupleBed => "Cama de casal",
      RoomManagerUpdateInputType.image => "Imagem",
      RoomManagerUpdateInputType.minibar => "Mini bar",
      RoomManagerUpdateInputType.observation => "Observação",
      RoomManagerUpdateInputType.singleBed => "Cama de solteiro",
      RoomManagerUpdateInputType.supportedBed => "Cama auxiliar",
    };
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
                          text: 'Vamos ',
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
                              text: "Atualizar",
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
                      RichText(
                        text: TextSpan(
                          text: "Aqui você poderá atualizar o ",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge! //
                              .copyWith(),
                          children: [
                            TextSpan(
                              text: getUpdateDescription(),
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge! //
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.deepPurple),
                            ),
                            TextSpan(
                              text: " do quarto.",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge! //
                                  .copyWith(),
                            ),
                          ],
                        ),
                      ),
                      // Text(
                      //   'Aqui você poderá atualizar o ${getUpdateDescription()} do quarto.',
                      //   textAlign: TextAlign.center,
                      // ),
                    ],
                  ),
                ),
              ),

              // *

              SliverToBoxAdapter(
                child: Builder(
                  builder: (context) {
                    return switch (inputType) {
                      RoomManagerUpdateInputType.name => Column(
                          children: [
                            const SizedBox(height: 16),
                            ValueListenableBuilder(
                              valueListenable: viewStore,
                              builder: (context, value, child) {
                                return CustomTextFormField(
                                  labelText: "Nome",
                                  controller: value.nameController,
                                  focusNote: value.nameFocus,
                                  keyboardType: TextInputType.name,
                                  maxLine: null,
                                  textInputAction: TextInputAction.done,
                                  boxDecorationColor: SystemMode.isDark(context)
                                      ? Colors.black
                                      : Colors.grey.shade300,
                                );
                              },
                            ),
                          ],
                        ),
                      RoomManagerUpdateInputType.air => Column(
                          children: [
                            const SizedBox(height: 16),
                            ValueListenableBuilder(
                              valueListenable: viewStore,
                              builder: (context, value, child) {
                                return CustomTextFormField(
                                  labelText: "Nome",
                                  controller: value.nameController,
                                  focusNote: value.nameFocus,
                                  keyboardType: TextInputType.name,
                                  maxLine: null,
                                  textInputAction: TextInputAction.done,
                                  boxDecorationColor: SystemMode.isDark(context)
                                      ? Colors.black
                                      : Colors.grey.shade300,
                                );
                              },
                            ),
                          ],
                        ),
                      RoomManagerUpdateInputType.availability => Column(
                          children: [
                            const SizedBox(height: 16),
                            MergeSemantics(
                              child: CheckboxListTile.adaptive(
                                value: true,
                                onChanged: (value) {},
                                title: const Text(
                                  "Possui Mini bar",
                                ),
                              ),
                            )
                          ],
                        ),
                      RoomManagerUpdateInputType.block => Column(
                          children: [
                            const SizedBox(height: 16),
                            ValueListenableBuilder(
                              valueListenable: viewStore,
                              builder: (context, value, child) {
                                return CustomTextFormField(
                                  labelText: "Bloco",
                                  controller: value.blockController,
                                  focusNote: value.blockFocus,
                                  keyboardType: TextInputType.name,
                                  maxLine: null,
                                  textInputAction: TextInputAction.done,
                                  boxDecorationColor: SystemMode.isDark(context)
                                      ? Colors.black
                                      : Colors.grey.shade300,
                                );
                              },
                            ),
                          ],
                        ),
                      RoomManagerUpdateInputType.couchBed => Column(
                          children: [
                            const SizedBox(height: 16),
                            ValueListenableBuilder(
                              valueListenable: viewStore,
                              builder: (context, value, child) {
                                return CustomTextFormField(
                                  labelText: "Sofá cama",
                                  controller: value.couchBedController,
                                  focusNote: value.couchBedFocus,
                                  keyboardType: TextInputType.number,
                                  maxLine: null,
                                  textInputAction: TextInputAction.done,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                  boxDecorationColor: SystemMode.isDark(context)
                                      ? Colors.black
                                      : Colors.grey.shade300,
                                );
                              },
                            ),
                          ],
                        ),
                      RoomManagerUpdateInputType.coupleBed => Column(
                          children: [
                            const SizedBox(height: 16),
                            ValueListenableBuilder(
                              valueListenable: viewStore,
                              builder: (context, value, child) {
                                return CustomTextFormField(
                                  labelText: "Cama de casal",
                                  controller: value.doubleBedController,
                                  focusNote: value.doubleBedFocus,
                                  keyboardType: TextInputType.number,
                                  maxLine: null,
                                  textInputAction: TextInputAction.done,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                  boxDecorationColor: SystemMode.isDark(context)
                                      ? Colors.black
                                      : Colors.grey.shade300,
                                );
                              },
                            ),
                          ],
                        ),
                      RoomManagerUpdateInputType.image => Column(
                          children: [
                            const SizedBox(height: 16),
                            ValueListenableBuilder(
                              valueListenable: viewStore,
                              builder: (context, value, child) {
                                return CustomTextFormField(
                                  labelText: "Imagem",
                                  controller: value.imageController,
                                  focusNote: value.imageFocus,
                                  keyboardType: TextInputType.name,
                                  maxLine: null,
                                  onSubmit: (text) => viewStore.send(
                                    RoomManagarUpdateAction.addImages(text),
                                  ),
                                  textInputAction: TextInputAction.done,
                                  boxDecorationColor: SystemMode.isDark(context)
                                      ? Colors.black
                                      : Colors.grey.shade300,
                                );
                              },
                            ),
                            const SizedBox(height: 8),
                            ValueListenableBuilder(
                              valueListenable: viewStore,
                              builder: (context, value, child) {
                                return Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                  ),
                                  height:
                                      MediaQuery.of(context).size.height - 300,
                                  child: GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithMaxCrossAxisExtent(
                                      maxCrossAxisExtent: 200,
                                      childAspectRatio: 3 / 2,
                                      crossAxisSpacing: 8,
                                      mainAxisSpacing: 8,
                                    ),
                                    itemCount: value.urlImage.length,
                                    itemBuilder: (BuildContext ctx, index) {
                                      final image = value.urlImage[index];
                                      return GestureDetector(
                                        onTap: () => viewStore.send(
                                          RoomManagarUpdateAction.removeImages(
                                            image,
                                          ),
                                        ),
                                        onLongPress: () => viewStore.send(
                                          RoomManagarUpdateAction.copyImage(
                                            image,
                                          ),
                                        ),
                                        child: Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Image.network(
                                            image,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      RoomManagerUpdateInputType.minibar => Column(
                          children: [
                            const SizedBox(height: 16),
                            MergeSemantics(
                              child: CheckboxListTile.adaptive(
                                value: true,
                                onChanged: (value) {},
                                title: const Text(
                                  "Possui Mini bar",
                                ),
                              ),
                            )
                          ],
                        ),
                      RoomManagerUpdateInputType.observation => Column(
                          children: [
                            const SizedBox(height: 16),
                            ValueListenableBuilder(
                              valueListenable: viewStore,
                              builder: (context, value, child) {
                                return CustomTextFormField(
                                  labelText: "Observação",
                                  controller: value.observationController,
                                  focusNote: value.observationFocus,
                                  keyboardType: TextInputType.name,
                                  maxLine: null,
                                  textInputAction: TextInputAction.done,
                                  boxDecorationColor: SystemMode.isDark(context)
                                      ? Colors.black
                                      : Colors.grey.shade300,
                                );
                              },
                            ),
                          ],
                        ),
                      RoomManagerUpdateInputType.singleBed => Column(
                          children: [
                            const SizedBox(height: 16),
                            ValueListenableBuilder(
                              valueListenable: viewStore,
                              builder: (context, value, child) {
                                return CustomTextFormField(
                                  labelText: "Cama de solteiro",
                                  controller: value.singleBedController,
                                  focusNote: value.singleBedFocus,
                                  keyboardType: TextInputType.number,
                                  maxLine: null,
                                  textInputAction: TextInputAction.done,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                  boxDecorationColor: SystemMode.isDark(context)
                                      ? Colors.black
                                      : Colors.grey.shade300,
                                );
                              },
                            ),
                          ],
                        ),
                      RoomManagerUpdateInputType.supportedBed => Column(
                          children: [
                            const SizedBox(height: 16),
                            ValueListenableBuilder(
                              valueListenable: viewStore,
                              builder: (context, value, child) {
                                return CustomTextFormField(
                                  labelText: "Cama auxiliar",
                                  controller: value.supportedBedController,
                                  focusNote: value.supportedBedFocus,
                                  keyboardType: TextInputType.number,
                                  maxLine: null,
                                  textInputAction: TextInputAction.done,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                  boxDecorationColor: SystemMode.isDark(context)
                                      ? Colors.black
                                      : Colors.grey.shade300,
                                );
                              },
                            ),
                          ],
                        ),
                    };
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: MediaQuery.of(context).padding.bottom + 58,
          child: Column(
            children: [
              AnimatedOpacity(
                opacity: View.of(context).viewInsets.bottom > 0.0 ? 0 : 1,
                duration: Durations.medium1,
                child: const Divider(
                  thickness: 0.2,
                  height: 1,
                ),
              ),
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
                child: ValueListenableBuilder(
                  valueListenable: viewStore,
                  builder: (context, value, child) {
                    return AnimatedButton(
                      isFocus: View.of(context).viewInsets.bottom > 0.0,
                      isDisabled: value.isLoading,
                      onPress: () => context.pop(),
                      enableColor: Colors.deepPurple.shade300,
                      disableColor: SystemMode.isDark(context)
                          ? Colors.deepPurple.shade500
                          : Colors.deepPurple.shade100,
                      disabledChild: const CupertinoActivityIndicator(),
                      child: Text(
                        'Concluir',
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
