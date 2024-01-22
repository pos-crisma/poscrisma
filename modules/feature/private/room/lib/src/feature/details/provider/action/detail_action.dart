import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

part 'detail_action.freezed.dart';

@freezed
abstract class DetailAction with _$DetailAction {
  const factory DetailAction.onAppear(BuildContext context) = _OnAppearTapped;
  const factory DetailAction.buttonTapped(Room room) = _ButtonTapped;
  const factory DetailAction.buttonUserTapped(String userId) =
      _ButtonUserTapped;
  const factory DetailAction.loading(bool isLoading) = _Loading;
  const factory DetailAction.service() = _Service;
  const factory DetailAction.success(Room dto) = _Success;
  const factory DetailAction.failure(ErrorInfo error) = _Failure;
}
