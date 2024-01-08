import 'package:core/core.dart';

import '../dto/creatae_game_request_dto.dart';
import '../dto/game_response_dto.dart';

mixin GameAPI {
  static AsyncResult<GameResponseDTO, ErrorInfo> get() async {
    final BaseRequest client = Modular.get();

    return client
        .get('/games')
        .map(GameResponseDTO.fromJson) //
        .map(_storage)
        .fold(Success.new, Failure.new);
  }

  static AsyncResult<DefaultResponseDTO, ErrorInfo> store(
      CreateGameRequestDTO dto) async {
    final BaseRequest client = Modular.get();

    return client
        .post('/game', data: dto.toJson())
        .map(DefaultResponseDTO.fromJson)
        .fold(Success.new, Failure.new);
  }

  static Future<GameResponseDTO> _storage<T>(GameResponseDTO data) async {
    final Storage storage = Modular.get();
    await storage.put('@games', data.toRawJson());

    return data;
  }
}
