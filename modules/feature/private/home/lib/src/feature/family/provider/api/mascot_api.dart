import 'package:core/core.dart';

import '../dto/macot_update_request_dto.dart';
import '../dto/mascot_response_dto.dart';
import '../model/mascot.dart';

mixin MascotApi {
  static AsyncResult<MascotsResponseDTO, ErrorInfo> get(String userId) async {
    final BaseRequest client = Modular.get();

    return client
        .get('/mascot/user/$userId')
        .map(MascotsResponseDTO.fromJson)
        .fold(Success.new, Failure.new);
  }

  static AsyncResult<Mascot, ErrorInfo> update(
    String mascotId,
    MascotUpdateDTO dto,
  ) async {
    final BaseRequest client = Modular.get();

    return client
        .patch('/mascot/$mascotId', data: dto.toJson())
        .map(Mascot.fromJson)
        .fold(Success.new, Failure.new);
  }
}
