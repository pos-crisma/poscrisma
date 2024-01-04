import 'dart:async';

import 'package:core/core.dart';
import 'package:design/design.dart';

import '../action/room_type_action.dart';
import '../state/room_type_state.dart';

class RoomTypeReducer extends Reducer<RoomTypeAction, RoomTypeState> {
  RoomTypeReducer() : super(RoomTypeState());

  @override
  Future<Effect> reduce(RoomTypeAction action) async {
    return action.fold(
      (action) => _onAppear(),
      (action) => _updateRoomTypeImage(),
    );
  }

  _onAppear() {
    return Effect.run(() async {
      send(RoomTypeAction.updateRoomTypeImage());

      Timer.periodic(
        const Duration(minutes: 1),
        (_) => send(RoomTypeAction.updateRoomTypeImage()),
      );
    });
  }

  _updateRoomTypeImage() {
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
}
