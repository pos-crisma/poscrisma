// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: library_private_types_in_public_api

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

part 'invite_action.freezed.dart';

@freezed
abstract class InviteAction with _$InviteAction {
  const factory InviteAction.onAppear(BuildContext context) = _OnAppearTapped;
  const factory InviteAction.successInviteGenerate(InviteResponseDTO dto) =
      _SuccessInviteGenerate;
  const factory InviteAction.failure(ErrorInfo error) = _Failure;
  const factory InviteAction.inviteButtonTapped() = _InviteButtonTapped;
  const factory InviteAction.inviteSelector(int number) = _InviteSelector;
  const factory InviteAction.inviteIsGuest() = _InviteIsGuest;
  const factory InviteAction.getList() = _Service;
  const factory InviteAction.successInviteList(ListInviteByUserDTO dto) =
      _SuccessInvite;
  const factory InviteAction.clipboardTapped(String inviteCode) =
      _ClipboardTapped;
  const factory InviteAction.clipboardAdded() = _ClipboardAdded;
}
