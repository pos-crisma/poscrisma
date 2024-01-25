import 'dart:async';

import 'package:core/core.dart';
import 'package:error/error.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

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
        filterUserByText: _filterUserByText,
      );

  FutureOr<Effect> _onAppear() {
    return Effect.run(() async {
      await send(const NursingAction.service());

      state.filterUserController.addListener(() {
        final text = state.filterUserController.text;

        send(NursingAction.filterUserByText(text));
      });
    });
  }

  FutureOr<Effect> _service() {
    state.isLoading = true;
    return Effect.runAndEmit(() async {
      await UserAPI.listUser().fold(
        (success) => send(NursingAction.success(success)),
        (error) => send(NursingAction.failure(error)),
      );
    });
  }

  FutureOr<Effect> _failure(ErrorInfo errorInfo) {
    state.isLoading = false;
    return Effect.runAndEmit(() async {
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

  FutureOr<Effect> _success(ListUserDTO data) {
    state.listUsers = data.users;
    state.filterUsers = data.users;
    state.isLoading = false;

    return Effect.emit();
  }

  FutureOr<Effect> _filterUserByText(String text) {
    if (state.listUsers != null && text.isNotEmpty) {
      state.filterUsers = state.listUsers!
          .where(
            (element) =>
                element.name != null &&
                removeDiacritics(element.name!.toLowerCase())
                    .contains(removeDiacritics(text.toLowerCase())),
          )
          .toList();
    } else {
      state.filterUsers = state.listUsers;
    }

    return Effect.emit();
  }
}
