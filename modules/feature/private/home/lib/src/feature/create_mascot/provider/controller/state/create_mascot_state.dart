// ignore_for_file: public_member_api_docs, sort_constructors_first, constant_identifier_names
import 'package:flutter/material.dart';
import 'package:store/store.dart';

interface class CreateMascotState {
  late BuildContext context;
  ContentOnPage contentOnPage;

  UserGender genderInput;

  TextEditingController nameController;
  FocusNode nameFocus;
  TextEditingController ageController;
  FocusNode ageFocus;

  bool isLoading;

  CreateMascotState({
    this.contentOnPage = ContentOnPage.person,
    this.isLoading = false,
    required this.nameController,
    required this.nameFocus,
    required this.genderInput,
    required this.ageController,
    required this.ageFocus,
  });
}

enum ContentOnPage {
  person(list: [
    CreateMascotType.name,
    CreateMascotType.gender,
    CreateMascotType.age,
  ]);

  const ContentOnPage({required this.list});

  final List<CreateMascotType> list;
}

enum CreateMascotType {
  gender(
    text: 'Agora o genero do seu filho',
    inputText: 'Genero',
    tipTitle: '',
    tipContent: '',
  ),
  age(
    text: 'Agora a idade do seu filho',
    inputText: 'Idade',
    tipTitle: '',
    tipContent: '- 8\n- 10',
  ),
  name(
    text: 'Nome do seu filho',
    inputText: 'Nome completo',
    tipTitle: '',
    tipContent: '',
  );

  const CreateMascotType({
    required this.text,
    required this.inputText,
    required this.tipTitle,
    required this.tipContent,
  });

  final String text;
  final String inputText;
  final String tipTitle;
  final String tipContent;
}
