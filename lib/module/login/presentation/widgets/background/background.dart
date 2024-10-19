import 'dart:math' as math;

import 'package:poscrisma/index.dart';
// Dependências para a animação dos cards
import 'package:flame/extensions.dart';
import 'package:flame/game.dart';
import 'package:flame_forge2d/flame_forge2d.dart' hide Transform;
import 'package:flutter/material.dart';

// Classe Background que cria o widget de fundo animado
class Background extends StatefulWidget {
  const Background({super.key});

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  final _tilesState = TilesState(
    count: AcampsDataGenerator.getAllCamps().length,
  );

  // Criação do FlowDelegate que controla a disposição e animação dos tiles
  late final _flowDelegate = _BackgroundFlowDelegate(
    tilesState: _tilesState,
  );

  // Simulação do background utilizando o Flame e Forge2D
  late final _simulation = _BackgroundSimulation(tilesState: _tilesState);

  @override
  void dispose() {
    _tilesState.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Limita as operações de pintura para melhorar o desempenho
    return RepaintBoundary(
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Widget que exibe a simulação do Forge2D
          GameWidget(game: _simulation),
          RepaintBoundary(
            // Usado para organizar os tiles dinamicamente
            child: Flow.unwrapped(
              clipBehavior: Clip.none,
              delegate: _flowDelegate,
              children: [
                for (var id = 0; id < _tilesState.count; id++)
                  Tile(
                    data: _tilesState.getData(id),
                    onDragStart: (position) {
                      _simulation.onDragStart(id, position);
                    },
                    onDragUpdate: (position) {
                      _simulation.onDragUpdate(id, position);
                    },
                    onDragEnd: () {
                      _simulation.onDragEnd();
                    },
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Classe que controla a posição e animação dos tiles
class _BackgroundFlowDelegate extends FlowDelegate {
  _BackgroundFlowDelegate({
    required this.tilesState,
  }) : super(repaint: tilesState);

  final TilesState tilesState;

  final _random = math.Random();

  @override
  Size getSize(BoxConstraints constraints) {
    // Retorna o tamanho máximo disponível para os tiles
    return constraints.biggest;
  }

  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
    // Remove restrições de tamanho dos filhos (tiles)
    return constraints.loosen();
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    final size = context.size;

    if (size == Size.zero) {
      return;
    }

    if (tilesState.isReady) {
      // Se o estado dos tiles estiver pronto, pinta cada tile na tela
      for (var id = 0; id < tilesState.count; id++) {
        final config = tilesState.getConfig(id);

        context.paintChild(
          id,
          transform: _computeTransformation(
              config), // Aplica a transformação (posição e rotação)
        );
      }
    } else {
      // Se o estado não estiver pronto, inicializa as posições dos tiles
      final maxY = size.height * 0.75;

      final half = tilesState.count ~/ 2;

      for (var id = 0; id < tilesState.count; id++) {
        final childSize = context.getChildSize(id)!; // Tamanho do tile

        final Offset childPosition;

        final maxX = id < half
            ? size.width / 2
            : size.width; // Define a área onde o tile será posicionado

        // Gera uma posição aleatória para o tile no eixo X
        var dx = _random.nextDouble() * maxX;
        if (dx + childSize.width > size.width) {
          dx = size.width -
              childSize.width; // Ajusta para que o tile não ultrapasse o limite
        }

        // Gera uma posição aleatória para o tile no eixo Y
        var dy = _random.nextDouble() * maxY;
        if (dy + childSize.height > maxY) {
          dy = maxY -
              childSize.height; // Ajusta para que o tile não ultrapasse a tela
        }

        // Define a posição final do tile
        childPosition = Offset(dx, dy);

        // Define o ângulo de rotação aleatório
        final sign = _random.nextBool() ? 1 : -1;
        final factor = _random.nextInt(20) + 10;
        final childAngle = math.pi / 2 / factor * sign;

        final config = TileConfig(
          size: childSize,
          position: childPosition,
          angle: childAngle,
        );

        tilesState.setConfig(
          id: id,
          config: config,
        );

        context.paintChild(
          id,
          transform: _computeTransformation(config),
        );
      }
    }
  }

  Matrix4 _computeTransformation(TileConfig config) {
    final translation = Alignment.center.alongSize(config.size);

    return Matrix4.identity()
      ..translate(translation.dx, translation.dy)
      ..multiply(
        Matrix4.identity()
          ..translate(config.position.dx, config.position.dy)
          ..rotateZ(config.angle),
      )
      ..translate(-translation.dx, -translation.dy);
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    return false;
  }
}

// Classe que gerencia a simulação física dos tiles usando Forge2D
class _BackgroundSimulation extends Forge2DGame {
  // Fator de zoom para ajustar o tamanho dos elementos
  static const zoom = 20.0;

  _BackgroundSimulation({
    required TilesState tilesState,
  })  : _tilesState = tilesState,
        super(
          zoom: zoom,
          gravity: Vector2.zero(),
        );

  final _random = math.Random();

  final TilesState _tilesState;

  final Map<int, Body> _bodies = {};

  late final Body
      _groundBody; // Corpo físico usado como referência para o joint do mouse

  MouseJoint? _mouseJoint; // Joint usado para arrastar os tiles

  @override
  Color backgroundColor() => Colors.white;

  @override
  void onLoad() {
    super.onLoad();

    _groundBody = world.createBody(BodyDef());

    _createBoundaries();
  }

  @override
  void renderTree(Canvas canvas) {}

  @override
  // ignore: must_call_super
  void render(Canvas canvas) {}

  @override
  void renderDebugMode(Canvas canvas) {}

  @override
  void onDispose() {
    onDragEnd();
    super.onDispose();
  }

  @override
  void update(double dt) {
    super.update(dt);

    if (!_tilesState.isReady) {
      return;
    }

    if (_bodies.isEmpty) {
      for (var id = 0; id < _tilesState.count; id++) {
        _createTileBody(
          id: id,
          config: _tilesState.getConfig(id),
        );
      }
    } else {
      assert(
        _bodies.length == _tilesState.count,
        'bodies count has to be exactly the same as tile count',
      );

      for (final MapEntry(key: id, value: body) in _bodies.entries) {
        final previousConfig = _tilesState.getConfig(id);

        final size = previousConfig.size;

        final position = worldToScreen(body.position).toOffset().translate(
              -size.width / 2,
              -size.height / 2,
            );

        final config = previousConfig.copyWith(
          position: position,
          angle: body.angle,
        );

        _tilesState.setConfig(
          id: id,
          config: config,
        );
      }

      _tilesState.notifyListenersIfChanged();
    }
  }

  void _createBoundaries() {
    final visibleRect = camera.visibleWorldRect;
    const translation = 1.0;

    final topLeft =
        visibleRect.topLeft.translate(-translation, -translation).toVector2();
    final topRight =
        visibleRect.topRight.translate(translation, -translation).toVector2();
    final bottomRight =
        visibleRect.bottomRight.translate(translation, translation).toVector2();
    final bottomLeft =
        visibleRect.bottomLeft.translate(-translation, translation).toVector2();

    _createBoundary(start: topLeft, end: topRight);
    _createBoundary(start: topRight, end: bottomRight);
    _createBoundary(start: bottomRight, end: bottomLeft);
    _createBoundary(start: bottomLeft, end: topLeft);
  }

  void _createBoundary({
    required Vector2 start,
    required Vector2 end,
  }) {
    final shape = EdgeShape()..set(start, end);
    final fixtureDef = FixtureDef(shape, friction: 0.3);
    final bodyDef = BodyDef(
      position: Vector2.zero(),
    );

    world.createBody(bodyDef).createFixture(fixtureDef);
  }

  void _createTileBody({
    required int id,
    required TileConfig config,
  }) {
    final globalCenterPosition = config.position.translate(
      config.size.width / 2,
      config.size.height / 2,
    );

    final position = screenToWorld(
      Vector2(globalCenterPosition.dx, globalCenterPosition.dy),
    );
    final size = config.size / zoom;

    final bodyDef = BodyDef(
      position: position,
      angle: config.angle,
      type: BodyType.dynamic,
    );
    final body = world.createBody(bodyDef);

    final shape = PolygonShape()..setAsBoxXY(size.width / 2, size.height / 2);
    final fixtureDef = FixtureDef(
      shape,
      restitution: 0.2,
      friction: 0.5,
      density: 1000,
      filter: Filter()..groupIndex = -1,
    );
    body.createFixture(fixtureDef);

    if (_random.nextBool()) {
      final sign = _random.nextBool() ? 1 : -1;
      final impulse = 800.0 + _random.nextInt(500);
      body.applyLinearImpulse(Vector2(0, impulse * sign));
    }

    if (_random.nextBool()) {
      final sign = _random.nextBool() ? 1 : -1;
      final impulse = 7000.0 + _random.nextInt(5000);
      body.applyAngularImpulse(impulse * sign);
    }

    _bodies[id] = body;
  }

  void onDragStart(int id, Offset position) {
    assert(_bodies.containsKey(id), 'body with $id id is not found');

    final body = _bodies[id]!;
    final localPosition = screenToWorld(position.toVector2());

    final mouseJointDef = MouseJointDef()
      ..maxForce = 2000 * body.mass
      ..dampingRatio = 0.1
      ..frequencyHz = 50
      ..target.setFrom(localPosition)
      ..collideConnected = false
      ..bodyA = _groundBody
      ..bodyB = body;

    if (_mouseJoint == null) {
      _mouseJoint = MouseJoint(mouseJointDef);
      world.createJoint(_mouseJoint!);
    }
  }

  void onDragUpdate(int id, Offset position) {
    final localPosition = screenToWorld(position.toVector2());
    _mouseJoint?.setTarget(localPosition);
  }

  void onDragEnd() {
    if (_mouseJoint != null) {
      world.destroyJoint(_mouseJoint!);
      _mouseJoint = null;
    }
  }
}
