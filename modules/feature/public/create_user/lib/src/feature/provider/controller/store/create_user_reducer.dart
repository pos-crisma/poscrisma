import 'dart:async';

import 'package:core/core.dart';
import 'package:design/design.dart';
import 'package:error/error.dart';
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
            birthdayController: TextEditingController(text: ''),
            birthdayFocus: FocusNode(),
            genderInput: UserGender.Male,
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
    // return action.fold(
    //   (action) => _onAppear(
    //     parishId: action.parishId,
    //     senderId: action.senderId,
    //     invite: action.invite,
    //     type: action.type,
    //   ),
    //   (action) => _handlerTapped(action.context),
    //   (action) => _genderTapped(action.gender),
    //   (action) => _backButton(),
    //   (action) => _service(action.context),
    //   (action) => _success(action.createUserResponseDTO),
    //   (action) => _failure(action.errorInfo, action.context),
    //   (action) => _loading(),
    // );

    return action.when(
      onAppear: _onAppear,
      handlerTapped: _handlerTapped,
      genderTapped: _genderTapped,
      backTapped: _backButton,
      service: _service,
      successService: _success,
      failureService: _failure,
      loadingService: _loading,
    );
  }

  FutureOr<Effect> _onAppear(
    String parishId,
    String senderId,
    UserType type,
    String invite,
    BuildContext context,
  ) {
    state.parishId = parishId;
    state.senderId = senderId;
    state.invite = invite;
    state.type = type;
    state.context = context;

    return Effect.emit();
  }

  FutureOr<Effect> _handlerTapped(BuildContext context) {
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

  FutureOr<Effect> _genderTapped(UserGender userGender) {
    state.genderInput = userGender;

    return Effect.emit();
  }

  FutureOr<Effect> _backButton() {
    return switch (state.contentOnPage) {
      ContentOnPage.person => () {
          return Effect.run(() async => state.context.pop());
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

  FutureOr<Effect> _service(BuildContext context) {
    return Effect.run(() async {
      send(const UserMobileAction.loadingService());

      if (state.type != null && state.parishId != null) {
        final type = state.type?.name ?? '';
        final inviteCode = _extractFromURL(state.invite ?? "");

        await CreateUserApi.send(
          CreateUserRequestDTO(
            user: UserDTO(
              name: state.nameController.text,
              gender: state.genderInput,
              birthdate: state.birthdayController.text,
              nickName: state.nicknameController.text
                  .toLowerCase()
                  .replaceAll(" ", ""),
              phone: state.phoneController.text,
              email: state.emailController.text,
              type: type,
              password: state.passwordController.text,
              medicalRecord: state.medicalController.text,
            ),
          ),
          inviteCode,
        ).fold(
          (success) {
            send(const UserMobileAction.loadingService());
            send(UserMobileAction.successService(success));
          },
          (error) {
            send(const UserMobileAction.loadingService());
            send(UserMobileAction.failureService(error, context));
          },
        );
      } else {
        send(const UserMobileAction.loadingService());
      }
    });
  }

  FutureOr<Effect> _success(CreateUserResponseDTO createUserResponseDTO) {
    return Effect.run(() async {
      toastification.show(
        context: state.context,
        type: ToastificationType.success,
        showProgressBar: false,
        title: const Text(
          'Sucesso para criação do quarto',
        ),
        autoCloseDuration: const Duration(seconds: 5),
      );
      state.context.goNamed('auth');
    });
  }

  FutureOr<Effect> _failure(ErrorInfo errorInfo, BuildContext context) {
    return Effect.run(() async {
      final message =
          errorInfo.message?.toString().replaceAll("[", "").replaceAll("]", "");
      final errorMessage = errorInfo.error?.message.toString();

      Navigator.of(state.context).push(
        MaterialPageRoute(
          builder: (context) {
            return ErrorPage(
              title: errorMessage,
              content: message,
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

  FutureOr<Effect> _loading() {
    state.isLoading = !state.isLoading;

    return Effect.emit();
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
