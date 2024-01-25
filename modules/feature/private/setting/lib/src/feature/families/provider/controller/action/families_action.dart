import 'package:core/core.dart';

import '../../dto/families_response_dto.dart';

part 'families_action.freezed.dart';

@freezed
abstract class FamiliesAction with _$FamiliesAction {
  const factory FamiliesAction.onAppear() = _OnAppearTapped;
  const factory FamiliesAction.pullToRefresh() = _PullToRefresh;
  const factory FamiliesAction.loading(bool isLoading) = _Loading;
  const factory FamiliesAction.service() = _Service;
  const factory FamiliesAction.failure(ErrorInfo error) = _Failure;
  const factory FamiliesAction.success(FamiliesResponseDTO dto) = _Success;
}
