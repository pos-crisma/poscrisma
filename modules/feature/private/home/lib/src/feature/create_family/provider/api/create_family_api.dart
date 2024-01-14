import 'package:core/core.dart';

import '../dto/create_family_group_request_dto.dart';
import '../dto/create_family_request_dto.dart';
import '../dto/create_family_response_dto.dart';

mixin CreateFamilyAPI {
  static AsyncResult<CreateFamilyResponseDTO, ErrorInfo> createFamily(
    CreateFamilyRequestDTO dto, {
    required String currentUserId,
  }) async {
    final request = await baseRequest;

    return request
        .post('/family/$currentUserId', data: dto.toJson())
        .map(CreateFamilyResponseDTO.fromJson)
        .fold(Success.new, Failure.new);
  }

  static AsyncResult<DefaultResponseDTO, ErrorInfo> createGroupFamily(
      CreateFamilyGroupRequestDTO dto) async {
    final request = await baseRequest;

    return request
        .post('/group', data: dto.toJson())
        .map(DefaultResponseDTO.fromJson)
        .fold(Success.new, Failure.new);
  }
}
