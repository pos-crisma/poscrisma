import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../action/invite_action.dart';
import '../state/invite_state.dart';

class InviteReducer extends Reducer<InviteAction, InviteState> {
  InviteReducer()
      : super(
          InviteState(
            textEditingController: TextEditingController(),
            onFocus: FocusNode(canRequestFocus: true),
            status: InviteServiceStatus.idle,
          ),
        );

  @override
  Future<Effect> reduce(InviteAction action) async {
    return action.fold(
      (action) => _onAppear(),
      (action) => _buttonTapped(),
      (action) => _service(),
      (action) => _loading(),
      (action) => _success(),
      (action) => _failure(),
    );
  }

  _onAppear() {
    value.onFocus.requestFocus();
    value.status = InviteServiceStatus.idle;
    return Effect.emit();
  }

  _buttonTapped() {
    return Effect.send(InviteAction.inviteService());
  }

  _service() {
    return Effect.run<void>(() async {
      await send(InviteAction.loadingInviteService());
      await Future.delayed(const Duration(seconds: 1));
      await send(InviteAction.successInviteService());
    });
  }

  _loading() {
    value.status = InviteServiceStatus.loading;
    return Effect.emit();
  }

  _success() {
    return Effect.run<void>(() async {
      await Modular.to.pushNamed('/invite/user');

      await send(InviteAction.onAppear());
    });
  }

  _failure() {
    return Effect.emit();
  }
}
