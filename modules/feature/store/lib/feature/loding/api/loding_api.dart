import 'package:core/core.dart';
import 'package:store/feature/loding/dto/loding_dto.dart';

mixin LodgingAPI {
  static AsyncResult<LodingsResponseDTO, ErrorInfo> get() async {
    final request = await baseRequest;

    return request
        .get('/lodging')
        .map(LodingsResponseDTO.fromJson)
        .fold(Success.new, Failure.new);
  }
}
