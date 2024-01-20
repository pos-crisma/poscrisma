import 'dart:async';

import 'package:core/core.dart';
import 'package:error/error.dart';
import 'package:flutter/material.dart';
import 'package:room/src/feature/manager/room_manager_detail/provider/api/relocation_api.dart';
import 'package:room/src/feature/manager/room_manager_detail/provider/dto/relocation_dto.dart';
import 'package:store/feature/user/model/user.dart';
import 'package:store/store.dart';

import '../action/room_manager_detail_action.dart';
import '../state/room_manager_detail_state.dart';

class RoomManagarDetailReducer
    extends Reducer<RoomManagarDetailAction, RoomManagarDetailState> {
  RoomManagarDetailReducer(Room room)
      : super(RoomManagarDetailState(room: room));

  @override
  Future<Effect> reduce(RoomManagarDetailAction action) async => //
      action.when(
        onAppear: _onAppear,
        buttonTapped: _buttonTapped,
        segmentedControlTapped: _segmentedControlTapped,
        segmentedControlGenderTapped: _segmentedControlGenderTapped,
        service: _service,
        loading: _loading,
        success: _success,
        failure: _failure,
        serviceGetRoom: _serviceGetRoom,
        successGetRoom: _successGetRoom,
        checkInTapped: _checkInTapped,
        checkOutTapped: _checkOutTapped,
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

  FutureOr<Effect> _segmentedControlTapped(int value) {
    state.selector = value;

    return Effect.runAndEmit(() async {
      send(const RoomManagarDetailAction.service());
    });
  }

  FutureOr<Effect> _segmentedControlGenderTapped(int value) {
    state.selectorGender = value;

    return Effect.runAndEmit(() async {
      send(const RoomManagarDetailAction.service());
    });
  }

  FutureOr<Effect> _service() {
    return Effect.run(() async {
      final userType = switch (state.selector) {
        1 => InviteUserType.GodParent,
        2 => InviteUserType.Voluntary,
        3 => InviteUserType.Young,
        _ => InviteUserType.Young,
      };

      final userGender = switch (state.selectorGender) {
        1 => UserGender.Male,
        2 => UserGender.Female,
        _ => UserGender.Male,
      };

      await HostedUserAPI.filterHostedUserByTypeAndGender(
        HostedRequestDTO(
          gender: userType == InviteUserType.Young ? userGender.name : null,
          userType: userType.name,
        ),
        false,
      ).fold(
        (success) => send(RoomManagarDetailAction.success(success)),
        (error) => send(RoomManagarDetailAction.failure(error)),
      );
    });
  }

  FutureOr<Effect> _serviceGetRoom() {
    return Effect.run(() async {
      await RoomAPI.getRoomById(
        state.room.roomId ?? "",
      ).fold(
        (success) => send(RoomManagarDetailAction.successGetRoom(success)),
        (error) => send(RoomManagarDetailAction.failure(error)),
      );
    });
  }

  FutureOr<Effect> _loading() {
    state.isLoading = !state.isLoading;
    return Effect.emit();
  }

  FutureOr<Effect> _success(HostedUserDTO dto) {
    if (dto.users != null) {
      state.users = dto.users!;
      state.filtersUsers = dto.users!;
    }

    return Effect.emit();
  }

  FutureOr<Effect> _successGetRoom(Room dto) {
    state.room = dto;

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

  FutureOr<Effect> _checkInTapped(String id) {
    return Effect.run(() async {
      await RelocationAPI.checkIn(
        RelocationDTO(
          userId: id,
          roomSettingId: state.room.roomId,
        ),
      ).fold(
        (success) {
          send(const RoomManagarDetailAction.serviceGetRoom());
          send(const RoomManagarDetailAction.service());
        },
        (error) => send(RoomManagarDetailAction.failure(error)),
      );
    });
  }

  FutureOr<Effect> _checkOutTapped(String id) {
    return Effect.run(() async {
      await RelocationAPI.relocation(
        RelocationDTO(
          userId: id,
          roomSettingId: state.room.roomId,
        ),
      ).fold(
        (success) {
          send(const RoomManagarDetailAction.serviceGetRoom());
          send(const RoomManagarDetailAction.service());
        },
        (error) => send(RoomManagarDetailAction.failure(error)),
      );
    });
  }
}
