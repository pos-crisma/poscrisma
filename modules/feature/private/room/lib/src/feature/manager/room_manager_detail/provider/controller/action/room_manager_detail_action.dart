import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:store/store.dart';

part 'room_manager_detail_action.freezed.dart';

@freezed
abstract class RoomManagarDetailAction with _$RoomManagarDetailAction {
  const factory RoomManagarDetailAction.onAppear(BuildContext context) =
      _OnAppearTapped;
  const factory RoomManagarDetailAction.buttonTapped() = _ButtonTapped;
  const factory RoomManagarDetailAction.segmentedControlTapped(int value) =
      _SegmentedControlTapped;
  const factory RoomManagarDetailAction.segmentedControlGenderTapped(
      int value) = _SegmentedControlGenderTapped;
  const factory RoomManagarDetailAction.loading(bool isLoading) = _Loading;
  const factory RoomManagarDetailAction.service() = _Service;
  const factory RoomManagarDetailAction.success(HostedUserDTO dto) = _Success;
  const factory RoomManagarDetailAction.serviceGetRoom() = _ServiceGetRoom;
  const factory RoomManagarDetailAction.successGetRoom(Room dto) =
      _SuccessGetRoom;
  const factory RoomManagarDetailAction.failure(ErrorInfo error) = _Failure;
  const factory RoomManagarDetailAction.checkOutTapped(String id) =
      _ButtonCheckOutTapped;
  const factory RoomManagarDetailAction.checkInTapped(String id) =
      _ButtonCheckInTapped;
  const factory RoomManagarDetailAction.filterUserByText(String userName) =
      _FilterUserByText;
  const factory RoomManagarDetailAction.expandedRoomSettings() = _ExpandedRoomSetting;
  const factory RoomManagarDetailAction.updateRoomInfo() = _UpdateRoomInfo;
}
