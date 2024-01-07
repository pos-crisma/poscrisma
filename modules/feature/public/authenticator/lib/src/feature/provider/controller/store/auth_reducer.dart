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
    return action.fold(
      (action) => _onAppear(),
      (action) => _backButton(),
      (action) => _handlerTapped(),
      (action) => _service(),
      (action) => _success(action.responseDTO),
      (action) => _failure(action.errorInfo),
      (action) => _loading(),
    );
  }

  _onAppear() {
    return Effect.emit();
  }

  _handlerTapped() {
    return Effect.send(AuthAction.service());
  }

  _backButton() {
    return Effect.emit();
  }

  _service() {
    return Effect.run(() async {
      send(AuthAction.loadingService());

      await AuthApi.send(AuthRequestDTO(
        nickName: state.nicknameController.text,
        password: state.passwordController.text,
      )).fold(
        (success) {
          send(AuthAction.loadingService());
          send(AuthAction.successService(success));
        },
        (error) {
          send(AuthAction.loadingService());
          send(AuthAction.failureService(error));
        },
      );
    });
  }

  _success(AuthResponseDTO dto) {
    return Effect.run(() async {
      final Storage storage = Modular.get();
      await storage.put<String>('@token', dto.accessToken);

      Modular.to.navigate('/home/');
    });
  }

  _failure(ErrorInfo errorInfo) {
    return Effect.run(
      () async => Modular.to.pushNamed(
        '/error/',
        arguments: {
          'title': errorInfo.response.toString(),
          'content': errorInfo.error?.message.toString() ?? "",
          'backButton': () => Modular.to.pop(),
          'onPress': () {
            Modular.to.pop();
            AuthAction.service();
          },
          'titleButton': 'Tentar novamente',
          'isShowButton': true,
          'enableColor': Colors.amber,
        },
      ),
    );
  }

  _loading() {
    state.isLoading = !state.isLoading;

    return Effect.emit();
  }
}
