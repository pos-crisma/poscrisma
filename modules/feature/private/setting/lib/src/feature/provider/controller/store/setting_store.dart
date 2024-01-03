import 'dart:async';

import 'package:core/core.dart';
import 'package:store/store.dart';

import '../action/setting_action.dart';
import '../state/setting_state.dart';

class SettingReducer extends Reducer<SettingAction, SettingState> {
  SettingReducer() : super(SettingState());

  @override
  Future<Effect> reduce(SettingAction action) async {
    return action.fold(
      (action) => _onAppear(),
      (action) => _logoutButtonTapped(),
    );
  }

  _onAppear() {
    final ProfileStore store = Modular.get();
    state.user = store.user;

    return Effect.emit();
  }

  _logoutButtonTapped() {
    return Effect.run(() async {
      final Storage storage = Modular.get();
      await storage.delete("@token");
      Modular.to.navigate('/');
    });
  }
}
