import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:home/src/feature/create_family/provider/dto/create_family_request_dto.dart';
import 'package:home/src/feature/create_family/provider/dto/create_family_response_dto.dart';
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
      (action) => _service(),
      (action) => _loading(),
      (action) => _successUser(action.user),
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
      await send(CreateFamilyAction.loadingFamilyService());
      final result = await CreateFamilyAPI.createFamily(
        CreateFamilyRequestDTO(
          name: state.nameFamilyController.text,
          year: state.yearFamilyController.text,
        ),
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
    return Effect.send(CreateFamilyAction.userService());
  }

  _failure(ErrorInfo errorInfo) {
    value.status = CreateFamilyServiceStatus.failure;

    return Effect.run(() async {
      Modular.to.pushNamed(
        '/error/',
        arguments: {
          'title': errorInfo.response,
          'content': errorInfo.error.message,
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

  _service() {
    return Effect.run<void>(() async {
      await send(CreateFamilyAction.loadingUserService());
      final result = await ProfileAPI.getProfile();

      result.fold(
        (success) => send(CreateFamilyAction.successUserService(success)),
        (failure) => send(CreateFamilyAction.failureUserService(failure)),
      );
    });
  }

  _successUser(ProfileDTO user) {
    final ProfileStore store = Modular.get();
    store.updateUser = user;

    return Effect.emit();
  }
}
