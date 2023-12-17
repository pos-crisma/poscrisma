import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../../api/parish_api.dart';
import '../../model/parish_model.dart';
import '../action/parish_action.dart';
import '../state/parish_state.dart';

class ParishReducer extends Reducer<ParishAction, ParishState> {
  ParishReducer()
      : super(ParishState(
          onFocus: FocusNode(canRequestFocus: true),
          status: ParishServiceStatus.idle,
        ));

  @override
  Future<Effect> reduce(ParishAction action) async {
    return action.fold(
      (action) => _onAppear(action.parishId),
      (action) => _buttonTapped(),
      (action) => _service(action.parishId),
      (action) => _loading(),
      (action) => _success(action.parish),
      (action) => _failure(action.error),
    );
  }

  _onAppear(String parishId) {
    value.status = ParishServiceStatus.idle;

    return Effect.send(ParishAction.service(parishId));
  }

  _buttonTapped() {}

  _service(String parishId) {
    return Effect.run<void>(() async {
      await send(ParishAction.loadingService());
      final result = await ParishApi.getParishById(parishId);

      result.fold(
        (success) => send(ParishAction.successService(success)),
        (failure) => send(ParishAction.failureService(failure)),
      );
    });
  }

  _loading() {
    value.status = ParishServiceStatus.loading;
    return Effect.emit();
  }

  _success(Parish parish) {
    value.parish = parish;

    return Effect.emit();
  }

  _failure(ErrorInfo error) {
    value.status = ParishServiceStatus.failure;

    return Effect.emit();
  }
}
