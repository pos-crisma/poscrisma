import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:store/store.dart';

part 'room_manager_detail_action.freezed.dart';

@freezed
abstract class RoomManagarDetailAction with _$RoomManagarDetailAction {
  const factory RoomManagarDetailAction.onAppear(BuildContext context) =
      _OnAppearTapped;
  const factory RoomManagarDetailAction.buttonTapped() = _ButtonTapped;
  const factory RoomManagarDetailAction.service() = _Service;
  const factory RoomManagarDetailAction.loading() = _Loading;
  const factory RoomManagarDetailAction.success(HostedUserDTO dto) = _Success;
  const factory RoomManagarDetailAction.failure(ErrorInfo error) = _Failure;
}
