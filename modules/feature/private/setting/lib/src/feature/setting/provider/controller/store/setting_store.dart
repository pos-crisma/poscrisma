import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

import '../action/setting_action.dart';
import '../state/setting_state.dart';

class SettingReducer extends Reducer<SettingAction, SettingState> {
  SettingReducer() : super(SettingState());

  @override
  Future<Effect> reduce(SettingAction action) async => //
      action.when(
        onAppear: _onAppear,
        logoutButtonTapped: _logoutButtonTapped,
      );

  FutureOr<Effect> _onAppear(BuildContext context) {
    state.user = profileStore.user;
    state.context = context;

    return Effect.emit();
  }

  FutureOr<Effect> _logoutButtonTapped() {
    return Effect.run(() async {
      await hiveStorage.delete("@token");
      state.context.go('/');
    });
  }
}
