import 'package:core/core.dart';
import 'package:error/error.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

import '../action/game_action.dart';
import '../state/game_state.dart';

class GameReducer extends Reducer<GameAction, GameState> {
  GameReducer(BuildContext context)
      : super(
          GameState(context: context),
        );

  @override
  Future<Effect> reduce(GameAction action) async => action.when(
        onAppear: () {
          return Effect.run(() async {
            send(const GameAction.loading(true));
            send(const GameAction.service());

            state.filterController.addListener(() {
              final text = state.filterController.text;

              send(GameAction.filterByText(text));
            });
          });
        },
        service: () {
          return Effect.run(() async {
            await GameAPI.get().fold(
              (success) => send(GameAction.success(success)),
              (error) => send(GameAction.failure(error)),
            );
          });
        },
        scrollListener: () {
          return Effect.emit();
        },
        loading: (isLoading) {
          state.isLoading = isLoading;
          return Effect.emit();
        },
        success: (success) {
          state.games = success.games;
          state.filterGames = success.games;
          return Effect.send(const GameAction.loading(false));
        },
        failure: (error) {
          return Effect.run(() async {
            send(const GameAction.loading(false));
            showModalBottomSheet(
              context: state.context,
              builder: (context) {
                return ErrorPage(
                  title: error.response?.toString(),
                  content: error.error?.message.toString(),
                  backButton: () => Navigator.of(state.context).pop(),
                  onPress: null,
                  isShowButton: false,
                  enableColor: Colors.transparent,
                );
              },
            );
          });
        },
        buttonTapped: (game) {
          return Effect.emit();
        },
        offlineService: () {
          return Effect.emit();
        },
        filterByText: (text) {
          if (state.games != null && text.isNotEmpty) {
            state.filterGames = state.games!
                .where(
                  (element) =>
                      element.name != null &&
                      removeDiacritics(element.name!.toLowerCase())
                          .contains(removeDiacritics(text.toLowerCase())),
                )
                .toList();
          } else {
            state.filterGames = state.games;
          }

          return Effect.emit();
        },
      );
}
