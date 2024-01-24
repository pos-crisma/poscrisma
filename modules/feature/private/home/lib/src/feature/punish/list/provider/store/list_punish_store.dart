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
      addedPunish: _addedPunish,
      removePunish: _removePunish,
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

        for (var element in events) {
          if (element.type != DocumentChangeType.removed) {
            send(ListPunishAction.addedPunish(element.doc));
          } else {
            send(ListPunishAction.removePunish(element.doc));
          }
        }
      });
    });
  }

  FutureOr<Effect> _loading(bool isLoading) {
    value.isLoading = isLoading;
    return Effect.emit();
  }

  FutureOr<Effect> _addedPunish(DocumentSnapshot<PunishDTO> dto) {
    state.listPunish.add(dto);

    state.listPunish
        .sort((a, b) => a.data()!.createdAt.compareTo(b.data()!.createdAt));

    return Effect.emit();
  }

  FutureOr<Effect> _removePunish(DocumentSnapshot<PunishDTO> dto) {
    state.listPunish.removeWhere((element) => element.id == dto.id);

    state.listPunish
        .sort((a, b) => a.data()!.createdAt.compareTo(b.data()!.createdAt));

    return Effect.emit();
  }

  FutureOr<Effect> _failure(ErrorInfo errorInfo) {
    return Effect.run(() async {
      send(const ListPunishAction.loading(false));
    });
  }

  FutureOr<Effect> _markDone(DocumentSnapshot<PunishDTO> doc) {
    return Effect.run(() async {
      doc.reference.update({
        "done": !(doc.data()!.done),
      });
    });
  }
}
