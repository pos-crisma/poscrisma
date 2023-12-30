import 'package:core/core.dart';

import '../dto/create_family_request_dto.dart';
import '../dto/create_family_response_dto.dart';

mixin CreateFamilyAPI {
  static AsyncResult<CreateFamilyResponseDTO, ErrorInfo> createFamily(
      CreateFamilyRequestDTO dto) async {
    final BaseRequest client = Modular.get();

    return client
        .post('/auth/profile', data: dto)
        .map(CreateFamilyResponseDTO.fromJson)
        .fold(Success.new, Failure.new);
  }
}
