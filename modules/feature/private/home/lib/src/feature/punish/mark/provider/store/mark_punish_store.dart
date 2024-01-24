import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:home/src/feature/punish/mark/provider/state/mark_punish_state.dart';
import 'package:store/store.dart';

import '../action/mark_punish_action.dart';

class MarkPunishStore extends Reducer<MarkPunishAction, MarkPunishState> {
  MarkPunishStore(BuildContext context)
      : super(
          MarkPunishState(context: context),
        );

  @override
  Future<Effect> reduce(MarkPunishAction action) async {
    return action.when(
      onAppear: _onAppear,
      getUserService: _service,
      loading: _loading,
      success: _success,
      failure: _failure,
      markPunish: _markPunish,
      removePunish: _removePunish,
      filter: _filter,
      finishPunish: _finishPunish,
    );
  }

  FutureOr<Effect> _onAppear() {
    return Effect.run(() async {
      send(const MarkPunishAction.loading(true));
      await send(const MarkPunishAction.getUserService());

      state.filterController.addListener(() {
        final text = state.filterController.text;

        send(MarkPunishAction.filter(text));
      });
    });
  }

  FutureOr<Effect> _service() {
    return Effect.run<void>(() async {
      await UserAPI.listUser().fold(
        (success) => send(MarkPunishAction.success(success)),
        (failure) => send(MarkPunishAction.failure(failure)),
      );
    });
  }

  FutureOr<Effect> _loading(bool isLoading) {
    value.isLoading = isLoading;
    return Effect.emit();
  }

  FutureOr<Effect> _success(ListUserDTO user) {
    state.user = user.users;
    state.filterUser = user.users;

    return Effect.run(() async {
      send(const MarkPunishAction.loading(false));
    });
  }

  FutureOr<Effect> _failure(ErrorInfo errorInfo) {
    return Effect.run(() async {
      send(const MarkPunishAction.loading(false));
    });
  }

  FutureOr<Effect> _markPunish(String id) {
    state.punishUser.add(id);
    return Effect.emit();
  }

  FutureOr<Effect> _removePunish(String id) {
    state.punishUser.removeWhere((element) => element == id);
    return Effect.emit();
  }

  FutureOr<Effect> _finishPunish() {
    return Effect.run(() async {
      final result = await PunishAPI.createPunish(
        PunishDTO(
          punish: state.user!
              .where((element) =>
                  state.punishUser.where((x) => element.userId == x).isNotEmpty)
              .toList(),
          justifyPunish: state.punishController.text,
          createBy: profileStore.user?.nickName ?? "Não sabemos",
          createdAt: DateTime.now(),
        ),
      );

      print("created ${result.toString()}");
    });
  }

  FutureOr<Effect> _filter(String text) {
    if (state.user != null && text.isNotEmpty) {
      state.filterUser = state.filterUser!
          .where(
            (element) =>
                element.name != null &&
                removeDiacritics(element.name!.toLowerCase())
                    .contains(removeDiacritics(text.toLowerCase())),
          )
          .toList();
    } else {
      state.filterUser = state.user;
    }
    return Effect.emit();
  }
}
