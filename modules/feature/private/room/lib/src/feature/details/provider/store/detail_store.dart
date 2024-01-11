import 'dart:async';
import 'dart:developer';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

import '../action/detail_action.dart';
import '../state/detail_state.dart';

class DetailReducer extends Reducer<DetailAction, DetailState> {
  DetailReducer() : super(DetailState());

  @override
  Future<Effect> reduce(DetailAction action) async => //
      action.when(
        onAppear: _onAppear,
        buttonTapped: _buttonTapped,
        buttonUserTapped: _buttonUserTapped,
      );

  FutureOr<Effect> _onAppear(BuildContext context, Room room) {
    state.context = context;
    state.room = room;

    final user = profileStore.user;
    if (user != null) {
      state.user = user;
    }

    return Effect.emit();
  }

  FutureOr<Effect> _buttonUserTapped(String userId) {
    return Effect.run(() async {
      log(userId, name: "UserId");
      // showDetail(
      //   state.context,
      //   Detail: Detail,
      //   onClose: (bool? value) {},
      // );
    });
  }

  FutureOr<Effect> _buttonTapped(String roomId) {
    return Effect.run(() async {
      log(roomId, name: "RoomId");
      // showDetail(
      //   state.context,
      //   Detail: Detail,
      //   onClose: (bool? value) {},
      // );
    });
  }
}
