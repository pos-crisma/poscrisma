// ignore_for_file: library_private_types_in_public_api

import 'package:core/core.dart';

import '../../dto/create_mascot_response_dto.dart';
import '../state/create_mascot_state.dart';

part 'create_mascot_action.freezed.dart';

@freezed
abstract class CreateMascotAction with _$CreateMascotAction {
  const factory CreateMascotAction.onAppear() = _OnAppear;
  const factory CreateMascotAction.handlerTapped() = _HandlerTapped;
  const factory CreateMascotAction.genderTapped(UserGender gender) =
      _GenderTapped;
  const factory CreateMascotAction.service() = _Service;
  const factory CreateMascotAction.successService(CreateMascotResponseDTO dto) =
      _SuccessService;
  const factory CreateMascotAction.failureService(ErrorInfo errorInfo) =
      _FailureService;
  const factory CreateMascotAction.loadingService() = _LoadingService;
}
