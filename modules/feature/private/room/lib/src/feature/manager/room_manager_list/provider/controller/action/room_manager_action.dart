import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

part 'room_manager_action.freezed.dart';

@freezed
abstract class RoomManagerAction with _$RoomManagerAction {
  const factory RoomManagerAction.onAppear(BuildContext context) =
      _OnAppearTapped;
  const factory RoomManagerAction.buttonTapped(Room room) = _ButtonTapped;
  const factory RoomManagerAction.buttonAddRoomTapped() = _ButtonAddRoomTapped;
  const factory RoomManagerAction.service() = _Service;
  const factory RoomManagerAction.loading() = _Loading;
  const factory RoomManagerAction.success(RoomSettingResponseDTO dto) =
      _Success;
  const factory RoomManagerAction.failure(ErrorInfo error) = _Failure;
    const factory RoomManagerAction.filterRoomByText(String userName) =
      _FilterRoomByText;
}
