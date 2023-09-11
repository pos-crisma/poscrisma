import '../../../../core/core.dart';

sealed class HomeAction with Action {
  T fold<T>(
    T Function(Added action) added,
    T Function(Subtracted action) subtract,
    T Function(Multied action) multiplay,
    T Function(Divided action) divide,
    T Function(WebService action) service,
  ) =>
      switch (this) {
        Added action => added(action),
        Subtracted action => subtract(action),
        Multied action => multiplay(action),
        Divided action => divide(action),
        WebService action => service(action),
      };
}

class Added extends HomeAction {
  final int value;
  final String random;

  Added({
    this.value = 1,
    this.random = "",
  });
}

class Subtracted extends HomeAction {
  final int value;
  final String random;

  Subtracted({
    this.value = 1,
    this.random = "",
  });
}

class Multied extends HomeAction {
  final int value;
  final String random;

  Multied({
    this.value = 1,
    this.random = "",
  });
}

class Divided extends HomeAction {
  final int value;
  final String random;

  Divided({
    this.value = 1,
    this.random = "",
  });
}

class WebService extends HomeAction {}
