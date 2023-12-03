import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';

import '../action/invite_action.dart';
import '../state/invite_state.dart';

class InviteReducer extends Reducer<InviteAction, InviteState> {
  InviteReducer()
      : super(
          InviteState(
            textEditingController: TextEditingController(),
            onFocus: FocusNode(),
          ),
        );

  @override
  Future<Effect> reduce(InviteAction action) async {
    return action.fold(
      (action) => _buttonTapped(),
      (action) => _service(),
      (action) => _success(),
      (action) => _failure(),
    );
  }

  _buttonTapped() {
    print("State: ${value.textEditingController.text}");
    print("State: ${value.onFocus.hasFocus}");

    return Effect.none();
  }

  _service() {
    return Effect.none();
  }

  _success() {
    return Effect.none();
  }

  _failure() {
    return Effect.none();
  }
}
