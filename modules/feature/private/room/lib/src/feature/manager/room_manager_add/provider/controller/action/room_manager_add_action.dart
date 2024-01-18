import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../state/room_managar_add_state.dart';

part 'room_manager_add_action.freezed.dart';

@freezed
abstract class RoomManagarAddAction with _$RoomManagarAddAction {
  const factory RoomManagarAddAction.onAppear(BuildContext context) =
      _OnAppearTapped;
  const factory RoomManagarAddAction.buttonTapped() = _ButtonTapped;
  const factory RoomManagarAddAction.service() = _Service;
  const factory RoomManagarAddAction.loading() = _Loading;
  const factory RoomManagarAddAction.success(DefaultResponseDTO dto) = _Success;
  const factory RoomManagarAddAction.failure(ErrorInfo error) = _Failure;
  const factory RoomManagarAddAction.changeCheckBox(
      RoomManagarAddType contentOnPage) = _ChangeCheckBox;
  const factory RoomManagarAddAction.addImage(String images) = _AddImage;
  const factory RoomManagarAddAction.removeImage(String images) = _RemoveImage;
}
