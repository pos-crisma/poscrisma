import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

part 'detail_action.freezed.dart';

@freezed
abstract class DetailAction with _$DetailAction {
  const factory DetailAction.onAppear(BuildContext context, Room room) =
      _OnAppearTapped;
  const factory DetailAction.buttonTapped(String roomId) = _ButtonTapped;
  const factory DetailAction.buttonUserTapped(String userId) =
      _ButtonUserTapped;
}
