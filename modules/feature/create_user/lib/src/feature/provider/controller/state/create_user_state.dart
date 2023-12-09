// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../model/user_type.dart';

interface class CreateUserState {
  ContentOnPage contentOnPage;

  TextEditingController nameController;
  FocusNode nameFocus;
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
  String? spenderId;

  CreateUserState({
    this.contentOnPage = ContentOnPage.person,
    this.isLoading = false,
    required this.nameController,
    required this.nameFocus,
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
  name(
    text: 'Agora seu nome completo',
    inputText: 'Nome completo',
    tipTitle: '',
    tipContent: '',
  ),
  phone(
    text: 'Agora seu telefone',
    inputText: 'Telefone Celular',
    tipTitle: '',
    tipContent: '',
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
    inputText: 'Preencha seus dados medicos',
    tipTitle: '',
    tipContent: '',
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
