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
  Future<Effect> reduce(CreateMascotAction action) async {
    return action.fold(
      (action) => _onAppear(),
      (action) => _handlerTapped(),
      (action) => _genderTapped(action.gender),
      (action) => _service(),
      (action) => _success(),
      (action) => _failure(action.errorInfo),
      (action) => _loading(),
    );
  }

  _onAppear() {
    return Effect.emit();
  }

  _handlerTapped() {
    return switch (state.contentOnPage) {
      ContentOnPage.person => () {
          return Effect.run(() async {
            send(CreateMascotAction.service());
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
      send(CreateMascotAction.loadingService());
      final ProfileStore store = Modular.get();
      final user = store.user;

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
            send(CreateMascotAction.loadingService());
            send(CreateMascotAction.successService(success));
          },
          (error) {
            send(CreateMascotAction.loadingService());
            send(CreateMascotAction.failureService(error));
          },
        );
      } else {
        send(CreateMascotAction.loadingService());
      }
    });
  }

  _success() {
    return Effect.run(() async => Modular.to.pop(true));
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
