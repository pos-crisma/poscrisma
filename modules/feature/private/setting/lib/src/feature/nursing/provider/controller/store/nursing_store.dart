import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../action/nursing_action.dart';
import '../state/nursing_state.dart';

class NursingReducer extends Reducer<NursingAction, NursingState> {
  NursingReducer(BuildContext context) : super(NursingState(context: context));

  @override
  Future<Effect> reduce(NursingAction action) async => //
      action.when(
        onAppear: _onAppear,
        service: _service,
        success: _success,
        failure: _failure,
      );

  FutureOr<Effect> _onAppear() {
    return Effect.emit();
  }

  FutureOr<Effect> _service() {
    return Effect.run(() async {});
  }

  FutureOr<Effect> _failure(ErrorInfo errorInfo) {
    return Effect.run(() async {});
  }

  FutureOr<Effect> _success(dynamic data) {
    return Effect.run(() async {});
  }
}
