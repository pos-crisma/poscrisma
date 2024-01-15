import 'dart:async';

import 'package:core/core.dart';
import 'package:error/error.dart';
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
    return action.when(
      onAppear: _onAppear,
      buttonTapped: _buttonTapped,
      inviteService: _service,
      loadingInviteService: _loading,
      successInviteService: _success,
      failureInviteService: _failure,
    );
  }

  FutureOr<Effect> _onAppear(BuildContext context) {
    // value.onFocus.requestFocus();
    state.context = context;
    state.status = InviteServiceStatus.idle;

    return Effect.emit();
  }

  FutureOr<Effect> _buttonTapped() {
    return Effect.send(const InviteAction.inviteService());
  }

  FutureOr<Effect> _service() {
    return Effect.run<void>(() async {
      await send(const InviteAction.loadingInviteService());
      final inviteCode = _extractFromURL(state.textEditingController.text);

      final result = await InviteApi.invite(inviteCode);

      result.fold(
        (success) => send(InviteAction.successInviteService(success)),
        (failure) => send(InviteAction.failureInviteService(failure)),
      );
    });
  }

  FutureOr<Effect> _loading() {
    value.status = InviteServiceStatus.loading;
    return Effect.emit();
  }

  FutureOr<Effect> _success(Invite invite) {
    return Effect.run<void>(() async {
      if (invite.type == InviteType.CreateParish) {
        state.context.pushReplacementNamed('parish', queryParameters: {
          "parishId": invite.parishId,
          "senderId": invite.senderId,
          "type": invite.typeUser?.name ?? UserType.Young.name,
          "invite": state.textEditingController.text,
        });
      }

      if (invite.type == InviteType.CreateUser ||
          invite.type == InviteType.CreateParent) {
        state.context.pushReplacementNamed('create_user', queryParameters: {
          "parishId": invite.parishId,
          "senderId": invite.senderId,
          "type": invite.typeUser?.name ?? UserType.Young.name,
          "invite": state.textEditingController.text,
        });
      }
    });
  }

  FutureOr<Effect> _failure(ErrorInfo errorInfo) {
    state.status = InviteServiceStatus.failure;

    return Effect.runAndEmit(() async {
      // state.context.pushNamed(
      //   'error',
      //   queryParameters: {
      //     'title': errorInfo.response.toString(),
      //     'content': errorInfo.error?.message.toString() ?? "",
      //     'backButton': () => state.context.pop(),
      //     'onPress': () {
      //       state.context.pop();
      //       const InviteAction.inviteService();
      //     },
      //     'titleButton': 'Tentar novamente',
      //     'isShowButton': false,
      //     'enableColor': Colors.transparent,
      //   },
      // );

      Navigator.of(state.context).push(
        MaterialPageRoute(
          builder: (context) {
            return ErrorPage(
              title: errorInfo.response.toString(),
              content: errorInfo.error?.message.toString() ?? "",
              backButton: () => Navigator.of(state.context).pop(),
              onPress: null,
              isShowButton: false,
              enableColor: Colors.transparent,
            );
          },
        ),
      );
    });
  }

  String _extractFromURL(String inviteCode) {
    // Expressão regular para encontrar a parte desejada da URL
    RegExp regex = RegExp(r'/invite/([^/]+)');

    // Tenta fazer o match da expressão regular na URL
    Match? match = regex.firstMatch(inviteCode);

    // Se houver um match, retorna a parte desejada, senão retorna null
    return match?.group(1) ?? inviteCode;
  }
}
