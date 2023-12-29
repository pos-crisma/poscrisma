import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../../api/invite_api.dart';
import '../../model/invite_model.dart';
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
      (action) => _success(action.invite),
      (action) => _failure(action.error),
    );
  }

  _onAppear() {
    // value.onFocus.requestFocus();
    value.status = InviteServiceStatus.idle;

    return Effect.emit();
  }

  _buttonTapped() {
    return Effect.send(InviteAction.inviteService());
  }

  _service() {
    return Effect.run<void>(() async {
      await send(InviteAction.loadingInviteService());
      final result = await InviteApi.invite(state.textEditingController.text);

      result.fold(
        (success) => send(InviteAction.successInviteService(success)),
        (failure) => send(InviteAction.failureInviteService(failure)),
      );
    });
  }

  _loading() {
    value.status = InviteServiceStatus.loading;
    return Effect.emit();
  }

  _success(Invite invite) {
    return Effect.run<void>(() async {
      if (invite.type == InviteType.CreateParish) {
        Modular.to.popAndPushNamed('/parish/', arguments: {
          "parishId": invite.parishId,
          "senderId": invite.senderId,
          "type": invite.typeUser?.name ?? UserType.GodParent.name,
          "invite": state.textEditingController.text,
        });
      }

      if (invite.type == InviteType.CreateUser) {
        await Modular.to.popAndPushNamed('/create_user/', arguments: {
          "parishId": invite.parishId,
          "senderId": invite.senderId,
          "type": invite.typeUser?.name,
          "invite": state.textEditingController.text,
        });
      }
    });
  }

  _failure(ErrorInfo errorInfo) {
    value.status = InviteServiceStatus.failure;

    return Effect.run(() async {
      Modular.to.pushNamed(
        '/error/',
        arguments: {
          'title': errorInfo.response,
          'content': errorInfo.error.message,
          'backButton': () => Modular.to.pop(),
          'onPress': () {
            Modular.to.pop();
            InviteAction.inviteService();
          },
          'titleButton': 'Tentar novamente',
          'isShowButton': false,
          'enableColor': Colors.amber,
        },
      );
    });
  }
}
