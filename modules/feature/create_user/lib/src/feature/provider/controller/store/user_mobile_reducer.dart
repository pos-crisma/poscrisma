import 'package:core/core.dart';
import 'package:create_user/src/feature/provider/dto/create_user_request_dto.dart';
import 'package:create_user/src/feature/provider/dto/create_user_response_dto.dart';
import 'package:flutter/cupertino.dart';

import '../../api/create_user_api.dart';
import '../../model/user_type.dart';
import '../action/user_mobile_action.dart';
import '../state/create_user_state.dart';

class UserMobileReducer extends Reducer<UserMobileAction, CreateUserState> {
  UserMobileReducer()
      : super(
          CreateUserState(
            emailController: TextEditingController(text: ''),
            emailFocus: FocusNode(),
            nameController: TextEditingController(text: ''),
            nameFocus: FocusNode(),
            passwordController: TextEditingController(text: ''),
            passwordFocus: FocusNode(),
            nicknameController: TextEditingController(text: ''),
            nicknameFocus: FocusNode(),
            phoneController: TextEditingController(text: ''),
            phoneFocus: FocusNode(),
            medicalController: TextEditingController(text: ''),
            medicalFocus: FocusNode(),
            contentOnPage: ContentOnPage.person,
          ),
        );

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
      (action) => _service(),
      (action) => _success(action.createUserResponseDTO),
      (action) => _failure(action.errorInfo),
      (action) => _loading(),
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
    return switch (state.contentOnPage) {
      ContentOnPage.person => () {
          state.contentOnPage = ContentOnPage.password;
          return Effect.emit();
        },
      ContentOnPage.password => () {
          state.contentOnPage = ContentOnPage.medical;
          return Effect.emit();
        },
      ContentOnPage.medical => () => Effect.send(UserMobileAction.service()),
    }();
  }

  _backButton() {
    return switch (state.contentOnPage) {
      ContentOnPage.person => () {
          return Effect.run(() async => Modular.to.pop());
        },
      ContentOnPage.password => () {
          state.contentOnPage = ContentOnPage.person;
          return Effect.emit();
        },
      ContentOnPage.medical => () {
          state.contentOnPage = ContentOnPage.password;
          return Effect.emit();
        },
    }();
  }

  _service() {
    return Effect.run(() async {
      send(UserMobileAction.loadingService());

      if (state.type != null && state.parishId != null) {
        final type = state.type?.name ?? '';
        final parishId = state.parishId ?? '';
        await CreateUserApi.send(
          CreateUserRequestDTO(
            name: state.nameController.text,
            nickName: state.nicknameController.text,
            phone: state.phoneController.text,
            email: state.emailController.text,
            type: type,
            password: state.passwordController.text,
            parishId: parishId,
            medicalRecord: state.medicalController.text,
          ),
        ).fold(
          (success) {
            send(UserMobileAction.loadingService());
            send(UserMobileAction.successService(success));
          },
          (error) {
            send(UserMobileAction.loadingService());
            send(UserMobileAction.failureService(error));
          },
        );
      } else {
        send(UserMobileAction.loadingService());
      }
    });
  }

  _success(CreateUserResponseDTO createUserResponseDTO) {
    return Effect.run(() async {
      print('Go to login flow');
    });
  }

  _failure(ErrorInfo errorInfo) {
    return Effect.run(() async {
      print('Create User error Flow $errorInfo');
    });
  }

  _loading() {
    state.isLoading = !state.isLoading;

    return Effect.emit();
  }
}
