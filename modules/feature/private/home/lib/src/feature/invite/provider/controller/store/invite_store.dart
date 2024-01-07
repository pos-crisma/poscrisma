import 'dart:async';

import 'package:core/core.dart';
import 'package:design/color/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      (action) => _clipboardTapped(action.inviteCode),
      (action) => _clipboardAdded(),
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
    return Effect.runAndEmit(() async {
      await Clipboard.setData(ClipboardData(text: dto.inviteCode));
      send(InviteAction.clipboardAdded());
    });
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
    state.listInvite = null;
    state.invite = null;

    if (state.inviteSelector == 3) {
      state.isGuest = true;
    } else {
      state.isGuest = false;
    }

    return Effect.runAndEmit(() async => send(InviteAction.getList()));
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
    state.listInvite = dto;
    return Effect.emit();
  }

  _clipboardTapped(String inviteCode) {
    return Effect.run(() async {
      await Clipboard.setData(ClipboardData(text: inviteCode));
      send(InviteAction.clipboardAdded());
    });
  }

  _clipboardAdded() {
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
                              color: Colors.deepPurple.shade600,
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
}
