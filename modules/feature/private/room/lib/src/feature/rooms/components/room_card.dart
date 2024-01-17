import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

class CardRoom extends StatelessWidget {
  const CardRoom({
    super.key,
    required this.room,
    required this.tapped,
  });

  final Room room;
  final VoidCallback tapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapped,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              return (room.images != null && room.images!.isNotEmpty)
                  ? SizedBox(
                      width: constraints.maxWidth,
                      height: 300,
                      child: CarouselSlider(
                        options: CarouselOptions(
                          aspectRatio:
                              Responsive.isMobile(context) ? 16 / 9 : 1,
                          viewportFraction:
                              Responsive.isMobile(context) ? 0.92 : 0.8,
                          enlargeFactor: 0.2,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          pageSnapping: true,
                          scrollDirection: Axis.horizontal,
                          enlargeCenterPage: true,
                          enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                        ),
                        items: room.images!.map((image) {
                          return Image.network(
                            image,
                            fit: BoxFit.cover,
                            loadingBuilder: (BuildContext context, Widget child,
                                ImageChunkEvent? loadingProgress) {
                              if (loadingProgress == null) {
                                return child;
                              }

                              return Center(
                                child: CircularProgressIndicator(
                                  value: loadingProgress.expectedTotalBytes !=
                                          null
                                      ? loadingProgress.cumulativeBytesLoaded /
                                          loadingProgress.expectedTotalBytes!
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
                          );
                        }).toList(),
                      ),
                    )
                  : Container(
                      color: Colors.grey,
                      height: 300,
                    );
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  room.roomName ?? "Não adicionado",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium! //
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
                      room.roomType == "Couple"
                          ? Icons.family_restroom_rounded
                          : CupertinoIcons.person_3_fill,
                      size: 16,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      room.vacancies?.toString() ?? "0",
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium! //
                          .copyWith(
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
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: RichText(
              text: TextSpan(
                text: 'Área: ',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall! //
                    .copyWith(
                      fontWeight: FontWeight.w300,
                      color: ColorMode.setColor(
                        context: context,
                        light: Colors.grey.shade800,
                        dark: Colors.grey.shade400,
                      ),
                    ),
                children: [
                  TextSpan(
                    text: room.blockName ?? "Não adicionado",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall! //
                        .copyWith(
                          fontWeight: FontWeight.w300,
                          color: ColorMode.setColor(
                            context: context,
                            light: Colors.grey.shade800,
                            dark: Colors.grey.shade400,
                          ),
                        ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: RichText(
              text: TextSpan(
                text: 'Quarto para: ',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall! //
                    .copyWith(
                      fontWeight: FontWeight.w300,
                      color: ColorMode.setColor(
                        context: context,
                        light: Colors.grey.shade800,
                        dark: Colors.grey.shade400,
                      ),
                    ),
                children: [
                  TextSpan(
                    text: room.roomType == "Couple"
                        ? 'Casal'
                        : room.roomType == "Single"
                            ? "Solteiro"
                            : "Sem definição",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall! //
                        .copyWith(
                          fontWeight: FontWeight.w300,
                          color: ColorMode.setColor(
                            context: context,
                            light: Colors.grey.shade800,
                            dark: Colors.grey.shade400,
                          ),
                        ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              room.observations ?? "Não adicionado",
              style: Theme.of(context)
                  .textTheme
                  .bodySmall! //
                  .copyWith(
                    fontWeight: FontWeight.w300,
                    color: ColorMode.setColor(
                      context: context,
                      light: Colors.black,
                      dark: Colors.white,
                    ),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
