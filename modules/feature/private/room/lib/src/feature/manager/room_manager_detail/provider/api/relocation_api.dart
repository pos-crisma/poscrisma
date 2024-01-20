import 'package:core/core.dart';

import '../dto/relocation_dto.dart';

mixin RelocationAPI {
  static AsyncResult<DefaultResponseDTO, ErrorInfo> relocation(
    RelocationDTO dto,
  ) async {
    final request = await baseRequest;

    return request
        .post(
          '/hosting/relocation',
          data: dto.toJson(),
        )
        .map(DefaultResponseDTO.fromJson)
        .fold(Success.new, Failure.new);
  }

  static AsyncResult<DefaultResponseDTO, ErrorInfo> checkIn(
    RelocationDTO dto,
  ) async {
    final request = await baseRequest;

    return request
        .post(
          '/hosting/check-In',
          data: dto.toJson(),
        )
        .map(DefaultResponseDTO.fromJson)
        .fold(Success.new, Failure.new);
  }
}
