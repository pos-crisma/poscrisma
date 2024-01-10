import 'package:core/core.dart';
import 'package:store/store.dart';

import '../state/room_state.dart';

part 'room_action.freezed.dart';

@freezed
abstract class RoomAction with _$RoomAction {
  const factory RoomAction.onAppear(
      RoomAreaPage areaPage, InviteUserType? type) = _OnAppear;
  const factory RoomAction.updateRoomImage() = _UpdateRoomImage;
  const factory RoomAction.roomAreaFull() = _RoomAreaFull;
  const factory RoomAction.roomAreaSearch() = _RoomAreaSearch;
  const factory RoomAction.roomAreaByType(InviteUserType type) =
      _RoomAreaByType;
  const factory RoomAction.serviceFull() = _ServiceFull;
  const factory RoomAction.serviceSearch() = _ServiceSearch;
  const factory RoomAction.serviceByType(InviteUserType type) = _ServiceByType;
  const factory RoomAction.scrollListener() = _ScrollListener;
  const factory RoomAction.loading() = _Loading;
  const factory RoomAction.success(RoomSettingResponseDTO dto) = _Success;
  const factory RoomAction.failure(ErrorInfo error) = _Failure;
  const factory RoomAction.buttonTapped(Room room) = _ButtonTapped;
}
