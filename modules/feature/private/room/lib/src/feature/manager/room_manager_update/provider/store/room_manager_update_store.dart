import 'dart:async';

import 'package:core/core.dart';
import 'package:error/error.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

import '../../view/room_manager_editor.dart';
import '../action/room_manager_update_action.dart';
import '../enum/room_manager_update_input_type.dart';
import '../state/room_manager_update_state.dart';

class RoomManagarUpdateReducer
    extends Reducer<RoomManagarUpdateAction, RoomManagarUpdateState> {
  RoomManagarUpdateReducer(BuildContext context, Room room)
      : super(RoomManagarUpdateState(room: room, context: context));

  @override
  Future<Effect> reduce(RoomManagarUpdateAction action) async => //
      action.when(
        onAppear: _onAppear,
        buttonTapped: _buttonTapped,
        service: _service,
        loading: _loading,
        success: _success,
        failure: _failure,
      );

  FutureOr<Effect> _onAppear() {
    return Effect.runAndEmit(() async {});
  }

  FutureOr<Effect> _buttonTapped(RoomManagerUpdateInputType inputType) {
    return Effect.run(() async {
      // send(const RoomManagarUpdateAction.loading(true));
      // send(const RoomManagarUpdateAction.service());

      showModalBottomSheet(
        useSafeArea: true,
        isScrollControlled: true,
        context: state.context,
        barrierColor: Colors.transparent,
        builder: (context) {
          return RoomManagerEditor(
            inputType: inputType,
          );
        },
      ).then((value) {});
    });
  }

  FutureOr<Effect> _service() {
    return Effect.run(() async {
      // await HostedUserAPI.filterHostedUserByTypeAndGender(
      //   HostedRequestDTO(
      //     gender: userType == InviteUserType.Young ? userGender.name : null,
      //     userType: userType.name,
      //   ),
      //   false,
      // ).fold(
      //   (success) => send(RoomManagarUpdateAction.success(success)),
      //   (error) => send(RoomManagarUpdateAction.failure(error)),
      // );
    });
  }

  FutureOr<Effect> _loading(bool isLoading) {
    state.isLoading = isLoading;
    return Effect.emit();
  }

  FutureOr<Effect> _success(HostedUserDTO dto) {
    return Effect.runAndEmit(() async {
      send(const RoomManagarUpdateAction.loading(false));
    });
  }

  FutureOr<Effect> _failure(ErrorInfo errorInfo) {
    return Effect.run(() async {
      send(const RoomManagarUpdateAction.loading(false));
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
