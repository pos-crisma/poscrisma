import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:room/src/feature/manager/room_manager_detail/provider/action/room_manager_detail_action.dart';
import 'package:store/store.dart';

import '../provider/store/room_manager_detail_store.dart';

class RoomManagerDetail extends StatefulWidget {
  const RoomManagerDetail({
    super.key,
    required this.room,
  });

  final Room room;

  @override
  State<RoomManagerDetail> createState() => _RoomManagerDetailState();
}

class _RoomManagerDetailState extends State<RoomManagerDetail> {
  final RoomManagarDetailReducer viewStore = RoomManagarDetailReducer();

  @override
  void initState() {
    super.initState();
    viewStore.send(RoomManagarDetailAction.onAppear(context));
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nome: ${widget.room.roomName}",
                ),
                Text(
                  "Bloco: ${widget.room.blockName}",
                ),
                Text(
                  "Vagas: ${widget.room.vacancies}",
                ),
                Text(
                  "Numero de hospedes: ${widget.room.hosted?.length}",
                ),
                Text(
                  (widget.room.availability != null &&
                          widget.room.availability!)
                      ? "Disponivel"
                      : "Indisponivel",
                ),
                Text(
                  (widget.room.roomType != null &&
                          widget.room.roomType == "Couple")
                      ? "Casal"
                      : "Solteiro",
                ),

                // Column(children: viewStore.state.hostedUserDTO.list.map((contentOnPage] {

                // }.toList(),),

                ValueListenableBuilder(
                  valueListenable: viewStore,
                  builder: (context, value, child) {
                    final hostedUser = value.hostedUserDTO;
                    if (hostedUser != null) {
                      final users = hostedUser.users;
                      if (users != null) {
                        return Column(
                          children: users.map((e) {
                            return Text(e.name ?? "");
                          }).toList(),
                        );
                      }
                    }

                    return Container();
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
