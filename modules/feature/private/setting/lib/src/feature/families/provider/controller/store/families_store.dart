import 'dart:async';

import 'package:core/core.dart';
import 'package:error/error.dart';
import 'package:flutter/material.dart';

import '../../api/family_api.dart';
import '../../dto/families_response_dto.dart';
import '../action/families_action.dart';
import '../state/families_state.dart';

class FamiliesReducer extends Reducer<FamiliesAction, FamiliesState> {
  FamiliesReducer(BuildContext context)
      : super(FamiliesState(context: context));

  @override
  Future<Effect> reduce(FamiliesAction action) async => //
      action.when(
        onAppear: _onAppear,
        pullToRefresh: _pullToRefresh,
        loading: _loading,
        service: _service,
        success: _success,
        failure: _failure,
      );

  FutureOr<Effect> _onAppear() {
    return Effect.run(() async {
      await send(const FamiliesAction.loading(true));
      await send(const FamiliesAction.service());
    });
  }

  FutureOr<Effect> _pullToRefresh() {
    return Effect.run(() async {
      await send(const FamiliesAction.loading(true));
      await send(const FamiliesAction.service());
    });
  }

  FutureOr<Effect> _loading(bool isLoading) {
    state.isLoading = isLoading;
    return Effect.emit();
  }

  FutureOr<Effect> _service() {
    return Effect.run(() async {
      await FamilyAPI.get().fold(
        (success) => send(FamiliesAction.success(success)),
        (error) => send(FamiliesAction.failure(error)),
      );
    });
  }

  FutureOr<Effect> _failure(ErrorInfo errorInfo) {
    return Effect.run(() async {
      send(const FamiliesAction.loading(false));

      final message =
          errorInfo.message?.toString().replaceAll("[", "").replaceAll("]", "");
      final errorMessage = errorInfo.error?.message.toString();

      Navigator.of(state.context).push(
        MaterialPageRoute(
          builder: (context) {
            return ErrorPage(
              title: errorMessage,
              content: message == "" ? null : message,
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

  FutureOr<Effect> _success(FamiliesResponseDTO data) {
    state.families = data.families;
    return Effect.send(const FamiliesAction.loading(false));
  }
}
