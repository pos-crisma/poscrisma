import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:room/src/feature/manager/room_manager_update/provider/store/room_manager_update_store.dart';
import 'package:store/store.dart';

import '../provider/action/room_manager_update_action.dart';
import '../provider/enum/room_manager_update_input_type.dart';

class RoomManagerUpdate extends StatefulWidget {
  const RoomManagerUpdate({
    super.key,
    required this.room,
  });

  final Room room;

  @override
  State<RoomManagerUpdate> createState() => _RoomManagerUpdateState();
}

class _RoomManagerUpdateState extends State<RoomManagerUpdate> {
  late final RoomManagarUpdateReducer viewStore;

  @override
  void initState() {
    super.initState();

    viewStore = RoomManagarUpdateReducer(context, widget.room);
    viewStore.send(const RoomManagarUpdateAction.onAppear());
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
          title: ValueListenableBuilder(
            valueListenable: viewStore,
            builder: (context, value, child) {
              return Text(
                value.user != null &&
                        value.user!.permissions != null &&
                        value.user!.permissions!.contains("manager_room")
                    ? "Editor"
                    : "Detalhes",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge! //
                    .copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              );
            },
          ),
        ),
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ValueListenableBuilder(
                      valueListenable: viewStore,
                      builder: (context, value, child) {
                        return InkWell(
                          onTap: () => value.user != null &&
                                  value.user!.permissions != null &&
                                  value.user!.permissions!
                                      .contains("manager_room")
                              ? viewStore.send(
                                  const RoomManagarUpdateAction.buttonTapped(
                                    RoomManagerUpdateInputType.name,
                                  ),
                                )
                              : null,
                          child: CupertinoListTile.notched(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            title: Text(
                              "Nome do quarto",
                              style: TextStyle(
                                fontSize: 16,
                                color: ColorMode.setColor(
                                  context: context,
                                  light: Colors.grey.shade800,
                                  dark: Colors.grey.shade200,
                                ),
                              ),
                            ),
                            additionalInfo: Text(value.room.roomName ?? ""),
                            trailing: const Icon(
                              CupertinoIcons.chevron_right,
                              size: 18,
                            ),
                          ),
                        );
                      },
                    ),
                    const CustomDivider(
                      height: 0.5,
                    ),
                    ValueListenableBuilder(
                      valueListenable: viewStore,
                      builder: (context, value, child) {
                        return InkWell(
                          onTap: () => value.user != null &&
                                  value.user!.permissions != null &&
                                  value.user!.permissions!
                                      .contains("manager_room")
                              ? viewStore.send(
                                  const RoomManagarUpdateAction.buttonTapped(
                                    RoomManagerUpdateInputType.block,
                                  ),
                                )
                              : null,
                          child: CupertinoListTile.notched(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            title: Text(
                              "Nome do bloco",
                              style: TextStyle(
                                fontSize: 16,
                                color: ColorMode.setColor(
                                  context: context,
                                  light: Colors.grey.shade800,
                                  dark: Colors.grey.shade200,
                                ),
                              ),
                            ),
                            additionalInfo: Text(value.room.blockName ?? ""),
                            trailing: const Icon(
                              CupertinoIcons.chevron_right,
                              size: 18,
                            ),
                          ),
                        );
                      },
                    ),
                    const CustomDivider(
                      height: 0.5,
                    ),
                    ValueListenableBuilder(
                      valueListenable: viewStore,
                      builder: (context, value, child) {
                        return InkWell(
                          onTap: () => value.user != null &&
                                  value.user!.permissions != null &&
                                  value.user!.permissions!
                                      .contains("manager_room")
                              ? viewStore.send(
                                  const RoomManagarUpdateAction.buttonTapped(
                                    RoomManagerUpdateInputType.coupleBed,
                                  ),
                                )
                              : null,
                          child: CupertinoListTile.notched(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            title: Text(
                              "Cama de casal",
                              style: TextStyle(
                                fontSize: 16,
                                color: ColorMode.setColor(
                                  context: context,
                                  light: Colors.grey.shade800,
                                  dark: Colors.grey.shade200,
                                ),
                              ),
                            ),
                            additionalInfo:
                                Text(value.room.doubleBed.toString()),
                            trailing: const Icon(
                              CupertinoIcons.chevron_right,
                              size: 18,
                            ),
                          ),
                        );
                      },
                    ),
                    const CustomDivider(
                      height: 0.5,
                    ),
                    ValueListenableBuilder(
                      valueListenable: viewStore,
                      builder: (context, value, child) {
                        return InkWell(
                          onTap: () => value.user != null &&
                                  value.user!.permissions != null &&
                                  value.user!.permissions!
                                      .contains("manager_room")
                              ? viewStore.send(
                                  const RoomManagarUpdateAction.buttonTapped(
                                    RoomManagerUpdateInputType.singleBed,
                                  ),
                                )
                              : null,
                          child: CupertinoListTile.notched(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            title: Text(
                              "Cama de solteiro",
                              style: TextStyle(
                                fontSize: 16,
                                color: ColorMode.setColor(
                                  context: context,
                                  light: Colors.grey.shade800,
                                  dark: Colors.grey.shade200,
                                ),
                              ),
                            ),
                            additionalInfo:
                                Text(value.room.singleBed.toString()),
                            trailing: const Icon(
                              CupertinoIcons.chevron_right,
                              size: 18,
                            ),
                          ),
                        );
                      },
                    ),
                    const CustomDivider(
                      height: 0.5,
                    ),
                    ValueListenableBuilder(
                      valueListenable: viewStore,
                      builder: (context, value, child) {
                        return InkWell(
                          onTap: () => value.user != null &&
                                  value.user!.permissions != null &&
                                  value.user!.permissions!
                                      .contains("manager_room")
                              ? viewStore.send(
                                  const RoomManagarUpdateAction.buttonTapped(
                                    RoomManagerUpdateInputType.supportedBed,
                                  ),
                                )
                              : null,
                          child: CupertinoListTile.notched(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            title: Text(
                              "Cama de auxiliar",
                              style: TextStyle(
                                fontSize: 16,
                                color: ColorMode.setColor(
                                  context: context,
                                  light: Colors.grey.shade800,
                                  dark: Colors.grey.shade200,
                                ),
                              ),
                            ),
                            additionalInfo:
                                Text(value.room.supportBed.toString()),
                            trailing: const Icon(
                              CupertinoIcons.chevron_right,
                              size: 18,
                            ),
                          ),
                        );
                      },
                    ),
                    const CustomDivider(
                      height: 0.5,
                    ),
                    ValueListenableBuilder(
                      valueListenable: viewStore,
                      builder: (context, value, child) {
                        return InkWell(
                          onTap: () => value.user != null &&
                                  value.user!.permissions != null &&
                                  value.user!.permissions!
                                      .contains("manager_room")
                              ? viewStore.send(
                                  const RoomManagarUpdateAction.buttonTapped(
                                    RoomManagerUpdateInputType.couchBed,
                                  ),
                                )
                              : null,
                          child: CupertinoListTile.notched(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            title: Text(
                              "Sofá cama",
                              style: TextStyle(
                                fontSize: 16,
                                color: ColorMode.setColor(
                                  context: context,
                                  light: Colors.grey.shade800,
                                  dark: Colors.grey.shade200,
                                ),
                              ),
                            ),
                            additionalInfo:
                                Text(value.room.couchBed.toString()),
                            trailing: const Icon(
                              CupertinoIcons.chevron_right,
                              size: 18,
                            ),
                          ),
                        );
                      },
                    ),
                    const CustomDivider(
                      height: 0.5,
                    ),
                    ValueListenableBuilder(
                      valueListenable: viewStore,
                      builder: (context, value, child) {
                        return InkWell(
                          onTap: () => value.user != null &&
                                  value.user!.permissions != null &&
                                  value.user!.permissions!
                                      .contains("manager_room")
                              ? viewStore.send(
                                  const RoomManagarUpdateAction.buttonTapped(
                                    RoomManagerUpdateInputType.minibar,
                                  ),
                                )
                              : null,
                          child: CupertinoListTile.notched(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            title: Text(
                              "Minibar",
                              style: TextStyle(
                                fontSize: 16,
                                color: ColorMode.setColor(
                                  context: context,
                                  light: Colors.grey.shade800,
                                  dark: Colors.grey.shade200,
                                ),
                              ),
                            ),
                            additionalInfo: ValueListenableBuilder(
                              valueListenable: viewStore,
                              builder: (context, value, child) {
                                return Text(
                                  value.room.minibar != null
                                      ? value.room.minibar!
                                          ? "Possui"
                                          : "Não possui"
                                      : "Não possui",
                                );
                              },
                            ),
                            trailing: const Icon(
                              CupertinoIcons.chevron_right,
                              size: 18,
                            ),
                          ),
                        );
                      },
                    ),
                    const CustomDivider(
                      height: 0.5,
                    ),
                    ValueListenableBuilder(
                      valueListenable: viewStore,
                      builder: (context, value, child) {
                        return InkWell(
                          onTap: () => value.user != null &&
                                  value.user!.permissions != null &&
                                  value.user!.permissions!
                                      .contains("manager_room")
                              ? viewStore.send(
                                  const RoomManagarUpdateAction.buttonTapped(
                                    RoomManagerUpdateInputType.air,
                                  ),
                                )
                              : null,
                          child: CupertinoListTile.notched(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            title: Text(
                              "Ar condicionado",
                              style: TextStyle(
                                fontSize: 16,
                                color: ColorMode.setColor(
                                  context: context,
                                  light: Colors.grey.shade800,
                                  dark: Colors.grey.shade200,
                                ),
                              ),
                            ),
                            additionalInfo: ValueListenableBuilder(
                              valueListenable: viewStore,
                              builder: (context, value, child) {
                                return Text(
                                  widget.room.airConditioning != null
                                      ? widget.room.airConditioning!
                                          ? "Possui"
                                          : "Não possui"
                                      : "Não possui",
                                );
                              },
                            ),
                            trailing: const Icon(
                              CupertinoIcons.chevron_right,
                              size: 18,
                            ),
                          ),
                        );
                      },
                    ),
                    const CustomDivider(
                      height: 0.5,
                    ),
                    ValueListenableBuilder(
                      valueListenable: viewStore,
                      builder: (context, value, child) {
                        return InkWell(
                          onTap: () => value.user != null &&
                                  value.user!.permissions != null &&
                                  value.user!.permissions!
                                      .contains("manager_room")
                              ? viewStore.send(
                                  const RoomManagarUpdateAction.buttonTapped(
                                    RoomManagerUpdateInputType.availability,
                                  ),
                                )
                              : null,
                          child: CupertinoListTile.notched(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            title: Text(
                              "Disponibilidade",
                              style: TextStyle(
                                fontSize: 16,
                                color: ColorMode.setColor(
                                  context: context,
                                  light: Colors.grey.shade800,
                                  dark: Colors.grey.shade200,
                                ),
                              ),
                            ),
                            additionalInfo: ValueListenableBuilder(
                              valueListenable: viewStore,
                              builder: (context, value, child) {
                                return Text(
                                  widget.room.availability != null
                                      ? widget.room.availability!
                                          ? "Disponivel"
                                          : "Indisponivel"
                                      : "Indisponivel",
                                );
                              },
                            ),
                            trailing: const Icon(
                              CupertinoIcons.chevron_right,
                              size: 18,
                            ),
                          ),
                        );
                      },
                    ),
                    const CustomDivider(
                      height: 0.5,
                    ),
                    ValueListenableBuilder(
                      valueListenable: viewStore,
                      builder: (context, value, child) {
                        return InkWell(
                          onTap: () => value.user != null &&
                                  value.user!.permissions != null &&
                                  value.user!.permissions!
                                      .contains("manager_room")
                              ? viewStore.send(
                                  const RoomManagarUpdateAction.buttonTapped(
                                    RoomManagerUpdateInputType.observation,
                                  ),
                                )
                              : null,
                          child: CupertinoListTile.notched(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            title: Text(
                              "Observações",
                              style: TextStyle(
                                fontSize: 16,
                                color: ColorMode.setColor(
                                  context: context,
                                  light: Colors.grey.shade800,
                                  dark: Colors.grey.shade200,
                                ),
                              ),
                            ),
                            trailing: const Icon(
                              CupertinoIcons.chevron_right,
                              size: 18,
                            ),
                          ),
                        );
                      },
                    ),
                    const CustomDivider(
                      height: 0.5,
                    ),
                    ValueListenableBuilder(
                      valueListenable: viewStore,
                      builder: (context, value, child) {
                        return InkWell(
                          onTap: () => value.user != null &&
                                  value.user!.permissions != null &&
                                  value.user!.permissions!
                                      .contains("manager_room")
                              ? viewStore.send(
                                  const RoomManagarUpdateAction.buttonTapped(
                                    RoomManagerUpdateInputType.image,
                                  ),
                                )
                              : null,
                          child: CupertinoListTile.notched(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            title: Text(
                              "Fotos do quarto",
                              style: TextStyle(
                                fontSize: 16,
                                color: ColorMode.setColor(
                                  context: context,
                                  light: Colors.grey.shade800,
                                  dark: Colors.grey.shade200,
                                ),
                              ),
                            ),
                            trailing: const Icon(
                              CupertinoIcons.chevron_right,
                              size: 18,
                            ),
                          ),
                        );
                      },
                    ),
                    const CustomDivider(
                      height: 0.5,
                    ),
                  ],
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 8),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
