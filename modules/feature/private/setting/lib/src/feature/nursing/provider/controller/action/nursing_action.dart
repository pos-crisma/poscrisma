import 'package:core/core.dart';
import 'package:store/store.dart';

part 'nursing_action.freezed.dart';

@freezed
abstract class NursingAction with _$NursingAction {
  const factory NursingAction.onAppear() = _OnAppearTapped;
  const factory NursingAction.service() = _Service;
  const factory NursingAction.failure(ErrorInfo error) = _Failure;
  const factory NursingAction.success(ListUserDTO data) = _Success;

  const factory NursingAction.filterUserByText(String userName) =
      _FilterUserByText;
}
