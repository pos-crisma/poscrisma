import 'dart:async';
import 'dart:io';

import 'package:core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

import '../../../../update/page/update_page.dart';
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
      onAppear: _onAppear,
      userService: _service,
      loadingUserService: _loading,
      successUserService: _success,
      failureUserService: _failure,
      versionService: _versionStream,
      versionUpdate: _versionUpdate,
      internetChecker: _internetChecker,
      offlineService: _offlineService,
      managerRoom: () => Effect.emit(),
      internetUpdate: _internetUpdate,
    );
  }

  FutureOr<Effect> _onAppear(BuildContext context) {
    state.context = context;
    return Effect.runAndEmit(() async {
      await send(const HomeAction.versionService());

      final result = await Connectivity().checkConnectivity();
      final resultStatus = switch (result) {
        ConnectivityResult.mobile => true,
        ConnectivityResult.bluetooth => true,
        ConnectivityResult.ethernet => true,
        ConnectivityResult.wifi => true,
        ConnectivityResult.vpn => true,
        ConnectivityResult.other => true,
        ConnectivityResult.none => false,
      };

      await send(HomeAction.internetChecker(resultStatus));
      await send(const HomeAction.userService());
    });
  }

  FutureOr<Effect> _service() {
    return Effect.run<void>(() async {
      await send(const HomeAction.loadingUserService());

      return state.internetCheck
          ? await ProfileAPI.getProfile().fold(
              (success) => send(HomeAction.successUserService(success)),
              (failure) => send(HomeAction.failureUserService(failure)),
            )
          : send(const HomeAction.offlineService());
    });
  }

  FutureOr<Effect> _loading() {
    value.status = HomeServiceStatus.loading;
    return Effect.emit();
  }

  FutureOr<Effect> _success(ProfileDTO user) {
    final ProfileStore store = Modular.get();
    store.updateUser = user;
    state.user = user;

    return Effect.emit();
  }

  FutureOr<Effect> _failure(ErrorInfo errorInfo) {
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

  FutureOr<Effect> _versionStream() {
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

  FutureOr<Effect> _versionUpdate(Version version) {
    state.version = version;

    return Effect.runAndEmit(() async {
      if (!kIsWeb) {
        final package = await PackageData.getInfo();
        if (package.version != version.version ||
            !(int.parse(package.buildNumber) >= version.build)) {
          final context = state.context;
          if (context != null && state.showUpdatedModal == false) {
            Future.delayed(Durations.short1).then((value) {
              showModalBottomSheet(
                context: context,
                useSafeArea: true,
                isScrollControlled: true,
                isDismissible: false,
                enableDrag: false,
                builder: (context) => UpdatePage(
                  version: version,
                  action: () {
                    Platform.isAndroid //
                        ? openLink(Uri.parse(version.android))
                        : null;

                    Platform.isIOS //
                        ? openLink(Uri.parse(version.iOS))
                        : null;
                  },
                ),
              );
            });
          }
        }
      }
    });
  }

  FutureOr<Effect> _internetChecker(bool internetChecker) {
    state.internetCheck = internetChecker;

    return Effect.runAndEmit(() async {
      Connectivity().onConnectivityChanged.listen((event) async {
        final resultStatus = switch (event) {
          ConnectivityResult.mobile => true,
          ConnectivityResult.bluetooth => true,
          ConnectivityResult.ethernet => true,
          ConnectivityResult.wifi => true,
          ConnectivityResult.vpn => true,
          ConnectivityResult.other => true,
          ConnectivityResult.none => false,
        };

        await send(HomeAction.internetUpdate(resultStatus));
      });
    });
  }

  FutureOr<Effect> _offlineService() {
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

  FutureOr<Effect> _internetUpdate(bool status) {
    state.internetCheck = status;

    return Effect.emit();
  }
}
