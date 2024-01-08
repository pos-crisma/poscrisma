import 'dart:async';

import 'package:core/core.dart';
import 'package:design/color/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    final ProfileStore store = Modular.get();
    state.user = store.user;
    state.context = context;

    return Effect.runAndEmit(() async {
      final user = state.user;

      if (user != null &&
          (user.family?.fatherId == null || user.family?.motherId == null)) {
        final dto = InviteRequestDTO(
          type: InviteType.CreateParent,
          typeUser: InviteUserType.GodParent,
          familyId: store.user?.familyId ?? "",
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
        await Clipboard.setData(ClipboardData(text: invite.inviteCode));
        send(const FamilyAction.inviteToClipboard());
      }
    });
  }

  _inviteToClipboard() {
    return Effect.run(() async {
      final context = state.context;

      if (context != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: ColorMode.setColor(
              context: context,
              light: Colors.grey.shade200,
              dark: Colors.grey.shade800,
            ),
            elevation: 0,
            content: LayoutBuilder(
              builder: (context, constraints) {
                return SizedBox(
                  // color: Colors.amber,
                  width: constraints.maxWidth,
                  child: Row(
                    children: [
                      Text(
                        'Convite copiado!',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge! //
                            .copyWith(),
                      ),
                      const Spacer(),
                      Text(
                        'Entendi',
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall! //
                            .copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                );
              },
            ),
            duration: Durations.extralong4,
            margin: const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            padding: const EdgeInsets.all(16.0),
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        );
      }
    });
  }

  _successInviteGenerate(InviteResponseDTO dto) {
    state.invite = dto;
    return Effect.emit();
  }

  _failureInviteGenerate(ErrorInfo errorInfo) {
    value.status = FamilyInviteStatus.failure;

    return Effect.run(() async {
      Modular.to.pushNamed(
        '/error/',
        arguments: {
          'title': errorInfo.response.toString(),
          'content': errorInfo.error?.message.toString() ?? "",
          'backButton': () => Modular.to.pop(),
          'onPress': () {
            Modular.to.pop();
          },
          'titleButton': 'Tentar novamente',
          'isShowButton': false,
          'enableColor': Colors.transparent,
        },
      );
    });
  }

  _mascotButtonTapped() {
    return Effect.run(() async {
      final context = state.context;

      if (context != null) {
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
      }
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
