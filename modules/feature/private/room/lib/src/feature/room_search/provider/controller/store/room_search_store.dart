import 'dart:async';

import 'package:core/core.dart';
import 'package:design/design.dart';

import '../action/room_search_action.dart';
import '../state/room_search_state.dart';

class RoomSearchReducer extends Reducer<RoomSearchAction, RoomSearchState> {
  RoomSearchReducer() : super(RoomSearchState());

  @override
  Future<Effect> reduce(RoomSearchAction action) async {
    return action.fold(
      (action) => _onAppear(),
      (action) => _updateRoomSearchImage(),
    );
  }

  _onAppear() {
    return Effect.run(() async {
      send(RoomSearchAction.updateRoomSearchImage());

      Timer.periodic(
        const Duration(minutes: 1),
        (_) => send(RoomSearchAction.updateRoomSearchImage()),
      );
    });
  }

  _updateRoomSearchImage() {
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
