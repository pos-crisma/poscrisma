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

      await send(CreateFamilyAction.loadingFamilyService());
      final result = await CreateFamilyAPI.createFamily(
        CreateFamilyRequestDTO(
          name: state.nameFamilyController.text,
          year: state.yearFamilyController.text,
        ),
        currentUserId: store.user!.userId,
      );

      result.fold(
        (successFamily) =>
            send(CreateFamilyAction.successFamilyService(successFamily)),
        (failure) => send(CreateFamilyAction.failureFamilyService(failure)),
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
          'title': errorInfo.response,
          'content': errorInfo.error.message.toString(),
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
}
