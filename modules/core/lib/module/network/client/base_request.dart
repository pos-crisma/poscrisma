import 'package:core/core.dart';

import '../model/network_response.dart';

final internalFailure = ErrorInfo(
  code: 0,
  response: "Tente novamente",
  error: ErrorData(
    type: "Interno",
    statusCode: -1,
    message:
        "Tente novamente mais tarde, quando sua conexão com a internet retornar",
  ),
);

class BaseRequest {
  final Network client;
  final Storage storage;

  BaseRequest({
    required this.client,
    required this.storage,
  });

  AsyncResult<Entity, ErrorInfo> get(String path) async {
    String languageCode = "pt-BR";
    // if (kIsWeb) {
    //   languageCode = "pt-BR";
    // } else {
    //   languageCode = (await LocalePlus().getLanguageCode())!;
    // }

    final accessToken = await storage.get<String>('@token');

    final options = Options(
      headers: {
        'Authorization': (accessToken == "" || accessToken == null)
            ? null
            : "Bearer $accessToken",
        'accept-language': languageCode,
      },
    );

    try {
      final result = await client.get(
        path,
        options: options,
      );

      final response = NetworkResponse.fromJson(result.data);

      if (response.ok) {
        if (response.data != null) {
          return Success(response.data);
        } else if (response.value != null) {
          return Success(response.value);
        } else {
          return Failure(internalFailure);
        }
      } else {
        return Failure(response.error!);
      }
    } on DioException catch (error) {
      if (error.response != null) {
        if (error.response?.data is String) {
          return Failure(
            ErrorInfo(
              code: 0,
              response: error.response?.data,
              error: ErrorData(
                type: 'type',
                statusCode: -1,
                message: error.response?.data,
              ),
            ),
          );
        } else {
          return Failure(ErrorInfo.fromJson(error.response?.data));
        }
      } else {
        return Failure(internalFailure);
      }
    } catch (error) {
      return Failure(
        ErrorInfo(
          code: -1,
          error: ErrorData(
            type: 'Generic',
            statusCode: 0,
            message: 'Generic error',
          ),
          response: error.toString(),
        ),
      );
    }
  }

  AsyncResult<Entity, ErrorInfo> post(
    String path, {
    dynamic data,
  }) async {
    String languageCode = "pt-BR";
    // if (kIsWeb) {
    //   languageCode = "pt-BR";
    // } else {
    //   languageCode = (await LocalePlus().getLanguageCode())!;
    // }

    final accessToken = await storage.get<String>('@token');

    final options = Options(
      headers: {
        'Authorization': (accessToken == "" || accessToken == null)
            ? null
            : "Bearer $accessToken",
        'accept-language': languageCode,
      },
    );

    try {
      final result = await client.post(
        path,
        data: data,
        options: options,
      );

      final response = NetworkResponse.fromJson(result.data);

      if (response.ok) {
        if (response.data != null) {
          return Success(response.data);
        } else if (response.value != null) {
          return Success(response.value);
        } else {
          return Failure(internalFailure);
        }
      } else {
        return Failure(response.error as ErrorInfo);
      }
    } on DioException catch (error) {
      if (error.response != null) {
        if (error.response?.data is String) {
          return Failure(
            ErrorInfo(
              code: 0,
              response: error.response?.data,
              error: ErrorData(
                type: 'type',
                statusCode: -1,
                message: error.response?.data,
              ),
            ),
          );
        } else {
          return Failure(ErrorInfo.fromJson(error.response?.data));
        }
      } else {
        return Failure(internalFailure);
      }
    } catch (error) {
      return Failure(
        ErrorInfo(
          code: -1,
          error: ErrorData(
            type: 'Generic',
            statusCode: 0,
            message: 'Generic error',
          ),
          response: error.toString(),
        ),
      );
    }
  }

  AsyncResult<Entity, ErrorInfo> patch(
    String path, {
    dynamic data,
  }) async {
    String languageCode = "pt-BR";
    // if (kIsWeb) {
    //   languageCode = "pt-BR";
    // } else {
    //   languageCode = (await LocalePlus().getLanguageCode())!;
    // }

    final accessToken = await storage.get<String>('@token');

    final options = Options(
      headers: {
        'Authorization': (accessToken == "" || accessToken == null)
            ? null
            : "Bearer $accessToken",
        'accept-language': languageCode,
      },
    );

    try {
      final result = await client.patch(
        path,
        data: data,
        options: options,
      );

      final response = NetworkResponse.fromJson(result.data);

      if (response.ok) {
        if (response.data != null) {
          return Success(response.data);
        } else if (response.value != null) {
          return Success(response.value);
        } else {
          return Failure(internalFailure);
        }
      } else {
        return Failure(response.error as ErrorInfo);
      }
    } on DioException catch (error) {
      if (error.response != null) {
        if (error.response?.data is String) {
          return Failure(
            ErrorInfo(
              code: 0,
              response: error.response?.data,
              error: ErrorData(
                type: 'type',
                statusCode: -1,
                message: error.response?.data,
              ),
            ),
          );
        } else {
          return Failure(ErrorInfo.fromJson(error.response?.data));
        }
      } else {
        return Failure(internalFailure);
      }
    } catch (error) {
      return Failure(
        ErrorInfo(
          code: -1,
          error: ErrorData(
            type: 'Generic',
            statusCode: 0,
            message: 'Generic error',
          ),
          response: error.toString(),
        ),
      );
    }
  }
}
