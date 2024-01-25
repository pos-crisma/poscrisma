import 'package:core/core.dart';

import '../dto/families_response_dto.dart';

mixin FamilyAPI {
  static AsyncResult<FamiliesResponseDTO, ErrorInfo> get() async {
    final request = await baseRequest;

    return request
        .get('/family')
        .map(FamiliesResponseDTO.fromJson) //
        .map(_storage)
        .fold(Success.new, Failure.new);
  }

  static Future<FamiliesResponseDTO> _storage<T>(
      FamiliesResponseDTO data) async {
    await hiveStorage.put('@family', data.toRawJson());

    return data;
  }
}
