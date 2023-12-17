// ignore_for_file: library_private_types_in_public_api

import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../../dto/create_user_response_dto.dart';
import '../../model/user_type.dart';

sealed class UserMobileAction {
  static UserMobileAction onAppear(
          String parishId, String senderId, UserType type, String invite) =>
      _OnAppear(
          parishId: parishId, senderId: senderId, type: type, invite: invite);
  static UserMobileAction handlerTapped(BuildContext context) =>
      _HandlerTapped(context: context);
  static UserMobileAction backTapped() => _BackTapped();
  static UserMobileAction service(BuildContext context) =>
      _Service(context: context);
  static UserMobileAction successService(
          CreateUserResponseDTO createUserResponseDTO) =>
      _SuccessService(createUserResponseDTO: createUserResponseDTO);
  static UserMobileAction failureService(
          ErrorInfo errorInfo, BuildContext context) =>
      _FailureService(errorInfo: errorInfo, context: context);
  static UserMobileAction loadingService() => _LoadingService();

  T fold<T>(
    T Function(_OnAppear action) onAppear,
    T Function(_HandlerTapped action) handlerTapped,
    T Function(_BackTapped action) backTapped,
    T Function(_Service action) service,
    T Function(_SuccessService action) success,
    T Function(_FailureService action) failure,
    T Function(_LoadingService action) loading,
  ) =>
      switch (this) {
        _OnAppear action => onAppear(action),
        _HandlerTapped action => handlerTapped(action),
        _BackTapped action => backTapped(action),
        _Service action => service(action),
        _SuccessService action => success(action),
        _FailureService action => failure(action),
        _LoadingService action => loading(action),
      };
}

class _OnAppear extends UserMobileAction {
  final UserType type;
  final String parishId;
  final String senderId;
  final String invite;

  _OnAppear({
    required this.type,
    required this.parishId,
    required this.senderId,
    required this.invite,
  });
}

class _HandlerTapped extends UserMobileAction {
  final BuildContext context;

  _HandlerTapped({required this.context});
}

class _BackTapped extends UserMobileAction {}

class _Service extends UserMobileAction {
  final BuildContext context;

  _Service({required this.context});
}

class _SuccessService extends UserMobileAction {
  final CreateUserResponseDTO createUserResponseDTO;

  _SuccessService({required this.createUserResponseDTO});
}

class _FailureService extends UserMobileAction {
  final ErrorInfo errorInfo;
  final BuildContext context;

  _FailureService({required this.errorInfo, required this.context});
}

class _LoadingService extends UserMobileAction {}
