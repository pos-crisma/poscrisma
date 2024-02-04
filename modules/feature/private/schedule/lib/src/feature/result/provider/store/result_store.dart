import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

import '../action/result_action.dart';
import '../state/result_state.dart';

class ResultReducer extends Reducer<ResultAction, ResultState> {
  ResultReducer(BuildContext context) : super(ResultState(context: context));

  @override
  Future<Effect> reduce(ResultAction action) {
    return action.when(
      onAppear: () async {
        return Effect.run(() async {
          send(const ResultAction.service());
        });
      },
      service: () async {
        return Effect.run(() async {
          final result = ResultAPI.stream();

          result.listen((event) {
            final events = event.docChanges;

            for (var element in events) {
              if (element.type == DocumentChangeType.added) {
                send(ResultAction.added(element.doc));
              } else if (element.type == DocumentChangeType.modified) {
                send(ResultAction.modifier(element.doc));
              } else {
                send(ResultAction.remove(element.doc));
              }
            }
          });
        });
      },
      added: (gameResult) async {
        state.listResult.add(gameResult);

        state.filterResult = state.listResult;

        return Effect.emit();
      },
      modifier: (gameResult) async {
        final index = state.listResult
            .indexWhere((element) => element.id == gameResult.id);
        state.listResult.removeWhere((element) => element.id == gameResult.id);

        state.listResult.insert(index, gameResult);

        state.filterResult = state.listResult;

        return Effect.emit();
      },
      remove: (gameResult) async {
        state.listResult.removeWhere((element) => element.id == gameResult.id);

        state.filterResult = state.listResult;

        return Effect.emit();
      },
    );
  }
}
