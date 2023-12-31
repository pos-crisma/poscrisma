import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:home/src/feature/create_family/provider/dto/create_family_request_dto.dart';
import 'package:home/src/feature/create_family/provider/dto/create_family_response_dto.dart';
import 'package:home/src/feature/home/provider/controller/action/home_action.dart';
import 'package:home/src/feature/home/provider/controller/store/home_store.dart';
import 'package:store/store.dart';

import '../../api/create_family_api.dart';
import '../action/create_family_action.dart';
import '../state/create_family_state.dart';

class CreateFamilyReducer
    extends Reducer<CreateFamilyAction, CreateFamilyState> {
  CreateFamilyReducer()
      : super(
          CreateFamilyState(
            status: CreateFamilyServiceStatus.idle,
            nameFamilyController: TextEditingController(text: ''),
            nameFamilyFocus: FocusNode(),
            yearFamilyController: TextEditingController(text: ''),
            yearFamilyFocus: FocusNode(),
          ),
        );

  @override
  Future<Effect> reduce(CreateFamilyAction action) async {
    return action.fold(
      (action) => _onAppear(),
      (action) => _buttonTapped(),
      (action) => _serviceFamily(),
      (action) => _loading(),
      (action) => _successFamily(action.family),
      (action) => _failure(action.error),
      (action) => _validator(action.error, action.failure),
    );
  }

  _onAppear() {
    return Effect.emit();
  }

  _buttonTapped() {
    return Effect.send(CreateFamilyAction.familyService());
  }

  _serviceFamily() {
    return Effect.run<void>(() async {
      final ProfileStore store = Modular.get();

      await send(
        CreateFamilyAction.validator(
          "",
          CreateFamilyTextFieldFailure.none,
        ),
      );

      if (store.user == null) {
        return send(
          CreateFamilyAction.failureFamilyService(
            ErrorInfo(
              code: -2,
              response: "Problema ao recuperar o seu identificador unico",
              error: ErrorData(
                type: "userId not found",
                statusCode: 0,
                message: "Erro ao recuperar seu identificador unico",
              ),
            ),
          ),
        );
      }

      if (state.nameFamilyController.text.length < 3) {
        return send(
          CreateFamilyAction.validator(
            "Nome da familia, invalido",
            CreateFamilyTextFieldFailure.name,
          ),
        );
      }

      if (!isValidYear(state.yearFamilyController.text)) {
        return send(
          CreateFamilyAction.validator(
            "Não e um ano valido",
            CreateFamilyTextFieldFailure.year,
          ),
        );
      }

      await send(CreateFamilyAction.loadingFamilyService());
      final result = await CreateFamilyAPI.createFamily(
        CreateFamilyRequestDTO(
          name: state.nameFamilyController.text,
          year: state.yearFamilyController.text,
        ),
        currentUserId: store.user!.userId,
      );

      result.fold(
        (s) => send(CreateFamilyAction.successFamilyService(s)),
        (f) => send(CreateFamilyAction.failureFamilyService(f)),
      );
    });
  }

  _loading() {
    value.status = CreateFamilyServiceStatus.loading;
    return Effect.emit();
  }

  _successFamily(CreateFamilyResponseDTO family) {
    return Effect.run(() async {
      final HomeReducer viewStore = Modular.get();
      viewStore.send(HomeAction.userService());
      Modular.to.pop();
    });
  }

  _failure(ErrorInfo errorInfo) {
    value.status = CreateFamilyServiceStatus.failure;

    return Effect.run(() async {
      Modular.to.pushNamed(
        '/error/',
        arguments: {
          'title': errorInfo.error.message.toString(),
          'content': errorInfo.response,
          'backButton': () => Modular.to.pop(),
          'onPress': () {
            Modular.to.pop();
            CreateFamilyAction.familyService();
          },
          'titleButton': 'Tentar novamente',
          'isShowButton': false,
          'enableColor': Colors.amber,
        },
      );
    });
  }

  _validator(String error, CreateFamilyTextFieldFailure failure) {
    state.errorMessage = error;
    state.failure = failure;
    return Effect.emit();
  }

  bool isValidYear(String year) {
    // Define a regular expression pattern for a four-digit year
    RegExp yearRegExp = RegExp(r'^\d{4}$');

    // Test if the year string matches the pattern
    return yearRegExp.hasMatch(year);
  }
}
