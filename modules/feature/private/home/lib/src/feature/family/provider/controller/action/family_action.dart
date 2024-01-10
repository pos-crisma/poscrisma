// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: library_private_types_in_public_api

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

import '../../dto/mascot_response_dto.dart';
import '../../model/mascot.dart';

part 'family_action.freezed.dart';

@freezed
abstract class FamilyAction with _$FamilyAction {
  const factory FamilyAction.onAppear(BuildContext context) = _OnAppearTapped;
  const factory FamilyAction.successInviteGenerate(InviteResponseDTO dto) =
      _SuccessInviteGenerate;
  const factory FamilyAction.failureInviteGenerate(ErrorInfo error) =
      _FailureInviteGenerate;
  const factory FamilyAction.failureMascot(ErrorInfo error) = _FailureMascot;
  const factory FamilyAction.inviteButtonTapped() = _InviteButtonTapped;
  const factory FamilyAction.inviteToClipboard() = _InviteToClipboard;
  const factory FamilyAction.mascotButtonTapped() = _MascotButtonTapped;
  const factory FamilyAction.serviceMascot() = _MascotService;
  const factory FamilyAction.mascotSuccess(MascotsResponseDTO mascotResponse) =
      _MascotServiceSuccess;
  const factory FamilyAction.serviceUpdateMascotTapped(String mascotId) =
      _MascotUpdateService;
  const factory FamilyAction.successUpdateMascot(Mascot response) =
      _MascotUpdateServiceSuccess;
}
