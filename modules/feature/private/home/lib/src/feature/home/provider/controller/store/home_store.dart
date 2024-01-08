import 'dart:async';
import 'dart:developer';

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
    return action.when(
      onAppear: () => _onAppear(),
      userService: () => _service(),
      loadingUserService: () => _loading(),
      successUserService: (user) => _success(user),
      failureUserService: (error) => _failure(error),
      versionService: () => _versionStream(),
      versionUpdate: (version) => _versionUpdate(version),
      internetChecker: (internetChecker) => _internetChecker(internetChecker),
      offlineService: () => _offlineService(),
      managerRoom: () => Effect.emit(),
      internetUpdate: (status) => _internetUpdate(status),
    );
  }

  _onAppear() {
    return Effect.run(() async {
      final package = await PackageData.getInfo();

      log(package.appName);
      log(package.buildNumber);
      log(package.packageName);
      log(package.version);

      send(const HomeAction.userService());

      InternetConnection().onStatusChange.listen((InternetStatus status) {
        send(HomeAction.internetUpdate(status));
        status == InternetStatus.connected
            ? send(const HomeAction.internetChecker(true))
            : send(const HomeAction.internetChecker(false));
      });
    });
  }

  _service() {
    return Effect.run<void>(() async {
      await send(const HomeAction.versionService());
      await send(const HomeAction.loadingUserService());

      final hasInternetAccess = await InternetConnection().hasInternetAccess;

      return hasInternetAccess
          ? await ProfileAPI.getProfile().fold(
              (success) => send(HomeAction.successUserService(success)),
              (failure) => send(HomeAction.failureUserService(failure)),
            )
          : send(const HomeAction.offlineService());
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
          'title': errorInfo.response.toString(),
          'content': errorInfo.error?.message.toString() ?? "",
          'backButton': () => Modular.to.pop(),
          'onPress': () {
            Modular.to.pop();
            const HomeAction.userService();
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

  _internetChecker(bool internetChecker) {
    state.internetCheck = internetChecker;

    return Effect.emit();
  }

  _offlineService() {
    return Effect.run(() async {
      final Storage storage = Modular.get();
      final value = await storage.get<String>("@profile");

      try {
        if (value != null) {
          final profile = ProfileDTO.fromRawJson(value);

          send(HomeAction.successUserService(profile));
        }
      } catch (e) {
        final error = ErrorInfo(
          code: -1,
          response: "Tente novamente",
          error: ErrorData(
            type: "Storage",
            statusCode: -1,
            message:
                "Tente novamente mais tarde, quando sua conexão com a internet retornar",
          ),
        );

        send(HomeAction.failureUserService(error));
      }
    });
  }

  _internetUpdate(InternetStatus status) {
    state.internetStatus = status;

    return Effect.emit();
  }
}
