import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../api/create_user_api.dart';
import '../../dto/create_user_request_dto.dart';
import '../../dto/create_user_response_dto.dart';
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
        senderId: action.senderId,
        invite: action.invite,
        type: action.type,
      ),
      (action) => _handlerTapped(action.context),
      (action) => _backButton(),
      (action) => _service(action.context),
      (action) => _success(action.createUserResponseDTO),
      (action) => _failure(action.errorInfo, action.context),
      (action) => _loading(),
    );
  }

  _onAppear({
    required String parishId,
    required String senderId,
    required String invite,
    required UserType type,
  }) {
    state.parishId = parishId;
    state.senderId = senderId;
    state.invite = invite;
    state.type = type;

    return Effect.emit();
  }

  _handlerTapped(BuildContext context) {
    return switch (state.contentOnPage) {
      ContentOnPage.person => () {
          state.contentOnPage = ContentOnPage.password;
          return Effect.emit();
        },
      ContentOnPage.password => () {
          state.contentOnPage = ContentOnPage.medical;
          return Effect.emit();
        },
      ContentOnPage.medical => () => Effect.send(
            UserMobileAction.service(context),
          ),
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

  _service(BuildContext context) {
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
          state.invite ?? "",
        ).fold(
          (success) {
            send(UserMobileAction.loadingService());
            send(UserMobileAction.successService(success));
          },
          (error) {
            send(UserMobileAction.loadingService());
            send(UserMobileAction.failureService(error, context));
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

  _failure(ErrorInfo errorInfo, BuildContext context) {
    return Effect.run(
      () async => Modular.to.pushNamed(
        '/error/',
        arguments: {
          'title': errorInfo.response,
          'content': errorInfo.error.message,
          'backButton': () => Modular.to.pop(),
          'onPress': () {
            Modular.to.pop();
            UserMobileAction.service(context);
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
