import 'package:core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store/store.dart';

part 'home_action.freezed.dart';

@freezed
abstract class HomeAction with _$HomeAction {
  const factory HomeAction.onAppear() = _OnAppearTapped;
  const factory HomeAction.userService() = _UserService;
  const factory HomeAction.loadingUserService() = _LoadingUserService;
  const factory HomeAction.successUserService(ProfileDTO user) =
      _SuccessUserService;
  const factory HomeAction.failureUserService(ErrorInfo error) =
      _FailureUserService;
  const factory HomeAction.versionService() = _VersionService;
  const factory HomeAction.versionUpdate(Version version) = _VersionUpdate;
  const factory HomeAction.internetChecker(bool internetChecker) =
      _InternetChecker;
  const factory HomeAction.offlineService() = _OfflineService;
}
