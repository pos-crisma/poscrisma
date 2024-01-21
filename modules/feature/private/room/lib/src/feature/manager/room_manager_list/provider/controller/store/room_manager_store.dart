import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

import '../../../../room_manager_add/view/room_manager_add.dart';
import '../../../../room_manager_detail/view/room_manager_detail.dart';
import '../action/room_manager_action.dart';
import '../state/room_manager_state.dart';

class RoomManagerReducer extends Reducer<RoomManagerAction, RoomManagerState> {
  RoomManagerReducer() : super(RoomManagerState());

  @override
  Future<Effect> reduce(RoomManagerAction action) async => //
      action.when(
        onAppear: _onAppear,
        buttonTapped: _buttonTapped,
        buttonAddRoomTapped: _buttonAddRoomTapped,
        service: _service,
        loading: _loading,
        success: _success,
        failure: _failure,
        filterRoomByText: _filterRoomByText,
        pullToRefresh: _pullToRefresh,
      );

  FutureOr<Effect> _onAppear(BuildContext context) {
    state.context = context;

    return Effect.runAndEmit(() async {
      send(const RoomManagerAction.loading());
      send(const RoomManagerAction.service());

      state.filterRoomController.addListener(() {
        final text = state.filterRoomController.text;

        send(RoomManagerAction.filterRoomByText(text));
      });
    });
  }

  FutureOr<Effect> _buttonAddRoomTapped() {
    return Effect.run(() async {
      showModalBottomSheet(
        context: state.context,
        isScrollControlled: true,
        useSafeArea: true,
        enableDrag: kIsWeb ? false : true,
        isDismissible: kIsWeb ? false : true,
        barrierColor: Colors.transparent,
        builder: (context) {
          return const RoomManagerAdd();
        },
      ).then((value) {
        if (value is bool && value == true) {
          send(const RoomManagerAction.loading());
          send(const RoomManagerAction.service());
        }
      });
    });
  }

  FutureOr<Effect> _buttonTapped(Room room) {
    return Effect.run(() async {
      Navigator.push(
        state.context,
        MaterialPageRoute(
          builder: (context) {
            return Hero(
              tag: room.roomId ?? "room_id",
              child: RoomManagerDetail(room: room),
            );
          },
        ),
      );
    });
  }

  FutureOr<Effect> _service() => Effect.run(() async {
        await RoomAPI.getRooms().fold(
          (success) => send(RoomManagerAction.success(success)),
          (error) => send(RoomManagerAction.failure(error)),
        );
      });

  FutureOr<Effect> _loading() {
    state.isLoading = !state.isLoading;
    return Effect.emit();
  }

  FutureOr<Effect> _success(RoomSettingResponseDTO dto) {
    state.rooms = dto.rooms;
    state.filterRooms = dto.rooms;
    return Effect.runAndEmit(() async {
      send(const RoomManagerAction.loading());
    });
  }

  FutureOr<Effect> _failure(ErrorInfo errorInfo) {
    state.info = errorInfo;

    return Effect.runAndEmit(() async {
      send(const RoomManagerAction.loading());
    });
  }

  FutureOr<Effect> _filterRoomByText(String text) {
    if (state.rooms != null && text.isNotEmpty) {
      state.filterRooms = state.rooms!
          .where(
            (element) =>
                element.roomName != null &&
                removeDiacritics(element.roomName!.toLowerCase())
                    .contains(removeDiacritics(text.toLowerCase())),
          )
          .toList();
    } else {
      state.filterRooms = state.rooms;
    }

    return Effect.emit();
  }

  FutureOr<Effect> _pullToRefresh() {
    return Effect.run(() async {
      await send(const RoomManagerAction.loading());
      await send(const RoomManagerAction.service());
    });
  }
}
