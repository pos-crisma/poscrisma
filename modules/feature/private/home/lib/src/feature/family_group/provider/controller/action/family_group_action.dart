// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: library_private_types_in_public_api

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

sealed class FamilyGroupAction {
  static FamilyGroupAction onAppear(BuildContext context) =>
      _OnAppearTapped(context: context);
  static FamilyGroupAction inviteButtonTapped() => _InviteButtonTapped();
  static FamilyGroupAction successInviteGenerate(InviteResponseDTO dto) =>
      _SuccessInviteGenerate(dto: dto);
  static FamilyGroupAction failureInviteGenerate(ErrorInfo error) =>
      _FailureInviteGenerate(error: error);
  static FamilyGroupAction inviteToClipboard() => _InviteToClipboard();

  T fold<T>(
    T Function(_OnAppearTapped action) onAppear,
    T Function(_InviteButtonTapped action) inviteButtonTapped,
    T Function(_SuccessInviteGenerate action) successInviteGenerate,
    T Function(_FailureInviteGenerate action) failureInviteGenerate,
    T Function(_InviteToClipboard action) inviteToClipboard,
  ) =>
      switch (this) {
        _OnAppearTapped action => onAppear(action),
        _InviteButtonTapped action => inviteButtonTapped(action),
        _SuccessInviteGenerate action => successInviteGenerate(action),
        _FailureInviteGenerate action => failureInviteGenerate(action),
        _InviteToClipboard action => inviteToClipboard(action),
      };
}

class _OnAppearTapped extends FamilyGroupAction {
  BuildContext context;

  _OnAppearTapped({
    required this.context,
  });
}

class _InviteButtonTapped extends FamilyGroupAction {}

class _SuccessInviteGenerate extends FamilyGroupAction {
  InviteResponseDTO dto;

  _SuccessInviteGenerate({
    required this.dto,
  });
}

class _FailureInviteGenerate extends FamilyGroupAction {
  final ErrorInfo error;

  _FailureInviteGenerate({required this.error});
}

class _InviteToClipboard extends FamilyGroupAction {}