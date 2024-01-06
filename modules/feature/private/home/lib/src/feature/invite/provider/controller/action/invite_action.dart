// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: library_private_types_in_public_api

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

sealed class InviteAction {
  static InviteAction onAppear(BuildContext context) =>
      _OnAppearTapped(context: context);
  static InviteAction successInviteGenerate(InviteResponseDTO dto) =>
      _SuccessInviteGenerate(dto: dto);
  static InviteAction failureInviteGenerate(ErrorInfo error) =>
      _FailureInviteGenerate(error: error);
  static InviteAction inviteButtonTapped() => _InviteButtonTapped();
  static InviteAction inviteSelector(int number) =>
      _InviteSelector(selector: number);
  static InviteAction inviteIsGuest() => _InviteIsGuest();

  T fold<T>(
    T Function(_OnAppearTapped action) onAppear,
    T Function(_InviteButtonTapped action) inviteButtonTapped,
    T Function(_SuccessInviteGenerate action) successInviteGenerate,
    T Function(_FailureInviteGenerate action) failureInviteGenerate,
    T Function(_InviteSelector action) inviteSelector,
    T Function(_InviteIsGuest action) inviteIsGuest,
  ) =>
      switch (this) {
        _OnAppearTapped action => onAppear(action),
        _InviteButtonTapped action => inviteButtonTapped(action),
        _SuccessInviteGenerate action => successInviteGenerate(action),
        _FailureInviteGenerate action => failureInviteGenerate(action),
        _InviteSelector action => inviteSelector(action),
        _InviteIsGuest action => inviteIsGuest(action),
      };
}

class _OnAppearTapped extends InviteAction {
  BuildContext context;

  _OnAppearTapped({
    required this.context,
  });
}

class _InviteButtonTapped extends InviteAction {}

class _SuccessInviteGenerate extends InviteAction {
  InviteResponseDTO dto;

  _SuccessInviteGenerate({
    required this.dto,
  });
}

class _FailureInviteGenerate extends InviteAction {
  final ErrorInfo error;

  _FailureInviteGenerate({required this.error});
}

class _InviteSelector extends InviteAction {
  final int selector;

  _InviteSelector({required this.selector});
}

class _InviteIsGuest extends InviteAction {}
