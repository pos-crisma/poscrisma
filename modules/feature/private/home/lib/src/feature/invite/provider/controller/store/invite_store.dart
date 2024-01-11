import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

import '../action/invite_action.dart';
import '../state/invite_state.dart';

class InviteReducer extends Reducer<InviteAction, InviteState> {
  InviteReducer() : super(InviteState());

  @override
  Future<Effect> reduce(InviteAction action) async => action.when(
        onAppear: (context) => _onAppear(context),
        successInviteGenerate: (dto) => _successInviteGenerate(dto),
        failure: (error) => _failure(error),
        inviteButtonTapped: () => _inviteButtonTapped(),
        inviteSelector: (number) => _inviteSelector(number),
        inviteIsGuest: () => _inviteIsGuest(),
        getList: () => _getList(),
        successInviteList: (dto) => _successInvite(dto),
        clipboardTapped: (inviteCode) => _clipboardTapped(inviteCode),
        clipboardAdded: () => _clipboardAdded(),
      );

  _onAppear(BuildContext context) {
    state.context = context;

    return Effect.runAndEmit(() async {
      send(const InviteAction.getList());
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
        1 => InviteType.CreateUser,
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
          guest: isGuest ? true : null,
        ),
      ).fold(
        (success) => send(InviteAction.successInviteGenerate(success)),
        (error) => send(InviteAction.failure(error)),
      );
    });
  }

  _successInviteGenerate(InviteResponseDTO dto) {
    state.invite = dto;
    return Effect.runAndEmit(() async {
      await onShare(
        "Envie esse convite ao seu familiar",
        "Com esse link você poderá entrar no aplicativo: http://poscrisma.ddns.com.br/#/invite/${dto.inviteCode}",
      );

      send(const InviteAction.clipboardAdded());
    });
  }

  _failure(ErrorInfo errorInfo) {
    value.status = ViewStatus.failure;

    return Effect.run(() async {
      final message =
          errorInfo.message?.toString().replaceAll("[", "").replaceAll("]", "");
      final errorMessage = errorInfo.error?.message.toString();

      state.context.pushNamed(
        '/error/',
        queryParameters: {
          'title': errorMessage,
          'content': (message ?? ""),
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

  _inviteSelector(int value) {
    state.inviteSelector = value;
    state.listInvites = null;
    state.invite = null;

    if (state.inviteSelector == 3) {
      state.isGuest = true;
    } else {
      state.isGuest = false;
    }

    return Effect.runAndEmit(() async => send(const InviteAction.getList()));
  }

  _inviteIsGuest() {
    if (state.inviteSelector == 3) {
      state.isGuest = true;
    } else {
      state.isGuest = !state.isGuest;
    }

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

      final user = profileStore.user;

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
    state.listInvites = dto;
    return Effect.emit();
  }

  _clipboardTapped(String inviteCode) {
    return Effect.run(() async {
      final inviteSelector = switch (state.inviteSelector) {
        1 => "Padrinho",
        2 => "Voluntario",
        3 => "Jovem [Convidado]",
        _ => "Padrinho",
      };

      await onShare(
        "Envie esse codigo ao $inviteSelector",
        "Com esse link você poderá entrar no aplicativo: http://poscrisma.ddns.com.br/#/invite/$inviteCode",
      );
      send(const InviteAction.clipboardAdded());
    });
  }

  _clipboardAdded() {
    return Effect.run(() async {
      // final context = state.context;

      // ScaffoldMessenger.of(context).showSnackBar(
      //   customSnackBar(context: context),
      // );
    });
  }
}
