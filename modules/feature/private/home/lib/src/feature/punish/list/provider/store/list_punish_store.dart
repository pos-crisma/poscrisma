import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

import '../action/list_punish_action.dart';
import '../state/list_punish_state.dart';

class ListPunishStore extends Reducer<ListPunishAction, ListPunishState> {
  ListPunishStore(BuildContext context)
      : super(
          ListPunishState(context: context),
        );

  @override
  Future<Effect> reduce(ListPunishAction action) async {
    return action.when(
      onAppear: _onAppear,
      getUserService: _service,
      loading: _loading,
      success: _success,
      failure: _failure,
      markDone: _markDone,
    );
  }

  FutureOr<Effect> _onAppear() {
    return Effect.run(() async {
      send(const ListPunishAction.loading(true));
      await send(const ListPunishAction.getUserService());
    });
  }

  FutureOr<Effect> _service() {
    return Effect.run<void>(() async {
      final result = PunishAPI.stream();

      result.listen((event) {
        final events = event.docChanges;

        List<DocumentSnapshot<PunishDTO>> listPunish = [];

        for (var element in events) {
          if (element.doc.exists) {
            final punish = element.doc;
            listPunish.add(punish);
          }
        }

        send(ListPunishAction.success(listPunish));
      });
    });
  }

  FutureOr<Effect> _loading(bool isLoading) {
    value.isLoading = isLoading;
    return Effect.emit();
  }

  FutureOr<Effect> _success(List<DocumentSnapshot<PunishDTO>> dto) {
    state.listPunish.removeWhere((element) =>
        dto.where((x) => x.data()!.id == element.data()!.id).isNotEmpty);
    state.listPunish.addAll(dto);

    state.listPunish
        .sort((a, b) => a.data()!.createdAt.compareTo(b.data()!.createdAt));

    return Effect.emit();
  }

  FutureOr<Effect> _failure(ErrorInfo errorInfo) {
    return Effect.run(() async {
      send(const ListPunishAction.loading(false));
    });
  }

  FutureOr<Effect> _markDone(String id, bool isDone) {
    return Effect.run(() async {
      PunishAPI.updatePunish(id, isDone);
    });
  }
}
