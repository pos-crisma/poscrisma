class CampData {
  final String title;
  final String imageUrl;
  final String location;
  final String tema;
  final String show;
  final String equipe;

  CampData({
    required this.title,
    required this.imageUrl,
    required this.location,
    required this.tema,
    required this.show,
    required this.equipe,
  });
}

class AcampsDataGenerator {
  static final campData = [
    CampData(
      title: 'Acampamento 2013',
      imageUrl: 'assets/images/fotonula2013.jpg',
      location: 'Location',
      tema: 'Tema',
      show: 'Tema',
      equipe: 'Nome',
    ),
    CampData(
      title: 'Acampamento 2014',
      imageUrl: 'assets/images/fotonula2014.jpg',
      location: 'Location',
      tema: 'Tema',
      show: 'Tema',
      equipe: 'Nome',
    ),
    CampData(
      title: 'Acampamento 2015',
      imageUrl: 'assets/images/fotonula2015.jpg',
      location: 'Location',
      tema: 'Tema',
      show: 'Tema',
      equipe: 'Nome',
    ),
    CampData(
      title: 'Acampamento 2016',
      imageUrl: 'assets/images/fotonula2016.jpg',
      location: 'Location',
      tema: 'Tema',
      show: 'Tema',
      equipe: 'Nome',
    ),
    CampData(
      title: 'Acampamento 2017',
      imageUrl: 'assets/images/fotonula2017.jpg',
      location: 'Location',
      tema: 'Tema',
      show: 'Tema',
      equipe: 'Nome',
    ),
    CampData(
      title: 'Acampamento 2018',
      imageUrl: 'assets/images/fotonula2018.jpg',
      location: 'Location',
      tema: 'Tema',
      show: 'Tema',
      equipe: 'Nome',
    ),
  ];

  // Função para retornar uma lista de todos os acampamentos
  static List<CampData> getAllCamps() {
    return campData;
  }

  // Função para pegar um acampamento específico pelo índice
  static CampData getCampByIndex(int index) {
    return campData[index];
  }
}
