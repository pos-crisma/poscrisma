import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../action/invite_action.dart';
import '../state/invite_state.dart';

class InviteReducer extends Reducer<InviteAction, InviteState> {
  InviteReducer() : super(InviteState());

  @override
  Future<Effect> reduce(InviteAction action) async {
    return action.fold(
      (action) => _onAppear(action.context),
      (action) => _inviteButtonTapped(),
      (action) => _successInviteGenerate(),
      (action) => _failureInviteGenerate(action.error),
      (action) => _inviteSelector(action.selector),
      (action) => _inviteIsGuest(),
    );
  }

  _onAppear(BuildContext context) {
    state.context = context;

    return Effect.emit();
  }

  _inviteButtonTapped() {
    return Effect.emit();
  }

  _successInviteGenerate() {
    return Effect.emit();
  }

  _failureInviteGenerate(ErrorInfo errorInfo) {
    value.status = ViewStatus.failure;

    return Effect.run(() async {
      Modular.to.pushNamed(
        '/error/',
        arguments: {
          'title': errorInfo.response.toString(),
          'content': errorInfo.error?.message.toString() ?? "",
          'backButton': () => Modular.to.pop(),
          'onPress': () {
            Modular.to.pop();
          },
          'titleButton': 'Tentar novamente',
          'isShowButton': false,
          'enableColor': Colors.transparent,
        },
      );
    });
  }

  _inviteSelector(int value) {
    state.inviteSelector = value;
    return Effect.emit();
  }

  _inviteIsGuest() {
    state.isGuest = !state.isGuest;
    return Effect.emit();
  }
}
