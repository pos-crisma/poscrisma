// ignore_for_file: library_private_types_in_public_api

import 'package:core/core.dart';
import 'package:flutter/widgets.dart';

import '../../model/invite_model.dart';

part 'invite_action.freezed.dart';

@freezed
abstract class InviteAction with _$InviteAction {
  const factory InviteAction.onAppear(BuildContext context) = _OnAppearTapped;
  const factory InviteAction.buttonTapped() = _ButtonTapped;
  const factory InviteAction.inviteService() = _InviteService;
  const factory InviteAction.loadingInviteService() = _LoadingInviteService;
  const factory InviteAction.successInviteService(Invite invite) =
      _SuccessInviteService;
  const factory InviteAction.failureInviteService(ErrorInfo error) =
      _FailureInviteService;
}
