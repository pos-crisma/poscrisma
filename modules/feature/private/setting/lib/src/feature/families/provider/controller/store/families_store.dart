import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../action/families_action.dart';
import '../state/families_state.dart';

class FamiliesReducer extends Reducer<FamiliesAction, FamiliesState> {
  FamiliesReducer(BuildContext context)
      : super(FamiliesState(context: context));

  @override
  Future<Effect> reduce(FamiliesAction action) async => //
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
