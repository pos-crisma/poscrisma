import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

// Uma classe de configuração que mantém as propriedades de um tile,
class TileConfig extends Equatable {
  const TileConfig({
    required Size size,       
    required Offset position, 
    required double angle, 
  })  : _size = size,
        _position = position,
        _angle = angle;

  final Size _size;
  final Offset _position;
  final double _angle;

  // Getters para acessar as propriedades do tile.
  Size get size => _size;
  Offset get position => _position;
  double get angle => _angle;

  // Cria uma cópia do TileConfig atual, permitindo atualizar
  // propriedades específicas, caso necessário.
  TileConfig copyWith({
    Size? size,       
    Offset? position, 
    double? angle,     
  }) {
    return TileConfig(
      size: size ?? _size,            
      position: position ?? _position, 
      angle: angle ?? _angle,         
    );
  }

  // Lista de propriedades usadas pelo Equatable para comparações de valor.
  @override
  List<Object?> get props => [size, position, angle];
}
