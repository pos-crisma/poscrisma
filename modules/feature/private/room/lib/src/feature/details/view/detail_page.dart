import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:room/src/feature/details/provider/action/detail_action.dart';
import 'package:room/src/feature/details/provider/store/detail_store.dart';
import 'package:store/feature/user/model/user.dart';
import 'package:store/store.dart';

import '../../component/hosted_card.dart';
import '../../component/hosted_young_card.dart';

void showDetail(
  BuildContext context, {
  required Room room,
  required Function(bool?) onClose,
}) {
  Future.delayed(Durations.short1).then((value) {
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      isScrollControlled: true,
      useRootNavigator: true,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.transparent,
      builder: (context) => ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        child: DetailPage(
          room: room,
        ),
      ),
    ).then((value) {
      onClose(value);
    });
  });
}

class DetailPage extends StatefulWidget {
  const DetailPage({
    super.key,
    required this.room,
  });

  final Room room;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final DetailReducer viewStore = DetailReducer();

  @override
  void initState() {
    super.initState();
    viewStore.send(DetailAction.onAppear(context, widget.room));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: viewStore,
        builder: (context, value, child) {
          if (value.user.permissions != null &&
              value.user.permissions!.contains("manager_room")) {
            return SizedBox(
              height: MediaQuery.of(context).padding.bottom + 50,
              child: Column(
                children: [
                  const CustomDivider(height: 0.5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // TODO: Upgrade this text
                        const Text(
                          "Visão gerencial do quarto",
                        ),

                        // *
                        CupertinoButton(
                          onPressed: () => viewStore.send(
                              DetailAction.buttonTapped(
                                  widget.room.roomId ?? "")),
                          padding: EdgeInsets.zero,
                          color: Colors.transparent,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(6)),
                            child: Text(
                              "Atualizar",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge! //
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const SizedBox(height: 0);
          }
        },
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            pinned: true,
            stretch: true,
            leading: const Padding(
              padding: EdgeInsets.only(left: 8),
              child: CustomBackButton(
                backIcon: CupertinoIcons.clear_circled_solid,
                backTitle: "",
              ),
            ),
            expandedHeight: kIsWeb
                ? 300
                : Responsive.isSmallScreen(context)
                    ? 200
                    : 250,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: LayoutBuilder(
                builder: (context, constraints) {
                  return (widget.room.images != null &&
                          widget.room.images!.isNotEmpty)
                      ? CarouselSlider(
                          options: CarouselOptions(
                            aspectRatio:
                                Responsive.isMobile(context) ? 16 / 9 : 1,
                            viewportFraction: 1,
                            enlargeFactor: 0.2,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            pageSnapping: true,
                            autoPlay: false,
                            scrollDirection: Axis.horizontal,
                            // enlargeCenterPage: true,
                            enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                          ),
                          items: widget.room.images!.map((image) {
                            return Builder(
                              builder: (BuildContext context) {
                                return SizedBox(
                                  width: constraints.maxWidth,
                                  height: constraints.maxHeight,
                                  child: Image.network(
                                    image,
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                    loadingBuilder: (BuildContext context,
                                        Widget child,
                                        ImageChunkEvent? loadingProgress) {
                                      if (loadingProgress == null) {
                                        return child;
                                      }

                                      return Center(
                                        child: CircularProgressIndicator(
                                          value: loadingProgress
                                                      .expectedTotalBytes !=
                                                  null
                                              ? loadingProgress
                                                      .cumulativeBytesLoaded /
                                                  loadingProgress
                                                      .expectedTotalBytes!
                                              : null,
                                        ),
                                      );
                                    },
                                    errorBuilder: (context, error, stackTrace) {
                                      return Container(
                                        alignment: Alignment.center,
                                        color: Colors.grey,
                                        child: Text(
                                          "Problema para abrir a imagem",
                                          maxLines: 3,
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineMedium!
                                              .copyWith(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      );
                                    },
                                  ),
                                );
                              },
                            );
                          }).toList(),
                        )
                      : Container(
                          color: Colors.grey,
                          height: 300,
                        );
                },
              ),
            ),
          ),

          // *
          const SliverToBoxAdapter(
            child: SizedBox(height: 16),
          ),

          // *
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.room.roomName ?? "Não adicionado",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall! //
                            .copyWith(
                              fontWeight: FontWeight.bold,
                              color: ColorMode.setColor(
                                context: context,
                                light: Colors.black,
                                dark: Colors.white,
                              ),
                            ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            widget.room.roomType == "Couple"
                                ? Icons.family_restroom_rounded
                                : CupertinoIcons.person_3_fill,
                            size: 20,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            widget.room.vacancies?.toString() ?? "0",
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge! //
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: ColorMode.setColor(
                                    context: context,
                                    light: Colors.black,
                                    dark: Colors.white,
                                  ),
                                ),
                          ),
                        ],
                      )
                    ],
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Área: ',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium! //
                          .copyWith(
                            color: ColorMode.setColor(
                              context: context,
                              light: Colors.grey.shade800,
                              dark: Colors.grey.shade200,
                            ),
                          ),
                      children: [
                        TextSpan(
                          text: widget.room.blockName ?? "Não adicionado",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge! //
                              .copyWith(
                                fontWeight: FontWeight.bold,
                                color: ColorMode.setColor(
                                  context: context,
                                  light: Colors.grey.shade800,
                                  dark: Colors.grey.shade200,
                                ),
                              ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Quarto para: ',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium! //
                          .copyWith(
                            color: ColorMode.setColor(
                              context: context,
                              light: Colors.grey.shade800,
                              dark: Colors.grey.shade200,
                            ),
                          ),
                      children: [
                        TextSpan(
                          text: widget.room.roomType == "Couple"
                              ? 'Casal'
                              : widget.room.roomType == "Single"
                                  ? "Solteiro"
                                  : "Sem definição",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge! //
                              .copyWith(
                                fontWeight: FontWeight.bold,
                                color: ColorMode.setColor(
                                  context: context,
                                  light: Colors.grey.shade800,
                                  dark: Colors.grey.shade200,
                                ),
                              ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Vago: ',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium! //
                          .copyWith(
                            color: ColorMode.setColor(
                              context: context,
                              light: Colors.grey.shade800,
                              dark: Colors.grey.shade200,
                            ),
                          ),
                      children: [
                        TextSpan(
                          text: widget.room.availability == true
                              ? 'Disponivel'
                              : "Indisponivel",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge! //
                              .copyWith(
                                fontWeight: FontWeight.bold,
                                color: ColorMode.setColor(
                                  context: context,
                                  light: Colors.grey.shade800,
                                  dark: Colors.grey.shade200,
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
            child: SizedBox(height: 8),
          ),

          // *
          const SliverToBoxAdapter(
            child: CustomDivider(
              height: 0.2,
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
              child: Text(
                "Sobre este espaço",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge! //
                    .copyWith(
                      fontWeight: FontWeight.bold,
                      color: ColorMode.setColor(
                        context: context,
                        light: Colors.grey.shade800,
                        dark: Colors.grey.shade200,
                      ),
                    ),
              ),
            ),
          ),

          const SliverToBoxAdapter(
            child: SizedBox(height: 8),
          ),

          // *
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Text(
                widget.room.observations ?? "Não adicionado",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge! //
                    .copyWith(
                      color: ColorMode.setColor(
                        context: context,
                        light: Colors.grey.shade800,
                        dark: Colors.grey.shade200,
                      ),
                    ),
              ),
            ),
          ),

          const SliverToBoxAdapter(
            child: SizedBox(height: 8),
          ),

          // *
          const SliverToBoxAdapter(
            child: CustomDivider(
              height: 0.2,
            ),
          ),

          const SliverToBoxAdapter(
            child: SizedBox(height: 8),
          ),

          // * Hosted
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Text(
                "Quem está no quarto",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge! //
                    .copyWith(
                      fontWeight: FontWeight.bold,
                      color: ColorMode.setColor(
                        context: context,
                        light: Colors.grey.shade800,
                        dark: Colors.grey.shade200,
                      ),
                    ),
              ),
            ),
          ),

          (widget.room.hosted != null && widget.room.hosted!.isNotEmpty)
              ? SliverList.builder(
                  itemCount: widget.room.hosted?.length ?? 0,
                  itemBuilder: (context, index) {
                    final user = widget.room.hosted?[index];

                    if (user != null) {
                      return user.userType == "Young"
                          ? HostedYoungCard(
                              name: user.userName ?? "",
                              userRoomId: widget.room.roomId ?? "",
                              // isGuest: user?. ?? false,
                              godFather:
                                  user.godParents?.godFather ?? "Padrinho",
                              godMother:
                                  user.godParents?.godMother ?? "Madrinha",
                              roomId: widget.room.roomId ?? "",
                              birthday: user.age.toString(),
                              callback: () {},
                            )
                          : HostedCard(
                              name: user.userName ?? "",
                              userRoomId: widget.room.roomId ?? "",
                              // isGuest: user.guest ?? false,
                              roomId: widget.room.roomId ?? "",
                              type: switch (user.userType) {
                                "GodParent" => user.userGender?.toLowerCase() ==
                                        UserGender.Male.name.toLowerCase()
                                    ? "Padrinho"
                                    : "Madrinha",
                                "Voluntary" => user.userGender?.toLowerCase() ==
                                        UserGender.Male.name.toLowerCase()
                                    ? "Voluntario"
                                    : "Voluntaria",
                                _ => "Jovem"
                              },
                              callback: () {},
                            );
                    }

                    return const SizedBox();

                    // Column(
                    //   children: [
                    //     const SizedBox(height: 8),
                    //     ItemButton(
                    //       onPress: () => viewStore.send(
                    //           DetailAction.buttonUserTapped(
                    //               host!.userId ?? "")),
                    //       child: Container(
                    //         padding: const EdgeInsets.symmetric(
                    //           horizontal: 16.0,
                    //           vertical: 0,
                    //         ),
                    //         width: MediaQuery.of(context).size.width,
                    //         child: Column(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           crossAxisAlignment: CrossAxisAlignment.start,
                    //           children: [
                    //             Text(
                    //               host?.userName ?? "",
                    //               style: Theme.of(context)
                    //                   .textTheme
                    //                   .bodyMedium! //
                    //                   .copyWith(
                    //                     fontWeight: FontWeight.bold,
                    //                     color: ColorMode.setColor(
                    //                       context: context,
                    //                       light: Colors.grey.shade800,
                    //                       dark: Colors.grey.shade200,
                    //                     ),
                    //                   ),
                    //             ),
                    //             RichText(
                    //               text: TextSpan(
                    //                 text: 'Genero: ',
                    //                 style: Theme.of(context)
                    //                     .textTheme
                    //                     .bodyMedium! //
                    //                     .copyWith(
                    //                       color: ColorMode.setColor(
                    //                         context: context,
                    //                         light: Colors.grey.shade800,
                    //                         dark: Colors.grey.shade200,
                    //                       ),
                    //                     ),
                    //                 children: [
                    //                   TextSpan(
                    //                     text: host?.userGender?.toLowerCase() ==
                    //                             "male"
                    //                         ? 'Homem'
                    //                         : "Mulher",
                    //                     style: Theme.of(context)
                    //                         .textTheme
                    //                         .bodyMedium! //
                    //                         .copyWith(
                    //                           fontWeight: FontWeight.bold,
                    //                           color: ColorMode.setColor(
                    //                             context: context,
                    //                             light: Colors.grey.shade800,
                    //                             dark: Colors.grey.shade200,
                    //                           ),
                    //                         ),
                    //                   ),
                    //                 ],
                    //               ),
                    //             ),
                    //             RichText(
                    //               text: TextSpan(
                    //                 text: 'Tipo de usuario: ',
                    //                 style: Theme.of(context)
                    //                     .textTheme
                    //                     .bodyMedium! //
                    //                     .copyWith(
                    //                       color: ColorMode.setColor(
                    //                         context: context,
                    //                         light: Colors.grey.shade800,
                    //                         dark: Colors.grey.shade200,
                    //                       ),
                    //                     ),
                    //                 children: [
                    //                   TextSpan(
                    //                     text: host?.userType?.toLowerCase() ==
                    //                             "godparent"
                    //                         ? 'Padrinho'
                    //                         : host?.userType?.toLowerCase() ==
                    //                                 "young"
                    //                             ? "Jovem"
                    //                             : "Voluntario",
                    //                     style: Theme.of(context)
                    //                         .textTheme
                    //                         .bodyMedium! //
                    //                         .copyWith(
                    //                           fontWeight: FontWeight.bold,
                    //                           color: ColorMode.setColor(
                    //                             context: context,
                    //                             light: Colors.grey.shade800,
                    //                             dark: Colors.grey.shade200,
                    //                           ),
                    //                         ),
                    //                   ),
                    //                 ],
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // );
                  },
                )
              : const SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 8),
                        Text("Não possui ninguem no quarto"),
                      ],
                    ),
                  ),
                ),

          const SliverToBoxAdapter(
            child: SizedBox(height: 8),
          ),

          // *
          const SliverToBoxAdapter(
            child: CustomDivider(
              height: 0.2,
            ),
          ),

          const SliverToBoxAdapter(
            child: SizedBox(height: 8),
          ),

          // * Room Configs
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Text(
                "O que tem no quarto",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge! //
                    .copyWith(
                      fontWeight: FontWeight.bold,
                      color: ColorMode.setColor(
                        context: context,
                        light: Colors.grey.shade800,
                        dark: Colors.grey.shade200,
                      ),
                    ),
              ),
            ),
          ),
          // * Bathrooms
          SliverToBoxAdapter(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.bathroom_rounded),
                      const SizedBox(width: 8),
                      RichText(
                        text: TextSpan(
                          text: "Banheiros: ",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium! //
                              .copyWith(),
                          children: [
                            TextSpan(
                              text: widget.room.bathrooms.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge! //
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const CustomDivider(
                    height: 1,
                  ),
                ],
              ),
            ),
          ),
          // * Air Conditioning
          SliverToBoxAdapter(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.air_rounded),
                      const SizedBox(width: 8),
                      RichText(
                        text: TextSpan(
                          text: "Ar condicionado: ",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium! //
                              .copyWith(),
                          children: [
                            TextSpan(
                              text: widget.room.airConditioning == true
                                  ? "Possui"
                                  : "Não possui",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge! //
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const CustomDivider(
                    height: 1,
                  ),
                ],
              ),
            ),
          ),
          // * Double Bed
          SliverToBoxAdapter(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.king_bed_rounded),
                      const SizedBox(width: 8),
                      RichText(
                        text: TextSpan(
                          text: "Sofa cama: ",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium! //
                              .copyWith(),
                          children: [
                            TextSpan(
                              text: widget.room.doubleBed.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge! //
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const CustomDivider(
                    height: 1,
                  ),
                ],
              ),
            ),
          ),
          // * Couch Bed
          SliverToBoxAdapter(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.airline_seat_individual_suite_rounded),
                      const SizedBox(width: 8),
                      RichText(
                        text: TextSpan(
                          text: "Sofa cama: ",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium! //
                              .copyWith(),
                          children: [
                            TextSpan(
                              text: widget.room.couchBed.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge! //
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const CustomDivider(
                    height: 1,
                  ),
                ],
              ),
            ),
          ),
          // * Single Bed
          SliverToBoxAdapter(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.bedroom_child_rounded),
                      const SizedBox(width: 8),
                      RichText(
                        text: TextSpan(
                          text: "Camas simples: ",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium! //
                              .copyWith(),
                          children: [
                            TextSpan(
                              text: widget.room.singleBed.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge! //
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const CustomDivider(
                    height: 1,
                  ),
                ],
              ),
            ),
          ),
          // * Supported Bed
          SliverToBoxAdapter(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.bedroom_parent),
                      const SizedBox(width: 8),
                      RichText(
                        text: TextSpan(
                          text: "Camas auxiliares: ",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium! //
                              .copyWith(),
                          children: [
                            TextSpan(
                              text: widget.room.supportBed.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge! //
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const CustomDivider(
                    height: 1,
                  ),
                ],
              ),
            ),
          ),
          // * Mini Bar
          SliverToBoxAdapter(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.emoji_food_beverage_rounded),
                      const SizedBox(width: 8),
                      RichText(
                        text: TextSpan(
                          text: "Minibar: ",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium! //
                              .copyWith(),
                          children: [
                            TextSpan(
                              text: widget.room.minibar == true
                                  ? "Possui"
                                  : "Não possui",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge! //
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const CustomDivider(
                    height: 1,
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
