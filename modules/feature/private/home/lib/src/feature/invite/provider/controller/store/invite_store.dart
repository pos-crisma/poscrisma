import 'dart:async';
import 'dart:developer';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

import '../action/invite_action.dart';
import '../state/invite_state.dart';

class InviteReducer extends Reducer<InviteAction, InviteState> {
  InviteReducer() : super(InviteState());

  @override
  Future<Effect> reduce(InviteAction action) async {
    return action.fold(
      (action) => _onAppear(action.context),
      (action) => _getList(),
      (action) => _failure(action.error),
      (action) => _inviteButtonTapped(),
      (action) => _successInviteGenerate(action.dto),
      (action) => _inviteSelector(action.selector),
      (action) => _inviteIsGuest(),
      (action) => _successInvite(action.dto),
    );
  }

  _onAppear(BuildContext context) {
    state.context = context;

    return Effect.runAndEmit(() async {
      send(InviteAction.getList());
    });
  }

  _inviteButtonTapped() {
    return Effect.run(() async {
      final userType = switch (state.inviteSelector) {
        1 => InviteUserType.GodParent,
        2 => InviteUserType.Voluntary,
        3 => InviteUserType.Young,
        _ => InviteUserType.GodParent,
      };
      final inviteType = switch (state.inviteSelector) {
        1 => InviteType.CreateParent,
        2 => InviteType.CreateUser,
        3 => InviteType.CreateUser,
        _ => InviteType.CreateUser,
      };

      final isGuest = state.isGuest;

      await InviteAPI.createInvite(
        InviteRequestDTO(
          type: inviteType,
          typeUser: userType,
          familyId: null,
          groupId: null,
          guest: isGuest,
        ),
      ).fold(
        (success) => send(InviteAction.successInviteGenerate(success)),
        (error) => send(InviteAction.failure(error)),
      );
    });
  }

  _successInviteGenerate(InviteResponseDTO dto) {
    state.invite = dto;
    return Effect.emit();
  }

  _failure(ErrorInfo errorInfo) {
    value.status = ViewStatus.failure;

    return Effect.run(() async {
      final message =
          errorInfo.message?.toString().replaceAll("[", "").replaceAll("]", "");
      final errorMessage = errorInfo.error?.message.toString();

      Modular.to.pushNamed(
        '/error/',
        arguments: {
          'title': errorMessage,
          'content': (message ?? ""),
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

  _inviteSelector(int value) {
    state.inviteSelector = value;

    return Effect.runAndEmit(
      () async => send(InviteAction.getList()),
    );
  }

  _inviteIsGuest() {
    state.isGuest = !state.isGuest;
    return Effect.emit();
  }

  _getList() {
    return Effect.run(() async {
      final inviteSelector = switch (state.inviteSelector) {
        1 => InviteUserType.GodParent,
        2 => InviteUserType.Voluntary,
        3 => InviteUserType.Young,
        _ => InviteUserType.GodParent,
      };
      final ProfileStore store = Modular.get();
      final user = store.user;

      if (user != null) {
        await ListInviteAPI.list(
          user.userId,
          inviteSelector,
        ).fold(
          (success) => send(InviteAction.successInviteList(success)),
          (error) => send(InviteAction.failure(error)),
        );
      }
    });
  }

  _successInvite(ListInviteByUserDTO dto) {
    log(dto.toRawJson(), name: "Invite");
    return Effect.emit();
  }
}
