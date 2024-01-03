class LocalStorage {
  LocalStorage({
    String acessToken = "",
    bool isLogged = false,
  })  : _acessToken = acessToken,
        _isLogged = isLogged;

  LocalStorage copyWith({
    String? accessToken,
    bool? isLogged,
  }) =>
      LocalStorage(
        acessToken: accessToken ?? _acessToken,
        isLogged: isLogged ?? _isLogged,
      );

  String _acessToken;
  bool _isLogged;

  String get acessToken => _acessToken;
  bool get isLogged => _isLogged;

  set updateAccessToken(String accessToken) => _acessToken = accessToken;
  set updateIsLogged(bool isLogged) => _isLogged = isLogged;

  void addAccess({String accessToken = ""}) {
    updateAccessToken = accessToken;
    updateIsLogged = true;
  }

  void removeAccess() {
    updateAccessToken = "";
    updateIsLogged = false;
  }
}
