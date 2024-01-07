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
  static InviteAction failure(ErrorInfo error) => _Failure(error: error);
  static InviteAction inviteButtonTapped() => _InviteButtonTapped();
  static InviteAction inviteSelector(int number) =>
      _InviteSelector(selector: number);
  static InviteAction inviteIsGuest() => _InviteIsGuest();
  static InviteAction getList() => _Service();
  static InviteAction successInviteList(ListInviteByUserDTO dto) =>
      _SuccessInvite(dto: dto);
  static InviteAction clipboardTapped(String inviteCode) =>
      _ClipboardTapped(inviteCode: inviteCode);
  static InviteAction clipboardAdded() => _ClipboardAdded();

  T fold<T>(
    T Function(_OnAppearTapped action) onAppear,
    T Function(_Service action) service,
    T Function(_Failure action) failure,
    T Function(_InviteButtonTapped action) inviteButtonTapped,
    T Function(_SuccessInviteGenerate action) successInviteGenerate,
    T Function(_InviteSelector action) inviteSelector,
    T Function(_InviteIsGuest action) inviteIsGuest,
    T Function(_SuccessInvite action) successInvite,
    T Function(_ClipboardTapped action) clipboardTapped,
    T Function(_ClipboardAdded action) clipboardAdded,
  ) =>
      switch (this) {
        _OnAppearTapped action => onAppear(action),
        _InviteButtonTapped action => inviteButtonTapped(action),
        _SuccessInviteGenerate action => successInviteGenerate(action),
        _Failure action => failure(action),
        _InviteSelector action => inviteSelector(action),
        _InviteIsGuest action => inviteIsGuest(action),
        _Service action => service(action),
        _SuccessInvite action => successInvite(action),
        _ClipboardTapped action => clipboardTapped(action),
        _ClipboardAdded action => clipboardAdded(action),
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

class _Failure extends InviteAction {
  final ErrorInfo error;

  _Failure({required this.error});
}

class _InviteSelector extends InviteAction {
  final int selector;

  _InviteSelector({required this.selector});
}

class _InviteIsGuest extends InviteAction {}

class _Service extends InviteAction {}

class _SuccessInvite extends InviteAction {
  final ListInviteByUserDTO dto;

  _SuccessInvite({required this.dto});
}

class _ClipboardTapped extends InviteAction {
  final String inviteCode;

  _ClipboardTapped({required this.inviteCode});
}

class _ClipboardAdded extends InviteAction {}
