import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:room/src/feature/manager/room_manager_add/provider/action/room_manager_add_action.dart';

import '../provider/state/room_managar_add_state.dart';
import '../provider/store/room_manager_add_store.dart';

class RoomManagerAdd extends StatefulWidget {
  const RoomManagerAdd({
    super.key,
  });

  @override
  State<RoomManagerAdd> createState() => _RoomManagerAddState();
}

class _RoomManagerAddState extends State<RoomManagerAdd> {
  final RoomManagarAddReducer viewStore = RoomManagarAddReducer();

  @override
  void initState() {
    super.initState();

    viewStore.send(RoomManagarAddAction.onAppear(context));
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
          title: Text(
            "Adicionar quarto",
            style: Theme.of(context)
                .textTheme
                .bodyLarge! //
                .copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                      viewStore.state.contentOnPage.list.map((contentOnPage) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // *
                        MergeSemantics(
                          child: ListTile(
                            minVerticalPadding: 0,
                            onTap: (contentOnPage ==
                                        RoomManagarAddType.airConditioning ||
                                    contentOnPage == RoomManagarAddType.minibar)
                                ? () => viewStore.send(
                                      RoomManagarAddAction.changeCheckBox(
                                        contentOnPage,
                                      ),
                                    )
                                : null,
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 0.0,
                            ),
                            leading: Text(
                              contentOnPage.text,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge! //
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            trailing: (contentOnPage ==
                                        RoomManagarAddType.airConditioning ||
                                    contentOnPage == RoomManagarAddType.minibar)
                                ? ValueListenableBuilder(
                                    valueListenable: viewStore,
                                    builder: (context, value, child) {
                                      return Checkbox(
                                        value: contentOnPage ==
                                                RoomManagarAddType
                                                    .airConditioning
                                            ? value.hasAirConditioning
                                            : value.hasMinibar,
                                        onChanged: (bool? value) =>
                                            viewStore.send(
                                          RoomManagarAddAction.changeCheckBox(
                                            contentOnPage,
                                          ),
                                        ),
                                      );
                                    },
                                  )
                                : const SizedBox(),
                          ),
                        ),

                        (contentOnPage != RoomManagarAddType.airConditioning &&
                                contentOnPage != RoomManagarAddType.minibar)
                            ? const SizedBox(height: 4)
                            : Container(),

                        (contentOnPage != RoomManagarAddType.airConditioning &&
                                contentOnPage != RoomManagarAddType.minibar)
                            ? CustomTextFormField(
                                edgeInsets:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                labelText: contentOnPage.inputText,
                                focusNote: switch (contentOnPage) {
                                  RoomManagarAddType.name =>
                                    viewStore.state.nameFocus,
                                  RoomManagarAddType.block =>
                                    viewStore.state.blockFocus,
                                  RoomManagarAddType.bathroom =>
                                    viewStore.state.bathroomFocus,
                                  RoomManagarAddType.singleBed =>
                                    viewStore.state.singleBedFocus,
                                  RoomManagarAddType.doubleBed =>
                                    viewStore.state.doubleBedFocus,
                                  RoomManagarAddType.observations =>
                                    viewStore.state.observationFocus,
                                  RoomManagarAddType.supportedBed =>
                                    viewStore.state.supportedBedFocus,
                                  RoomManagarAddType.couchBed =>
                                    viewStore.state.couchBedFocus,
                                  RoomManagarAddType.images =>
                                    viewStore.state.imageFocus,
                                  _ => null,
                                },
                                controller: switch (contentOnPage) {
                                  RoomManagarAddType.block =>
                                    viewStore.state.blockController,
                                  RoomManagarAddType.name =>
                                    viewStore.state.nameController,
                                  RoomManagarAddType.bathroom =>
                                    viewStore.state.bathroomController,
                                  RoomManagarAddType.singleBed =>
                                    viewStore.state.singleBedController,
                                  RoomManagarAddType.doubleBed =>
                                    viewStore.state.doubleBedController,
                                  RoomManagarAddType.observations =>
                                    viewStore.state.observationController,
                                  RoomManagarAddType.supportedBed =>
                                    viewStore.state.supportedBedController,
                                  RoomManagarAddType.couchBed =>
                                    viewStore.state.couchBedController,
                                  RoomManagarAddType.images =>
                                    viewStore.state.imageController,
                                  _ => null,
                                },
                                keyboardType: contentOnPage.keyboardType,
                                maxLine: contentOnPage.maxLine,
                                textInputAction: contentOnPage.textInputAction,
                                inputFormatters: switch (contentOnPage) {
                                  RoomManagarAddType.couchBed => [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                  RoomManagarAddType.doubleBed => [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                  RoomManagarAddType.singleBed => [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                  RoomManagarAddType.supportedBed => [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                  _ => null,
                                },
                                onSubmit: (value) => viewStore
                                    .send(RoomManagarAddAction.addImage(value)),
                              )
                            : Container(),
                      ],
                    );
                  }).toList(),
                ),
                ValueListenableBuilder(
                  valueListenable: viewStore,
                  builder: (context, value, child) {
                    return value.urlImage.isNotEmpty
                        ? Container(
                            margin: const EdgeInsets.only(bottom: 16),
                            width: MediaQuery.of(context).size.width,
                            height: 200,
                            child: CarouselSlider(
                              options: CarouselOptions(
                                aspectRatio: 1.0,
                                viewportFraction: 0.92,
                                initialPage: 0,
                                enableInfiniteScroll: false,
                                autoPlay: false,
                                scrollDirection: Axis.horizontal,
                              ),
                              items: value.urlImage.map((image) {
                                return Builder(
                                  builder: (BuildContext context) {
                                    return GestureDetector(
                                      onTap: () => viewStore.send(
                                        RoomManagarAddAction.removeImage(image),
                                      ),
                                      child: CarouselCard(
                                        url: image,
                                      ),
                                    );
                                  },
                                );
                              }).toList(),
                            ),
                          )
                        : const SizedBox(height: 16);
                  },
                ),
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
                  margin: const EdgeInsets.only(
                    top: 8,
                  ),
                  child: ValueListenableBuilder(
                    valueListenable: viewStore,
                    builder: (context, value, child) {
                      return AnimatedButton(
                        isFocus: View.of(context).viewInsets.bottom > 0.0,
                        isDisabled: value.isLoading,
                        onPress: () => viewStore
                            .send(const RoomManagarAddAction.buttonTapped()),
                        enableColor: Colors.deepPurple.shade300,
                        disableColor: SystemMode.isDark(context)
                            ? Colors.deepPurple.shade500
                            : Colors.deepPurple.shade100,
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
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CarouselCard extends StatelessWidget {
  const CarouselCard({
    super.key,
    required this.url,
  });

  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(4.0),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: SystemMode.isDark(context) //
            ? darkCardBackground
            : lightCardBackground,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.network(
                  url,
                  fit: BoxFit.fitWidth,
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
