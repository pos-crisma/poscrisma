import 'dart:async';

import 'package:core/core.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

import '../action/room_action.dart';
import '../state/room_state.dart';

class RoomReducer extends Reducer<RoomAction, RoomState> {
  RoomReducer()
      : super(
          RoomState(
            controller: ScrollController(initialScrollOffset: 1),
          ),
        );

  @override
  Future<Effect> reduce(RoomAction action) async => action.when(
        onAppear: _onAppear,
        updateRoomImage: _updateRoomImage,
        service: _service,
        scrollListener: _scrollListener,
        loading: _loading,
        success: _success,
        failure: _failure,
        buttonTapped: _buttonTapped,
      );

  FutureOr<Effect> _onAppear() {
    return Effect.run(() async {
      send(const RoomAction.updateRoomImage());

      Timer.periodic(
        const Duration(minutes: 1),
        (_) => send(const RoomAction.updateRoomImage()),
      );

      send(const RoomAction.service());

      state.controller.addListener(
        () => send(const RoomAction.scrollListener()),
      );
    });
  }

  FutureOr<Effect> _updateRoomImage() {
    DateTime now = DateTime.now();

    if (now.hour >= 8 && now.hour < 16) {
      if (state.image != roomDay) {
        state.image = roomDay;
      }
    } else if ((now.hour >= 16 && now.hour < 20)) {
      if (state.image != roomDawn) {
        state.image = roomDawn;
      }
    } else {
      if (state.image != roomMoon) {
        state.image = roomMoon;
      }
    }

    return Effect.emit();
  }

  FutureOr<Effect> _service() {
    return Effect.run(() async {
      await RoomAPI.getRooms().fold(
        (success) => send(RoomAction.success(success)),
        (error) => send(RoomAction.failure(error)),
      );
    });
  }

  FutureOr<Effect> _loading() {
    return Effect.emit();
  }

  FutureOr<Effect> _scrollListener() {
    if (state.controller.offset >= 65) {
      state.isCenterTitle = true;
    } else {
      state.isCenterTitle = false;
    }

    return Effect.emit();
  }

  FutureOr<Effect> _success(RoomSettingResponseDTO dto) {
    state.response = dto;
    return Effect.emit();
  }

  FutureOr<Effect> _failure(ErrorInfo errorData) {
    return Effect.emit();
  }

  FutureOr<Effect> _buttonTapped(Room room) {
    return Effect.emit();
  }
}
