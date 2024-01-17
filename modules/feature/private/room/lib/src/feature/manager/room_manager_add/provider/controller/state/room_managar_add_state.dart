import 'package:flutter/material.dart';

interface class RoomManagarAddState {
  ContentOnPage contentOnPage = ContentOnPage.room;

  TextEditingController nameController = TextEditingController(text: "");
  FocusNode nameFocus = FocusNode();
  TextEditingController blockController = TextEditingController(text: "");
  FocusNode blockFocus = FocusNode();
  TextEditingController bathroomController = TextEditingController(text: "");
  FocusNode bathroomFocus = FocusNode();
  TextEditingController singleBedController = TextEditingController(text: "");
  FocusNode singleBedFocus = FocusNode();
  TextEditingController doubleBedController = TextEditingController(text: "");
  FocusNode doubleBedFocus = FocusNode();
  TextEditingController supportedBedController =
      TextEditingController(text: "");
  FocusNode supportedBedFocus = FocusNode();
  TextEditingController couchBedController = TextEditingController(text: "");
  FocusNode couchBedFocus = FocusNode();
  TextEditingController observationController = TextEditingController(text: "");
  FocusNode observationFocus = FocusNode();
  TextEditingController imageController = TextEditingController(text: "");
  FocusNode imageFocus = FocusNode();

  bool isLoading = false;

  late BuildContext context;

  List<String> urlImage = [];
  bool hasMinibar = false;
  bool hasAirConditioning = false;
}

enum ContentOnPage {
  room(list: [
    RoomManagarAddType.block,
    RoomManagarAddType.name,
    RoomManagarAddType.bathroom,
    RoomManagarAddType.singleBed,
    RoomManagarAddType.doubleBed,
    RoomManagarAddType.supportedBed,
    RoomManagarAddType.couchBed,
    RoomManagarAddType.minibar,
    RoomManagarAddType.airConditioning,
    RoomManagarAddType.observations,
    RoomManagarAddType.images,
  ]);

  const ContentOnPage({required this.list});

  final List<RoomManagarAddType> list;
}

enum RoomManagarAddType {
  block(
    text: 'Nome do bloco do quarto',
    inputText: 'Nome do bloco do quarto',
    tipTitle:
        'Aqui voce pode criar seu nome de usuario unico\nRecomendação: Seu nome de usuario deve ser apenas em minusculo sem caracter especial\nPode seguir no exemplo abaixo:',
    tipContent: '- bloco a\n- bloco b',
    textInputAction: TextInputAction.done,
    textCapitalization: TextCapitalization.none,
    keyboardType: TextInputType.text,
  ),
  name(
    text: 'Nome do quarto',
    inputText: 'Nome do quarto',
    tipTitle: '',
    tipContent: '- Quarto 101\n- Quarto 102',
    textInputAction: TextInputAction.done,
    textCapitalization: TextCapitalization.none,
    keyboardType: TextInputType.text,
  ),
  bathroom(
    text: 'Numero de banheiros',
    inputText: 'Numero de banheiros',
    tipTitle: '',
    tipContent: '',
    textInputAction: TextInputAction.done,
    textCapitalization: TextCapitalization.none,
    keyboardType: TextInputType.number,
  ),
  singleBed(
    text: 'Camas simples',
    inputText: 'Numero de camas simples',
    tipTitle: '',
    tipContent: '',
    textInputAction: TextInputAction.done,
    textCapitalization: TextCapitalization.none,
    keyboardType: TextInputType.number,
  ),
  doubleBed(
    text: 'Camas duplas',
    inputText: 'Numero de camas duplas',
    tipTitle: '',
    tipContent: '',
    textInputAction: TextInputAction.done,
    textCapitalization: TextCapitalization.none,
    keyboardType: TextInputType.number,
  ),
  supportedBed(
    text: 'Camas auxiliares',
    inputText: 'Numeros de camas auxiliares',
    tipTitle: '',
    tipContent: '',
    textInputAction: TextInputAction.done,
    textCapitalization: TextCapitalization.none,
    keyboardType: TextInputType.number,
  ),
  couchBed(
    text: 'Numero de sofa cama',
    inputText: 'Numero de sofa cama',
    tipTitle: 'Adicionar numero de sofa cama',
    tipContent: '',
    textInputAction: TextInputAction.done,
    textCapitalization: TextCapitalization.none,
    keyboardType: TextInputType.number,
  ),
  minibar(
    text: 'Possui mini-bar',
    inputText: 'Marcar se possui:',
    tipTitle: '',
    tipContent: '',
  ),
  airConditioning(
    text: 'Possui ar condicionado',
    inputText: 'Marcar se possui:',
    tipTitle: '',
    tipContent: '',
  ),
  observations(
    text: 'Observações do quarto',
    inputText: 'Observações do quarto',
    tipTitle: 'Adicionar uma nota de observação no quarto',
    tipContent: '',
    textInputAction: TextInputAction.done,
    textCapitalization: TextCapitalization.none,
    keyboardType: TextInputType.url,
    maxLine: null,
  ),
  images(
    text: 'Adicione as imagens',
    inputText: 'Adicione as imagens',
    tipTitle: 'Uma imagem por vez, ela sera exibida num carroseu abaixo',
    tipContent: '- image0.com.br\n- image1.com.br',
    textInputAction: TextInputAction.done,
    textCapitalization: TextCapitalization.none,
    keyboardType: TextInputType.url,
  );

  const RoomManagarAddType({
    required this.text,
    required this.inputText,
    required this.tipTitle,
    required this.tipContent,
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.textInputAction,
    this.maxLine = 1,
  });

  final String text;
  final String inputText;
  final String tipTitle;
  final String tipContent;

  final TextInputType? keyboardType;
  final TextCapitalization? textCapitalization;
  final TextInputAction? textInputAction;

  final int? maxLine;
}
