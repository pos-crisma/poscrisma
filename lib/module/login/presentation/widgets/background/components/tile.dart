import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:poscrisma/index.dart';

// Definem callbacks que serão usados para arrastar os tiles
typedef TileDragStartCallback = void Function(
    Offset position); // Callback para início do arraste
typedef TileDragUpdateCallback
    = TileDragStartCallback; // Reutiliza o tipo de início para a atualização do arraste
typedef TileDragEndCallback = void Function(); // Callback para fim do arraste

class Tile extends StatelessWidget {
  const Tile({
    required this.data,
    required this.onDragStart,
    required this.onDragUpdate,
    required this.onDragEnd,
    super.key,
  });

  // Dados do acampamento que serão mostrados no tile
  final CampData data;
  final TileDragStartCallback onDragStart;
  final TileDragUpdateCallback onDragUpdate;
  final TileDragEndCallback onDragEnd;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // Ação ao clicar no tile, abrindo um modal expandido com detalhes do acampamento
      onTap: () {
        showBarModalBottomSheet(
          context: context,
          expand: true,
          builder: (context) => AcampsPage(campData: data),
        );
      },
      // Funções de arraste
      onPanStart: (details) => onDragStart(details.globalPosition),
      onPanUpdate: (details) => onDragUpdate(details.globalPosition),
      onPanEnd: (_) => onDragEnd(),
      onPanCancel: onDragEnd,
      child: DecoratedBox(
        decoration: _buildTileDecoration(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Para garantir que o conteúdo do texto se ajuste adequadamente
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTitle(),
                    _buildLocation(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _buildTileDecoration() {
    return const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Color(0x33B7B6B7),
          blurRadius: 16,
          offset: Offset(0, 3),
          spreadRadius: -2,
        ),
      ],
    );
  }

  Widget _buildTitle() {
    return Text(
      data.title,
      style: const TextStyle(
        fontFamily: 'Inter',
        fontWeight: FontWeight.w600,
        fontSize: 16,
        height: 20 / 16,
        letterSpacing: -0.24,
        color: Color(0xFF171717),
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildLocation() {
    return const Text(
      "Location", // Irei adicionar o data.location
      style: TextStyle(
        fontFamily: 'Inter',
        fontWeight: FontWeight.w600,
        fontSize: 12,
        height: 14 / 12,
        letterSpacing: 0.12,
        color: Color(0xFF737374),
      ),
    );
  }
}