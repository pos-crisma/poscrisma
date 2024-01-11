import 'package:core/core.dart';

import '../dto/create_game_material_request_dto.dart';
import '../dto/game_material_response_dto.dart';

mixin GameMaterialAPI {
  static AsyncResult<DefaultResponseDTO, ErrorInfo> store(
      CreateGameMaterialRequestDTO dto) async {
    return baseRequest
        .post('/game/material', data: dto.toJson())
        .map(DefaultResponseDTO.fromJson)
        .fold(Success.new, Failure.new);
  }

  static AsyncResult<GameMaterialResponseDTO, ErrorInfo> get() async {
    return baseRequest
        .get('/game/material')
        .map(GameMaterialResponseDTO.fromJson) //
        .map(_storage)
        .fold(Success.new, Failure.new);
  }

  static Future<GameMaterialResponseDTO> _storage<T>(
      GameMaterialResponseDTO data) async {
    await hiveStorage.put('@game_material', data.toRawJson());

    return data;
  }
}
