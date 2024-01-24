import 'package:core/core.dart';
import 'package:store/store.dart';

import '../enum/room_manager_update_input_type.dart';

part 'room_manager_update_action.freezed.dart';

@freezed
abstract class RoomManagarUpdateAction with _$RoomManagarUpdateAction {
  const factory RoomManagarUpdateAction.onAppear() = _OnAppearTapped;
  const factory RoomManagarUpdateAction.buttonTapped(
      RoomManagerUpdateInputType inputType) = _ButtonTapped;
  const factory RoomManagarUpdateAction.loading(bool isLoading) = _Loading;
  const factory RoomManagarUpdateAction.service(Room room) = _Service;
  const factory RoomManagarUpdateAction.success(Room room) = _Success;
  const factory RoomManagarUpdateAction.failure(ErrorInfo error) = _Failure;
  const factory RoomManagarUpdateAction.addImages(String image) = _AddImages;
  const factory RoomManagarUpdateAction.removeImages(String image) =
      _RemoveImages;
  const factory RoomManagarUpdateAction.copyImage(String image) = _CopyImage;
}
