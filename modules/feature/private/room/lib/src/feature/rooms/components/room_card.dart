import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

class CardRoom extends StatefulWidget {
  const CardRoom({
    super.key,
    required this.room,
    required this.tapped,
  });

  final Room room;
  final VoidCallback tapped;

  @override
  State<CardRoom> createState() => _CardRoomState();
}

class _CardRoomState extends State<CardRoom> {
  final CarouselController _controller = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16.0),
        GestureDetector(
          onTap: widget.tapped,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return (widget.room.images != null &&
                            widget.room.images!.isNotEmpty)
                        ? CarouselSlider(
                            carouselController: _controller,
                            options: CarouselOptions(
                              aspectRatio: 16 / 9,
                              viewportFraction: 0.9,
                              enlargeFactor: 0.2,
                              initialPage: 0,
                              enableInfiniteScroll: true,
                              pageSnapping: true,
                              autoPlay: false,
                              scrollDirection: Axis.horizontal,
                              enlargeCenterPage: true,
                              enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                              onPageChanged: (index, reason) =>
                                  setState(() => _current = index),
                            ),
                            items: widget.room.images!.map((image) {
                              final isImage = (_current ==
                                  widget.room.images!.indexWhere(
                                      (element) => element == image));

                              return Builder(
                                builder: (BuildContext context) {
                                  return SizedBox(
                                    width: constraints.maxWidth,
                                    height: 300,
                                    child: ClipRRect(
                                      borderRadius: isImage
                                          ? BorderRadius.circular(8)
                                          : BorderRadius.zero,
                                      child: Image.network(
                                        image,
                                        fit: BoxFit.fitWidth,
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
                                        errorBuilder:
                                            (context, error, stackTrace) {
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
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.room.blockName ?? "Não adicionado",
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
                          widget.room.roomType == "Couple"
                              ? Icons.family_restroom_rounded
                              : CupertinoIcons.person_3_fill,
                          size: 16,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          widget.room.vacancies?.toString() ?? "0",
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
                    text: 'Nome: ',
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
                        text: widget.room.roomName ?? "Não adicionado",
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
                        text: widget.room.roomType == "Couple"
                            ? 'Casal'
                            : "Jovens",
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
                  widget.room.observations ?? "Não adicionado",
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
        ),
      ],
    );
  }
}
