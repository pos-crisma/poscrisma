import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:store/store.dart';

import '../action/family_group_action.dart';
import '../state/family_group_state.dart';

class FamilyGroupReducer extends Reducer<FamilyGroupAction, FamilyGroupState> {
  FamilyGroupReducer() : super(FamilyGroupState());

  @override
  Future<Effect> reduce(FamilyGroupAction action) async {
    return action.fold(
      (action) => _onAppear(action.context),
      (action) => _inviteButtonTapped(),
      (action) => _successInviteGenerate(action.dto),
      (action) => _failureInviteGenerate(action.error),
      (action) => _inviteToClipboard(),
    );
  }

  _onAppear(BuildContext context) {
    final ProfileStore store = Modular.get();
    state.user = store.user;
    state.context = context;

    return Effect.runAndEmit(() async {
      final user = state.user;

      if (user != null) {
        final group = store.user?.family?.groups;
        if (group != null && group.isNotEmpty) {
          final dto = InviteRequestDTO(
            type: InviteType.CreateUser,
            typeUser: InviteUserType.Young,
            familyId: store.user?.familyId ?? "",
            groupId: group.first.groupId,
          );

          InviteAPI.createInvite(dto).fold(
            (success) => send(FamilyGroupAction.successInviteGenerate(success)),
            (error) => send(FamilyGroupAction.failureInviteGenerate(error)),
          );
        }
      }
    });
  }

  _inviteButtonTapped() {
    return Effect.run(() async {
      final invite = state.invite;

      if (invite != null) {
        await Clipboard.setData(ClipboardData(text: invite.inviteCode));
        send(FamilyGroupAction.inviteToClipboard());
      }
    });
  }

  _inviteToClipboard() {
    return Effect.run(() async {
      final context = state.context;

      if (context != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.grey.shade800,
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
    value.status = FamilyGroupInviteStatus.failure;

    return Effect.run(() async {
      Modular.to.pushNamed(
        '/error/',
        arguments: {
          'title': errorInfo.response.toString(),
          'content': errorInfo.error.message.toString(),
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
}
