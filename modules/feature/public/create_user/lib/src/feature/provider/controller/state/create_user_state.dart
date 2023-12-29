// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:create_user/src/feature/provider/dto/create_user_request_dto.dart';
import 'package:flutter/material.dart';

import '../../model/user_type.dart';

interface class CreateUserState {
  ContentOnPage contentOnPage;

  UserGender genderInput;

  TextEditingController nameController;
  FocusNode nameFocus;
  TextEditingController birthdayController;
  FocusNode birthdayFocus;
  TextEditingController nicknameController;
  FocusNode nicknameFocus;
  TextEditingController emailController;
  FocusNode emailFocus;
  TextEditingController phoneController;
  FocusNode phoneFocus;
  TextEditingController medicalController;
  FocusNode medicalFocus;
  TextEditingController passwordController;
  FocusNode passwordFocus;

  bool isLoading;

  UserType? type;
  String? parishId;
  String? senderId;
  String? invite;

  CreateUserState({
    this.contentOnPage = ContentOnPage.person,
    this.isLoading = false,
    required this.nameController,
    required this.nameFocus,
    required this.genderInput,
    required this.birthdayController,
    required this.birthdayFocus,
    required this.nicknameController,
    required this.nicknameFocus,
    required this.emailController,
    required this.emailFocus,
    required this.phoneController,
    required this.phoneFocus,
    required this.medicalController,
    required this.medicalFocus,
    required this.passwordController,
    required this.passwordFocus,
  });
}

enum ContentOnPage {
  medical(list: [
    CreateUserType.medicalRecords,
  ]),
  person(list: [
    CreateUserType.nickname,
    CreateUserType.name,
    CreateUserType.email,
    CreateUserType.phone,
    CreateUserType.gender,
    CreateUserType.birthday,
  ]),
  password(list: [
    CreateUserType.password,
  ]);

  const ContentOnPage({required this.list});

  final List<CreateUserType> list;
}

enum CreateUserType {
  nickname(
    text: 'Vamos começar pelo o seu nome de usuario',
    inputText: 'Nome de usuario',
    tipTitle:
        'Aqui voce pode criar seu nome de usuario unico\nPode seguir no exemplo abaixo:',
    tipContent: '- usuario.123\n- usuario_123',
  ),
  gender(
    text: 'Agora o seu genero',
    inputText: 'Genero',
    tipTitle: '',
    tipContent: '',
  ),
  birthday(
    text: 'Agora o seu data de nascimento',
    inputText: 'Data de nascimento',
    tipTitle: '',
    tipContent: '- 30/10/1995\n- 05/08/1998',
  ),
  name(
    text: 'Agora seu nome completo',
    inputText: 'Nome completo',
    tipTitle: '',
    tipContent: '',
  ),
  phone(
    text: 'Agora seu telefone',
    inputText: 'Telefone Celular',
    tipTitle: 'Exemplo de preenchimento do telefone:',
    tipContent: '- 61911112222',
  ),
  medicalRecords(
    text: 'Preencha seus dados medicos',
    inputText: 'Preencha seus dados medicos',
    tipTitle:
        'Preenche seus dados medicos.\nPode ser preenchido nesse exemplo:',
    tipContent:
        '- Problema X\n- Problema Y\n- Problema Z\n\n- Remedio A\n- Remedio B\n- Remedio C',
  ),
  password(
    text: 'Preencha sua senha',
    inputText: 'Preencha sua senha',
    tipTitle: 'Recomendação de senha:',
    tipContent:
        '- Pelo menos uma letra maiuscula\n- Minimo 8 caracteres\n- Recomendação de caracteres especiais',
  ),
  email(
    text: 'Agora seu email',
    inputText: 'Email',
    tipTitle: 'Email no formato:',
    tipContent: '- exemplo@google.com\n- exemplo@hotmail.com',
  );

  const CreateUserType({
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
