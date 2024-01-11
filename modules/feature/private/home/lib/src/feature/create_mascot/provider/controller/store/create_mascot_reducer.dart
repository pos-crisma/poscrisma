import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

import '../../api/create_mascot_api.dart';
import '../../dto/create_mascot_request_dto.dart';
import '../action/create_mascot_action.dart';
import '../state/create_mascot_state.dart';

class CreateMascotReducer
    extends Reducer<CreateMascotAction, CreateMascotState> {
  CreateMascotReducer()
      : super(
          CreateMascotState(
            ageController: TextEditingController(text: ''),
            ageFocus: FocusNode(),
            nameController: TextEditingController(text: ''),
            nameFocus: FocusNode(),
            genderInput: UserGender.Male,
            contentOnPage: ContentOnPage.person,
          ),
        );

  @override
  Future<Effect> reduce(CreateMascotAction action) async => action.when(
        onAppear: _onAppear,
        handlerTapped: () => _handlerTapped(),
        genderTapped: (gender) => _genderTapped(gender),
        service: () => _service(),
        successService: (dto) => _success(),
        failureService: (errorInfo) => _failure(errorInfo),
        loadingService: () => _loading(),
      );

  FutureOr<Effect> _onAppear(BuildContext context) {
    state.context = context;
    return Effect.emit();
  }

  _handlerTapped() {
    return switch (state.contentOnPage) {
      ContentOnPage.person => () {
          return Effect.run(() async {
            send(const CreateMascotAction.service());
          });
        },
    }();
  }

  _genderTapped(UserGender userGender) {
    state.genderInput = userGender;

    return Effect.emit();
  }

  _service() {
    return Effect.run(() async {
      send(const CreateMascotAction.loadingService());
      final user = profileStore.user;

      if (user != null) {
        await CreateMascotApi.send(
          CreateMascotRequestDTO(
            age: state.ageController.text,
            gender: state.genderInput.name,
            name: state.nameController.text,
          ),
          user.userId,
        ).fold(
          (success) {
            send(const CreateMascotAction.loadingService());
            send(CreateMascotAction.successService(success));
          },
          (error) {
            send(const CreateMascotAction.loadingService());
            send(CreateMascotAction.failureService(error));
          },
        );
      } else {
        send(const CreateMascotAction.loadingService());
      }
    });
  }

  _success() {
    return Effect.run(() async => state.context.pop(true));
  }

  _failure(ErrorInfo errorInfo) {
    return Effect.run(
      () async => state.context.pushNamed(
        'error',
        queryParameters: {
          'title': errorInfo.response.toString(),
          'content': errorInfo.error?.message.toString() ?? "",
          'backButton': () => state.context.pop(),
          'onPress': () {
            state.context.pop();
          },
          'titleButton': 'Tentar novamente',
          'isShowButton': true,
          'enableColor': Colors.transparent,
        },
      ),
    );
  }

  _loading() {
    state.isLoading = !state.isLoading;

    return Effect.emit();
  }
}
