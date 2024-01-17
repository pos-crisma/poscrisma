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
      );

  FutureOr<Effect> _onAppear(BuildContext context) {
    state.context = context;

    return Effect.runAndEmit(() async {
      send(const RoomManagerAction.loading());
      send(const RoomManagerAction.service());
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
      );
    });
  }

  FutureOr<Effect> _buttonTapped(Room room) {
    return Effect.run(() async {
      showModalBottomSheet(
        context: state.context,
        isScrollControlled: true,
        useSafeArea: true,
        barrierColor: Colors.transparent,
        builder: (context) {
          return RoomManagerDetail(room: room);
        },
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
    state.response = dto;
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
}
