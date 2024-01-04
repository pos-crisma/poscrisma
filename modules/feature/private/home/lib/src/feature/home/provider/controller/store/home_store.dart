import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

import '../action/home_action.dart';
import '../state/home_state.dart';

class HomeReducer extends Reducer<HomeAction, HomeState> {
  HomeReducer()
      : super(
          HomeState(
            status: HomeServiceStatus.idle,
          ),
        );

  @override
  Future<Effect> reduce(HomeAction action) async {
    return action.fold(
      (action) => _onAppear(),
      (action) => _service(),
      (action) => _loading(),
      (action) => _success(action.user),
      (action) => _failure(action.error),
      (action) => _versionStream(),
      (action) => _versionUpdate(action.version),
    );
  }

  _onAppear() {
    return Effect.run(() async {



      send(HomeAction.userService());
    });
  }

  _service() {
    return Effect.run<void>(() async {
      await send(HomeAction.versionService());

      await send(HomeAction.loadingUserService());
      final result = await ProfileAPI.getProfile();

      result.fold(
        (success) => send(HomeAction.successUserService(success)),
        (failure) => send(HomeAction.failureUserService(failure)),
      );
    });
  }

  _loading() {
    value.status = HomeServiceStatus.loading;
    return Effect.emit();
  }

  _success(ProfileDTO user) {
    final ProfileStore store = Modular.get();
    store.updateUser = user;
    state.user = user;

    return Effect.emit();
  }

  _failure(ErrorInfo errorInfo) {
    value.status = HomeServiceStatus.failure;

    return Effect.run(() async {
      Modular.to.pushNamed(
        '/error/',
        arguments: {
          'title': errorInfo.response,
          'content': errorInfo.error.message,
          'backButton': () => Modular.to.pop(),
          'onPress': () {
            Modular.to.pop();
            HomeAction.userService();
          },
          'titleButton': 'Tentar novamente',
          'isShowButton': false,
          'enableColor': Colors.amber,
        },
      );
    });
  }

  _versionStream() {
    return Effect.run(() async {
      final result = VersionAPI.streamVersion();

      result.listen((event) {
        final settingsVersion = event.data();
        if (settingsVersion != null) {
          send(HomeAction.versionUpdate(settingsVersion));
        }
      });
    });
  }

  _versionUpdate(Version version) {
    state.version = version;

    return Effect.emit();
  }

}
