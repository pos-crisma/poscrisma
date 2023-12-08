import 'package:flutter/material.dart';

import '../model/user_type.dart';

interface class UserMobileState {
  UserMobileState({
    this.pageViewer = PageViewer.nickname,
    this.isFocus = false,
    required this.onFocus,
    required this.textEditingController,
  });

  PageViewer pageViewer;

  TextEditingController textEditingController;
  FocusNode onFocus;
  bool isFocus;

  String? name;
  String? nickname;
  String? email;
  String? phone;
  String? medicalRecords;

  UserType? type;
  String? parishId;
  String? spenderId;
}

enum PageViewer {
  nickname(
    text: 'Vamos começar pelo o seu nome de usuario',
    inputText: 'Nome de usuario',
    tipTitle: 'Aqui voce pode criar seu nome de usuario unico',
    tipContent: 'usuario.123\nusuario_123',
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
    tipTitle: '',
    tipContent: '',
  ),
  email(
    text: 'Agora seu email',
    inputText: 'Email',
    tipTitle: 'Email no formato:',
    tipContent: 'exemplo@google.com\nexemplo@hotmail.com',
  );

  const PageViewer({
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
