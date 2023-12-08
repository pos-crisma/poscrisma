import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';

import '../model/user_type.dart';
import '../action/user_mobile_action.dart';
import '../state/user_mobile_state.dart';

class UserMobileReducer extends Reducer<UserMobileAction, UserMobileState> {
  UserMobileReducer()
      : super(UserMobileState(
          pageViewer: PageViewer.nickname,
          textEditingController: TextEditingController(text: ''),
          onFocus: FocusNode(),
        ));

  @override
  Future<Effect> reduce(UserMobileAction action) async {
    return action.fold(
      (action) => _onAppear(
        parishId: action.parishId,
        spenderId: action.spenderId,
        type: action.type,
      ),
      (action) => _handlerTapped(),
      (action) => _backButton(),
    );
  }

  _onAppear({
    required String parishId,
    required String spenderId,
    required UserType type,
  }) {
    state.parishId = parishId;
    state.spenderId = spenderId;
    state.type = type;

    return Effect.emit();
  }

  _handlerTapped() {
    return Effect.emit();
  }

  _backButton() {
    return Effect.emit();
  }
}
