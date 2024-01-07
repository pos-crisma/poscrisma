// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: library_private_types_in_public_api

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

import '../../dto/mascot_response_dto.dart';

sealed class FamilyAction {
  static FamilyAction onAppear(BuildContext context) =>
      _OnAppearTapped(context: context);
  static FamilyAction successInviteGenerate(InviteResponseDTO dto) =>
      _SuccessInviteGenerate(dto: dto);
  static FamilyAction failureInviteGenerate(ErrorInfo error) =>
      _FailureInviteGenerate(error: error);
  static FamilyAction failureMascot(ErrorInfo error) =>
      _FailureInviteGenerate(error: error);
  static FamilyAction inviteButtonTapped() => _InviteButtonTapped();
  static FamilyAction inviteToClipboard() => _InviteToClipboard();
  static FamilyAction mascotButtonTapped() => _MascotButtonTapped();
  static FamilyAction serviceMascot() => _MascotService();
  static FamilyAction mascotSuccess(MascotsResponseDTO mascotResponse) =>
      _MascotServiceSuccess(mascotResponse: mascotResponse);

  T fold<T>(
    T Function(_OnAppearTapped action) onAppear,
    T Function(_InviteButtonTapped action) inviteButtonTapped,
    T Function(_SuccessInviteGenerate action) successInviteGenerate,
    T Function(_FailureInviteGenerate action) failure,
    T Function(_InviteToClipboard action) inviteToClipboard,
    T Function(_MascotButtonTapped action) mascotButtonTapped,
    T Function(_MascotService action) serviceMascot,
    T Function(_MascotServiceSuccess action) successMascot,
  ) =>
      switch (this) {
        _OnAppearTapped action => onAppear(action),
        _InviteButtonTapped action => inviteButtonTapped(action),
        _SuccessInviteGenerate action => successInviteGenerate(action),
        _FailureInviteGenerate action => failure(action),
        _InviteToClipboard action => inviteToClipboard(action),
        _MascotButtonTapped action => mascotButtonTapped(action),
        _MascotService action => serviceMascot(action),
        _MascotServiceSuccess action => successMascot(action),
      };
}

class _OnAppearTapped extends FamilyAction {
  BuildContext context;

  _OnAppearTapped({
    required this.context,
  });
}

class _MascotButtonTapped extends FamilyAction {}

class _InviteButtonTapped extends FamilyAction {}

class _SuccessInviteGenerate extends FamilyAction {
  InviteResponseDTO dto;

  _SuccessInviteGenerate({
    required this.dto,
  });
}

class _FailureInviteGenerate extends FamilyAction {
  final ErrorInfo error;

  _FailureInviteGenerate({required this.error});
}

class _InviteToClipboard extends FamilyAction {}

class _MascotService extends FamilyAction {}

class _MascotServiceSuccess extends FamilyAction {
  final MascotsResponseDTO mascotResponse;

  _MascotServiceSuccess({required this.mascotResponse});
}
