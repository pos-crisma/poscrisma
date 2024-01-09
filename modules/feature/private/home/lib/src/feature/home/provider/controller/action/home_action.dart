import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:store/store.dart';

part 'home_action.freezed.dart';

@freezed
abstract class HomeAction with _$HomeAction {
  const factory HomeAction.onAppear(BuildContext context) = _OnAppearTapped;
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
  const factory HomeAction.managerRoom() = _ManagerRoomTapped;
  const factory HomeAction.internetUpdate(bool status) = _InternetStatus;
  // const factory HomeAction.getPackageData(PackageData package) = _GetPackageData;
  // const factory HomeAction.internetUpdate(bool status) = _InternetStatus;
}
