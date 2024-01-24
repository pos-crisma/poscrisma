import 'dart:async';

import 'package:core/core.dart';
import 'package:error/error.dart';
import 'package:flutter/material.dart';
import 'package:home/src/feature/family_group/provider/api/group_api.dart';
import 'package:home/src/feature/family_group/provider/dto/detail_group_dto.dart';
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
        success: _success,
        failureAPI: (error) => _failureInviteGenerate(error),
        inviteToClipboard: () => _inviteToClipboard(),
        clipboardTapped: (invite, fromList) =>
            _inviteButtonTapped(invite, fromList),
        loading: _isLoading,
        activeAndInactiveYoung: _activeAndInactiveYoung,
      );

  _onAppear(BuildContext context) {
    state.user = profileStore.user;
    state.context = context;

    return Effect.runAndEmit(() async {
      final user = state.user;

      if (user != null) {
        await send(const FamilyGroupAction.loading(true));
        await GroupAPI.get(user.family?.groups?.first.groupId ?? "").fold(
          (success) => send(FamilyGroupAction.success(success)),
          (error) => send(FamilyGroupAction.failureAPI(error)),
        );

        await ListInviteAPI.list(user.userId, InviteUserType.Young).fold(
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
          "Com esse link você poderá entrar no aplicativo: https://poscrisma-be163.web.app/#/invite/$inviteCode",
        );

        // send(const FamilyGroupAction.inviteToClipboard());
      } else if (invite != null) {
        await onShare(
          "Envie esse codigo ao seu jovem",
          "Com esse link você poderá entrar no aplicativo: https://poscrisma-be163.web.app/#/invite/${invite.inviteCode}",
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

  FutureOr<Effect> _isLoading(bool isLoading) {
    state.isLoading = isLoading;
    return Effect.emit();
  }

  FutureOr<Effect> _activeAndInactiveYoung(
      String id, bool isActive, String groupId) {
    return Effect.run(() async {
      send(const FamilyGroupAction.loading(true));
      UserAPI.activeYoung(id, isActive).fold(
        (success) async {
          await GroupAPI.get(groupId).fold(
            (success) => send(FamilyGroupAction.success(success)),
            (error) => send(FamilyGroupAction.failureAPI(error)),
          );
        },
        (error) => send(FamilyGroupAction.failureAPI(error)),
      );
    });
  }

  FutureOr<Effect> _successListInvite(ListInviteByUserDTO dto) {
    state.listInvite = dto;
    return Effect.emit();
  }

  FutureOr<Effect> _success(DetailGroupDto dto) {
    state.detailGroup = dto;
    return Effect.runAndEmit(() async {
      send(const FamilyGroupAction.loading(false));
    });
  }

  FutureOr<Effect> _successInviteGenerate(InviteResponseDTO dto) {
    state.invite = dto;
    return Effect.emit();
  }

  FutureOr<Effect> _failureInviteGenerate(ErrorInfo errorInfo) {
    value.status = FamilyGroupInviteStatus.failure;

    return Effect.run(() async {
      send(const FamilyGroupAction.loading(false));
      showModalBottomSheet(
        context: state.context,
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
      );
    });
  }
}
