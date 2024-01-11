import 'dart:async';

import 'package:authenticator/src/feature/provider/dto/auth_request_dto.dart';
import 'package:authenticator/src/feature/provider/dto/auth_response_dto.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../../api/auth_api.dart';
import '../action/auth_action.dart';
import '../state/auth_state.dart';

class AuthReducer extends Reducer<AuthAction, AuthState> {
  AuthReducer()
      : super(
          AuthState(
            passwordController: TextEditingController(text: ''),
            passwordFocus: FocusNode(),
            nicknameController: TextEditingController(text: ''),
            nicknameFocus: FocusNode(),
          ),
        );

  @override
  Future<Effect> reduce(AuthAction action) async {
    return action.when(
      onAppear: _onAppear,
      backTapped: _backTapped,
      handlerTapped: _handlerTapped,
      service: _service,
      successService: _success,
      failureService: _failure,
      loadingService: _loading,
      moveToHome: _moveToHome,
    );
  }

  FutureOr<Effect> _onAppear(BuildContext context) {
    state.context = context;
    return Effect.emit();
  }

  FutureOr<Effect> _handlerTapped() {
    return Effect.send(const AuthAction.service());
  }

  FutureOr<Effect> _backTapped() {
    return Effect.emit();
  }

  FutureOr<Effect> _service() {
    return Effect.run(() async {
      send(const AuthAction.loadingService());

      await AuthApi.send(AuthRequestDTO(
        nickName: state.nicknameController.text,
        password: state.passwordController.text,
      )).fold(
        (success) {
          send(const AuthAction.loadingService());
          send(AuthAction.successService(success));
        },
        (error) {
          send(const AuthAction.loadingService());
          send(AuthAction.failureService(error));
        },
      );
    });
  }

  FutureOr<Effect> _success(AuthResponseDTO dto) {
    return Effect.run(() async {
      await hiveStorage.put<String>('@token', dto.accessToken);
      send(const AuthAction.moveToHome());
    });
  }

  FutureOr<Effect> _failure(ErrorInfo errorInfo) {
    return Effect.run(() async {
      state.context.pushNamed(
        'error',
        queryParameters: {
          'title': errorInfo.response.toString(),
          'content': errorInfo.error?.message.toString() ?? "",
          'backButton': () => state.context.pop(),
          'onPress': () {
            state.context.pop();
            send(const AuthAction.service());
          },
          'titleButton': 'Tentar novamente',
          'isShowButton': true,
          'enableColor': Colors.transparent,
        },
      );
    });
  }

  FutureOr<Effect> _loading() {
    state.isLoading = !state.isLoading;

    return Effect.emit();
  }

  FutureOr<Effect> _moveToHome() {
    return Effect.run(() async {
      state.context.goNamed('home');
    });
  }
}
