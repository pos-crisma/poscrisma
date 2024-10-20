import 'package:poscrisma/index.dart';
import 'package:flutter/widgets.dart';

class TilesState extends ChangeNotifier {
  TilesState({
    required this.count,
  });

  /// O número total de tiles
  final int count;

  /// Lista de todos os acampamentos disponíveis
  final List<CampData> allCamps = AcampsDataGenerator.getAllCamps();

  late final List<CampData> _data = List.generate(
    count,
    (index) {
      // Se a lista de acampamentos for menor que o número de tiles, ele repete os acampamentos.
      return allCamps[index % allCamps.length];
    },
  );

  /// Um mapa para armazenar as configurações de cada tile
  final Map<int, TileConfig> _config = {};

  /// Verifica se houve uma mudança
  bool _hasChange = false;

  /// Verifica se todos os tiles foram configurados
  bool get isReady => _config.length == count;

  /// Retorna os dados de um tile específico
  CampData getData(int id) {
    assert(id >= 0 && id < count, 'Tile com id $id não encontrado');
    return _data[id];
  }

  /// Retorna a configuração de um tile específico
  TileConfig getConfig(int id) {
    assert(_config.containsKey(id), 'Tile com id $id não encontrado');
    return _config[id]!;
  }

  /// Atualiza a configuração de um tile específico
  void setConfig({
    required int id,
    required TileConfig config,
  }) {
    if (_config[id] == config) {
      return;
    }

    _hasChange = true;
    _config[id] = config;
  }

  /// Notifica todos os ouvintes deste estado, se houver alterações
  void notifyListenersIfChanged() {
    if (_hasChange) {
      notifyListeners();
      _hasChange = false;
    }
  }
}
