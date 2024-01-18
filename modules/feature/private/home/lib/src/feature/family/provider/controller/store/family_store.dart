import 'dart:async';

import 'package:core/core.dart';
import 'package:error/error.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

import '../../../../create_mascot/view/mobile/create_mascote_mobile.dart';
import '../../api/mascot_api.dart';
import '../../dto/mascot_response_dto.dart';
import '../../model/mascot.dart';
import '../action/family_action.dart';
import '../state/family_state.dart';

class FamilyReducer extends Reducer<FamilyAction, FamilyState> {
  FamilyReducer() : super(FamilyState());

  @override
  Future<Effect> reduce(FamilyAction action) async => action.when(
        onAppear: (context) => _onAppear(context),
        successInviteGenerate: (dto) => _successInviteGenerate(dto),
        failureInviteGenerate: (error) => _failureInviteGenerate(error),
        failureMascot: (error) => _failureInviteGenerate(error),
        inviteButtonTapped: () => _inviteButtonTapped(),
        inviteToClipboard: () => _inviteToClipboard(),
        mascotButtonTapped: () => _mascotButtonTapped(),
        serviceMascot: () => _mascotService(),
        mascotSuccess: (mascotResponse) => _mascotSuccess(mascotResponse),
        serviceUpdateMascotTapped: (mascotId) =>
            _serviceUpdateMascotTapped(mascotId),
        successUpdateMascot: (response) => _successUpdateMascot(response),
      );

  _onAppear(BuildContext context) {
    state.user = profileStore.user;
    state.context = context;

    return Effect.runAndEmit(() async {
      final user = state.user;

      if (user != null &&
          (user.family?.fatherId == null || user.family?.motherId == null)) {
        final dto = InviteRequestDTO(
          type: InviteType.CreateUser,
          typeUser: InviteUserType.GodParent,
          familyId: profileStore.user?.familyId ?? "",
          groupId: null,
        );

        InviteAPI.createInvite(dto).fold(
          (success) => send(FamilyAction.successInviteGenerate(success)),
          (error) => send(FamilyAction.failureInviteGenerate(error)),
        );
      }

      send(const FamilyAction.serviceMascot());
    });
  }

  _inviteButtonTapped() {
    return Effect.run(() async {
      final invite = state.invite;

      if (invite != null) {
        await onShare(
          "Envie esse convite ao seu familiar",
          "Com esse link você poderá entrar no aplicativo: https://poscrisma-be163.web.app/#/invite/${invite.inviteCode}",
        );
        // send(const FamilyAction.inviteToClipboard());
      }
    });
  }

  _inviteToClipboard() {
    return Effect.run(() async {
      // final context = state.context;

      // ScaffoldMessenger.of(context).showSnackBar(
      //   customSnackBar(context: context),
      // );
    });
  }

  _successInviteGenerate(InviteResponseDTO dto) {
    state.invite = dto;
    return Effect.emit();
  }

  _failureInviteGenerate(ErrorInfo errorInfo) {
    value.status = FamilyInviteStatus.failure;

    return Effect.run(() async {
      Navigator.of(state.context).push(
        MaterialPageRoute(
          builder: (context) {
            return ErrorPage(
              title: errorInfo.response?.toString(),
              content: errorInfo.error?.message.toString(),
              backButton: () => Navigator.of(state.context).pop(),
              onPress: null,
              isShowButton: false,
              enableColor: Colors.transparent,
            );
          },
        ),
      );
    });
  }

  _mascotButtonTapped() {
    return Effect.run(() async {
      final context = state.context;

      Future.delayed(Durations.short1).then((value) {
        showModalBottomSheet(
          context: context,
          useSafeArea: true,
          isScrollControlled: true,
          builder: (context) => CreateMascotMobile(),
        ).then((result) {
          if (result is bool && result) {
            send(const FamilyAction.serviceMascot());
          }
        });
      });
    });
  }

  _mascotService() {
    return Effect.run(() async {
      final user = state.user;

      if (user != null) {
        await MascotApi.get(user.userId).fold(
          (success) => send(FamilyAction.mascotSuccess(success)),
          (error) => send(FamilyAction.failureMascot(error)),
        );
      }
    });
  }

  _mascotSuccess(MascotsResponseDTO mascotResponse) {
    state.mascotResponse = mascotResponse;

    return Effect.emit();
  }

  _serviceUpdateMascotTapped(String mascotId) {
    return Effect.emit();
  }

  _successUpdateMascot(Mascot response) {
    return Effect.send(const FamilyAction.serviceMascot());
  }
}
