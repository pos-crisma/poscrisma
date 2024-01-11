import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

import '../../api/create_family_api.dart';
import '../../dto/create_family_request_dto.dart';
import '../../dto/create_family_response_dto.dart';
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
    return action.when(
      onAppear: _onAppear,
      buttonTapped: _buttonTapped,
      familyService: _serviceFamily,
      loadingFamilyService: _loading,
      successFamilyService: _successFamily,
      failureFamilyService: _failure,
      validator: _validator,
    );
  }

  FutureOr<Effect> _onAppear(BuildContext context) {
    state.context = context;
    return Effect.emit();
  }

  FutureOr<Effect> _buttonTapped() {
    return Effect.send(const CreateFamilyAction.familyService());
  }

  FutureOr<Effect> _serviceFamily() {
    return Effect.run<void>(() async {
      await send(
        const CreateFamilyAction.validator(
          "",
          CreateFamilyTextFieldFailure.none,
        ),
      );

      if (profileStore.user == null) {
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
          const CreateFamilyAction.validator(
            "Nome da familia, invalido",
            CreateFamilyTextFieldFailure.name,
          ),
        );
      }

      if (!isValidYear(state.yearFamilyController.text)) {
        return send(
          const CreateFamilyAction.validator(
            "Não e um ano valido",
            CreateFamilyTextFieldFailure.year,
          ),
        );
      }

      await send(const CreateFamilyAction.loadingFamilyService());
      final result = await CreateFamilyAPI.createFamily(
        CreateFamilyRequestDTO(
          name: state.nameFamilyController.text,
          year: state.yearFamilyController.text,
        ),
        currentUserId: profileStore.user!.userId,
      );

      result.fold(
        (s) => send(CreateFamilyAction.successFamilyService(s)),
        (f) => send(CreateFamilyAction.failureFamilyService(f)),
      );
    });
  }

  FutureOr<Effect> _loading() {
    value.status = CreateFamilyServiceStatus.loading;
    return Effect.emit();
  }

  FutureOr<Effect> _successFamily(CreateFamilyResponseDTO family) {
    return Effect.run(() async {
      state.context.pushReplacement('home');
    });
  }

  FutureOr<Effect> _failure(ErrorInfo errorInfo) {
    value.status = CreateFamilyServiceStatus.failure;

    return Effect.run(() async {
      state.context.pushNamed(
        '/error/',
        queryParameters: {
          'title': errorInfo.response.toString(),
          'content': errorInfo.error?.message.toString() ?? "",
          'backButton': () => state.context.pop(),
          'onPress': () {
            state.context.pop();
            const CreateFamilyAction.familyService();
          },
          'titleButton': 'Tentar novamente',
          'isShowButton': false,
          'enableColor': Colors.amber,
        },
      );
    });
  }

  FutureOr<Effect> _validator(
      String error, CreateFamilyTextFieldFailure failure) {
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
