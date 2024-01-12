import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

import '../action/family_group_action.dart';
import '../state/family_group_state.dart';

class FamilyGroupReducer extends Reducer<FamilyGroupAction, FamilyGroupState> {
  FamilyGroupReducer() : super(FamilyGroupState());

  @override
  Future<Effect> reduce(FamilyGroupAction action) async => action.when(
        onAppear: (context) => _onAppear(context),
        inviteButtonTapped: () => _inviteButtonTapped(null, false),
        generateTapped: () => _generateTapped(),
        successInviteGenerate: (dto) => _successInviteGenerate(dto),
        successListInvite: (dto) => _successListInvite(dto),
        failureAPI: (error) => _failureInviteGenerate(error),
        inviteToClipboard: () => _inviteToClipboard(),
        clipboardTapped: (invite, fromList) =>
            _inviteButtonTapped(invite, fromList),
      );

  _onAppear(BuildContext context) {
    state.user = profileStore.user;
    state.context = context;

    return Effect.runAndEmit(() async {
      final user = state.user;

      if (user != null) {
        ListInviteAPI.list(user.userId, InviteUserType.Young).fold(
          (success) => send(FamilyGroupAction.successListInvite(success)),
          (error) => send(FamilyGroupAction.failureAPI(error)),
        );
      }
    });
  }

  _generateTapped() {
    return Effect.run(() async {
      state.user = profileStore.user;
      final user = state.user;

      if (user != null) {
        final group = profileStore.user?.family?.groups;
        if (group != null && group.isNotEmpty) {
          final dto = InviteRequestDTO(
            type: InviteType.CreateUser,
            typeUser: InviteUserType.Young,
            familyId: profileStore.user?.familyId ?? "",
            groupId: group.first.groupId,
          );

          InviteAPI.createInvite(dto).fold(
            (success) => send(FamilyGroupAction.successInviteGenerate(success)),
            (error) => send(FamilyGroupAction.failureAPI(error)),
          );
        }
      }
    });
  }

  _inviteButtonTapped(String? inviteCode, bool fromList) {
    return Effect.run(() async {
      final invite = state.invite;

      if (inviteCode != null && fromList) {
        await onShare(
          "Envie esse codigo ao seu jovem",
          "Com esse link você poderá entrar no aplicativo: http://poscrisma.ddns.com.br/invite/$inviteCode",
        );

        // send(const FamilyGroupAction.inviteToClipboard());
      } else if (invite != null) {
        await onShare(
          "Envie esse codigo ao seu jovem",
          "Com esse link você poderá entrar no aplicativo: http://poscrisma.ddns.com.br/invite/$invite.inviteCode",
        );
        // send(const FamilyGroupAction.inviteToClipboard());
      } else if (invite == null) {
        send(const FamilyGroupAction.generateTapped());
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

  _successListInvite(ListInviteByUserDTO dto) {
    state.listInvite = dto;
    return Effect.emit();
  }

  _successInviteGenerate(InviteResponseDTO dto) {
    state.invite = dto;
    return Effect.emit();
  }

  _failureInviteGenerate(ErrorInfo errorInfo) {
    value.status = FamilyGroupInviteStatus.failure;

    return Effect.run(() async {
      state.context.pushNamed(
        'error',
        queryParameters: {
          'title': errorInfo.response.toString(),
          'content': errorInfo.error?.message.toString() ?? "",
          'backButton': () => state.context.pop(),
          'onPress': () {
            state.context.pop();
          },
          'titleButton': 'Tentar novamente',
          'isShowButton': false,
          'enableColor': Colors.transparent,
        },
      );
    });
  }
}
