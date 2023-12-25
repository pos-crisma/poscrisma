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
    );
  }

  _onAppear() {
    final UserStore store = Modular.get();
    state.user = store.user;

    return Effect.emit();
  }
}
