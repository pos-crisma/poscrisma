// ignore_for_file: library_private_types_in_public_api

import 'package:core/core.dart';

import '../../model/parish_model.dart';

sealed class ParishAction {
  static ParishAction onAppear(String parishId) =>
      _OnAppear(parishId: parishId);
  static ParishAction buttonTapped() => _ButtonTapped();
  static ParishAction service(String parishId) => _Service(parishId: parishId);
  static ParishAction loadingService() => _LoadingService();
  static ParishAction successService(Parish parish) =>
      _SuccessService(parish: parish);
  static ParishAction failureService(ErrorInfo error) =>
      _FailureService(error: error);

  T fold<T>(
    T Function(_OnAppear action) onAppear,
    T Function(_ButtonTapped action) buttonTapped,
    T Function(_Service action) service,
    T Function(_LoadingService action) loadingService,
    T Function(_SuccessService action) successService,
    T Function(_FailureService action) failureService,
  ) =>
      switch (this) {
        _OnAppear action => onAppear(action),
        _ButtonTapped action => buttonTapped(action),
        _Service action => service(action),
        _LoadingService action => loadingService(action),
        _SuccessService action => successService(action),
        _FailureService action => failureService(action),
      };
}

class _OnAppear extends ParishAction {
  final String parishId;

  _OnAppear({required this.parishId});
}

class _ButtonTapped extends ParishAction {}

class _Service extends ParishAction {
  final String parishId;

  _Service({required this.parishId});
}

class _LoadingService extends ParishAction {}

class _SuccessService extends ParishAction {
  final Parish parish;

  _SuccessService({required this.parish});
}

class _FailureService extends ParishAction {
  final ErrorInfo error;

  _FailureService({required this.error});
}
