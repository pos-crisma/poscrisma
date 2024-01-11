import 'package:design/color/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

class CardRoom extends StatelessWidget {
  const CardRoom({
    super.key,
    required this.room,
  });

  final Room room;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16.0),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: GestureDetector(
            onTap: () {
              Future.delayed(Durations.short1).then((value) {
                showModalBottomSheet(
                  context: context,
                  useSafeArea: true,
                  isScrollControlled: true,
                  builder: (context) => ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: const Scaffold(),
                  ),
                );
              });
              // print("Tap on room: ${room.roomId}");
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                LayoutBuilder(
                  builder: (context, constraints) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: SizedBox(
                        width: constraints.maxWidth,
                        height: 300,
                        child: Image.network(
                          'https://raw.githubusercontent.com/augustineayeh/airbnb_ui_clone/main/assets/images/abiansemal.webp',
                          fit: BoxFit.fitHeight,
                          alignment: Alignment.center,
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 8),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      room.blockName ?? "Não adicionado",
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
                RichText(
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
                        text: room.roomName ?? "Não adicionado",
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
                RichText(
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
                        text: room.roomType == "Couple" ? 'Casal' : "Jovens",
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
                Text(
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
              ],
            ),
          ),
        ),
      ],
    );
  }
}
