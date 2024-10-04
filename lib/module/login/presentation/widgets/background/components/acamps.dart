import 'package:flutter/material.dart';
import 'package:poscrisma/index.dart';

class AcampsPage extends StatefulWidget {
  final CampData campData;
  const AcampsPage({super.key, required this.campData});

  @override
  State<AcampsPage> createState() => _AcampsPageState();
}

class _AcampsPageState extends State<AcampsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Hero(
          tag: widget.campData.title,
          child: Text(
            widget.campData.title,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: widget.campData.imageUrl,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.campData.imageUrl),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const SizedBox.square(dimension: 200),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text('Hotel Fazenda ${widget.campData.location}'),
            ),
            ClipPath(
              clipper: WaveClipper(),
              child: Container(
                color: Colors.grey[300],
                height: 500,
                width: double.infinity,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 80, horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Caça ao Tesouro',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        widget.campData.tema,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 20),
                      //Possível Carrosel
                      Center(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(widget.campData.imageUrl),
                              fit: BoxFit.cover,
                            ),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const SizedBox.square(dimension: 250),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  const Text(
                    'Equipe Vencedora',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    widget.campData.equipe,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),
                  //Possível Carrosel
                  Center(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(widget.campData.imageUrl),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const SizedBox.square(dimension: 250),
                    ),
                  ),
                ],
              ),
            ),
            ClipPath(
              clipper: WaveClipper(),
              child: Container(
                color: Colors.grey[300],
                height: 500,
                width: double.infinity,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 80, horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Show de Taletos',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        widget.campData.show,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 20),
                      //Possível Carrosel
                      Center(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(widget.campData.imageUrl),
                              fit: BoxFit.cover,
                            ),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const SizedBox.square(dimension: 250),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    // Onda superior
    path.moveTo(0.0, 40); // Altera a altura inicial da onda

    // Pontos de controle para a curva superior
    var firstControlPoint = Offset(size.width / 4, 0);
    var firstEndPoint = Offset(size.width / 2, 30);

    var secondControlPoint = Offset(size.width * 3 / 4, 60);
    var secondEndPoint = Offset(size.width, 40);

    // Desenha as curvas da onda superior
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    // Fecha a onda superior e desce para a parte inferior
    path.lineTo(size.width, size.height - 40);

    // Onda inferior (espelhada)
    var lowerFirstControlPoint = Offset(size.width * 3 / 4, size.height);
    var lowerFirstEndPoint = Offset(size.width / 2, size.height - 30);

    var lowerSecondControlPoint = Offset(size.width / 4, size.height - 60);
    var lowerSecondEndPoint = Offset(0.0, size.height - 40);

    // Desenha as curvas da onda inferior
    path.quadraticBezierTo(lowerFirstControlPoint.dx, lowerFirstControlPoint.dy,
        lowerFirstEndPoint.dx, lowerFirstEndPoint.dy);

    path.quadraticBezierTo(
        lowerSecondControlPoint.dx,
        lowerSecondControlPoint.dy,
        lowerSecondEndPoint.dx,
        lowerSecondEndPoint.dy);

    path.lineTo(
        0.0, 40); // Conecta de volta à parte superior para fechar o caminho

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
