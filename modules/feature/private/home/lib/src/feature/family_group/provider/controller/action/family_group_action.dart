// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: library_private_types_in_public_api

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

sealed class FamilyGroupAction {
  static FamilyGroupAction onAppear(BuildContext context) =>
      _OnAppearTapped(context: context);
  static FamilyGroupAction inviteButtonTapped() => _GenerateTapped();
  static FamilyGroupAction generateTapped() => _InviteButtonTapped();
  static FamilyGroupAction successInviteGenerate(InviteResponseDTO dto) =>
      _SuccessInviteGenerate(dto: dto);
  static FamilyGroupAction successListInvite(ListInviteByUserDTO dto) =>
      _SuccessListInvite(dto: dto);
  static FamilyGroupAction failureAPI(ErrorInfo error) =>
      _FailureInviteGenerate(error: error);
  static FamilyGroupAction inviteToClipboard() => _InviteToClipboard();
  static FamilyGroupAction clipboardTapped(String invite, bool fromList) =>
      _ClipboardTapped(invite: invite, fromList: fromList);

  T fold<T>(
    T Function(_OnAppearTapped action) onAppear,
    T Function(_GenerateTapped action) generateTapped,
    T Function(_InviteButtonTapped action) inviteButtonTapped,
    T Function(_SuccessInviteGenerate action) successInviteGenerate,
    T Function(_SuccessListInvite action) successListInvite,
    T Function(_FailureInviteGenerate action) failureInviteGenerate,
    T Function(_InviteToClipboard action) inviteToClipboard,
    T Function(_ClipboardTapped action) clipboardTapped,
  ) =>
      switch (this) {
        _OnAppearTapped action => onAppear(action),
        _GenerateTapped action => generateTapped(action),
        _InviteButtonTapped action => inviteButtonTapped(action),
        _SuccessInviteGenerate action => successInviteGenerate(action),
        _SuccessListInvite action => successListInvite(action),
        _FailureInviteGenerate action => failureInviteGenerate(action),
        _InviteToClipboard action => inviteToClipboard(action),
        _ClipboardTapped action => clipboardTapped(action),
      };
}

class _OnAppearTapped extends FamilyGroupAction {
  BuildContext context;

  _OnAppearTapped({
    required this.context,
  });
}

class _InviteButtonTapped extends FamilyGroupAction {}

class _GenerateTapped extends FamilyGroupAction {}

class _SuccessInviteGenerate extends FamilyGroupAction {
  InviteResponseDTO dto;

  _SuccessInviteGenerate({
    required this.dto,
  });
}

class _SuccessListInvite extends FamilyGroupAction {
  ListInviteByUserDTO dto;

  _SuccessListInvite({
    required this.dto,
  });
}

class _FailureInviteGenerate extends FamilyGroupAction {
  final ErrorInfo error;

  _FailureInviteGenerate({required this.error});
}

class _InviteToClipboard extends FamilyGroupAction {}

class _ClipboardTapped extends FamilyGroupAction {
  String invite;
  bool fromList;

  _ClipboardTapped({
    required this.invite,
    this.fromList = false,
  });
}
