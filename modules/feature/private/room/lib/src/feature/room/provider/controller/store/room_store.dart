import 'dart:async';

import 'package:core/core.dart';
import 'package:design/design.dart';

import '../action/room_action.dart';
import '../state/room_state.dart';

class RoomReducer extends Reducer<RoomAction, RoomState> {
  RoomReducer() : super(RoomState());

  @override
  Future<Effect> reduce(RoomAction action) async {
    return action.fold(
      (action) => _onAppear(),
      (action) => _updateRoomImage(),
    );
  }

  _onAppear() {
    return Effect.run(() async {
      send(RoomAction.updateRoomImage());

      Timer.periodic(
        const Duration(minutes: 1),
        (_) => send(RoomAction.updateRoomImage()),
      );
    });
  }

  _updateRoomImage() {
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
