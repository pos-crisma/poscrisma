sealed class HomeAction {}

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
