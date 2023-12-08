// ignore_for_file: library_private_types_in_public_api

import '../model/user_type.dart';

sealed class UserMobileAction {
  static UserMobileAction onAppear(
          String parishId, String spenderId, UserType type) =>
      _OnAppear(parishId: parishId, spenderId: spenderId, type: type);
  static UserMobileAction handlerTapped() => _HandlerTapped();
  static UserMobileAction backTapped() => _BackTapped();

  T fold<T>(
    T Function(_OnAppear action) onAppear,
    T Function(_HandlerTapped action) handlerTapped,
    T Function(_BackTapped action) backTapped,
  ) =>
      switch (this) {
        _OnAppear action => onAppear(action),
        _HandlerTapped action => handlerTapped(action),
        _BackTapped action => backTapped(action),
      };
}

class _OnAppear extends UserMobileAction {
  final UserType type;
  final String parishId;
  final String spenderId;

  _OnAppear({
    required this.type,
    required this.parishId,
    required this.spenderId,
  });
}

class _HandlerTapped extends UserMobileAction {}

class _BackTapped extends UserMobileAction {}
