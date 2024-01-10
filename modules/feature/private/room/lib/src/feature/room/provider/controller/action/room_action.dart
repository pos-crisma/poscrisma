import 'package:core/core.dart';
import 'package:store/store.dart';

part 'room_action.freezed.dart';

@freezed
abstract class RoomAction with _$RoomAction {
  const factory RoomAction.onAppear() = _OnAppearTapped;
  const factory RoomAction.updateRoomImage() = _UpdateRoomImage;
  const factory RoomAction.service() = _Service;
  const factory RoomAction.scrollListener() = _ScrollListener;
  const factory RoomAction.loading() = _Loading;
  const factory RoomAction.success(RoomSettingResponseDTO dto) = _Success;
  const factory RoomAction.failure(ErrorInfo error) = _Failure;
  const factory RoomAction.buttonTapped(Room room) = _ButtonTapped;
}
