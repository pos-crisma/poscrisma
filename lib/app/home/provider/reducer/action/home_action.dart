sealed class HomeAction {
  static HomeAction sum({int value = 1, String random = ""}) =>
      _Added(random: random, value: value);
  static HomeAction subtract({int value = 1, String random = ""}) =>
      _Subtracted(random: random, value: value);
  static HomeAction multiplay({int value = 1, String random = ""}) =>
      _Multied(random: random, value: value);
  static HomeAction divided({int value = 1, String random = ""}) =>
      _Divided(random: random, value: value);
  static HomeAction webservice() => _WebService();

  T fold<T>(
    T Function(_Added action) added,
    T Function(_Subtracted action) subtract,
    T Function(_Multied action) multiplay,
    T Function(_Divided action) divide,
    T Function(_WebService action) service,
  ) =>
      switch (this) {
        _Added action => added(action),
        _Subtracted action => subtract(action),
        _Multied action => multiplay(action),
        _Divided action => divide(action),
        _WebService action => service(action),
      };
}

class _Added extends HomeAction {
  final int value;
  final String random;

  _Added({
    this.value = 1,
    this.random = "",
  });
}

class _Subtracted extends HomeAction {
  final int value;
  final String random;

  _Subtracted({
    this.value = 1,
    this.random = "",
  });
}

class _Multied extends HomeAction {
  final int value;
  final String random;

  _Multied({
    this.value = 1,
    this.random = "",
  });
}

class _Divided extends HomeAction {
  final int value;
  final String random;

  _Divided({
    this.value = 1,
    this.random = "",
  });
}

class _WebService extends HomeAction {}
