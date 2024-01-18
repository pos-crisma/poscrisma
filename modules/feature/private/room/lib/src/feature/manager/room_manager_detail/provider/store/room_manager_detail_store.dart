import 'dart:async';

import 'package:core/core.dart';
import 'package:error/error.dart';
import 'package:flutter/material.dart';
import 'package:store/feature/user/model/user.dart';
import 'package:store/store.dart';

import '../action/room_manager_detail_action.dart';
import '../state/room_manager_detail_state.dart';

class RoomManagarDetailReducer
    extends Reducer<RoomManagarDetailAction, RoomManagarDetailState> {
  RoomManagarDetailReducer() : super(RoomManagarDetailState());

  @override
  Future<Effect> reduce(RoomManagarDetailAction action) async => //
      action.when(
        onAppear: _onAppear,
        buttonTapped: _buttonTapped,
        service: _service,
        loading: _loading,
        success: _success,
        failure: _failure,
      );

  FutureOr<Effect> _onAppear(BuildContext context) {
    state.context = context;

    return Effect.runAndEmit(() async {
      send(const RoomManagarDetailAction.service());
    });
  }

  FutureOr<Effect> _buttonTapped() {
    return Effect.run(() async {
      send(const RoomManagarDetailAction.service());
    });
  }

  FutureOr<Effect> _service() {
    return Effect.run(() async {
      await HostedUserAPI.filterHostedUserByTypeAndGender(
        HostedRequestDTO(
          gender: UserGender.Male.name,
          userType: InviteUserType.Young.name,
        ),
        false,
      ).fold(
        (success) => send(RoomManagarDetailAction.success(success)),
        (error) => send(RoomManagarDetailAction.failure(error)),
      );
    });
  }

  FutureOr<Effect> _loading() {
    state.isLoading = !state.isLoading;
    return Effect.emit();
  }

  FutureOr<Effect> _success(HostedUserDTO dto) {
    state.hostedUserDTO = dto;

    return Effect.emit();
  }

  FutureOr<Effect> _failure(ErrorInfo errorInfo) {
    return Effect.run(() async {
      showModalBottomSheet(
        useSafeArea: true,
        isScrollControlled: true,
        context: state.context,
        builder: (context) {
          return ErrorPage(
            title: errorInfo.response?.toString(),
            content: errorInfo.error?.message.toString(),
            backButton: () => Navigator.of(state.context).pop(),
            onPress: null,
            isShowButton: false,
            enableColor: Colors.transparent,
          );
        },
      );
    });
  }
}
