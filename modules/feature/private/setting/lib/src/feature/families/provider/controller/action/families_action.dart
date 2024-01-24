import 'package:core/core.dart';

part 'families_action.freezed.dart';

@freezed
abstract class FamiliesAction with _$FamiliesAction {
  const factory FamiliesAction.onAppear() = _OnAppearTapped;
  const factory FamiliesAction.service() = _Service;
  const factory FamiliesAction.failure(ErrorInfo error) = _Failure;
  const factory FamiliesAction.success(dynamic dto) = _Success;
}
