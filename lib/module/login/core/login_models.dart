import 'dart:math';

class CampData {
  final String title;
  final String description;
  final String year;

  CampData({
    required this.title,
    required this.description,
    required this.year,
  });
}

class AcampsDataGenerator {
  static final campData = [
    CampData(
      title: 'Acampamento 2013',
      description: 'Descrição do Acampamento 2013',
      year: '2013',
    ),
    CampData(
      title: 'Acampamento 2014',
      description: 'Descrição do Acampamento 2014',
      year: '2014',
    ),
    CampData(
      title: 'Acampamento 2015',
      description: 'Descrição do Acampamento 2015',
      year: '2015',
    ),
    CampData(
      title: 'Acampamento 2016',
      description: 'Descrição do Acampamento 2016',
      year: '2016',
    ),
    CampData(
      title: 'Acampamento 2017',
      description: 'Descrição do Acampamento 2017',
      year: '2017',
    ),
    CampData(
      title: 'Acampamento 2018',
      description: 'Descrição do Acampamento 2018',
      year: '2018',
    ),
    CampData(
      title: 'Acampamento 2019',
      description: 'Descrição do Acampamento 2019',
      year: '2019',
    ),
  ];

  static final _random = Random();

  // Retorna um CampData aleatório da lista campData
  static CampData generate() {
    return campData[_random.nextInt(campData.length)];
  }
}
