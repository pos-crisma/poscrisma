// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: library_private_types_in_public_api

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

part 'family_group_action.freezed.dart';

@freezed
abstract class FamilyGroupAction with _$FamilyGroupAction {
  const factory FamilyGroupAction.onAppear(BuildContext context) =
      _OnAppearTapped;
  const factory FamilyGroupAction.inviteButtonTapped() = _GenerateTapped;
  const factory FamilyGroupAction.generateTapped() = _InviteButtonTapped;
  const factory FamilyGroupAction.successInviteGenerate(InviteResponseDTO dto) =
      _SuccessInviteGenerate;
  const factory FamilyGroupAction.successListInvite(ListInviteByUserDTO dto) =
      _SuccessListInvite;
  const factory FamilyGroupAction.failureAPI(ErrorInfo error) = _FailureAPI;
  const factory FamilyGroupAction.inviteToClipboard() = _InviteToClipboard;
  const factory FamilyGroupAction.clipboardTapped(
      String invite, bool fromList) = _ClipboardTapped;
}
