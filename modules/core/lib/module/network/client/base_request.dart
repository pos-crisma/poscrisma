import 'package:core/core.dart';

import '../model/network_response.dart';

class BaseRequest {
  AsyncResult<Entity, NetworkError> get(String path) async {
    final Network client = Modular.get();

    // final obj = await getInfo("@token");
    // final token = obj[0] as String;

    try {
      final result = await client.get(
        path,
      );

      final response = NetworkResponse.fromJson(result.data);

      if (response.ok) {
        if (response.data != null) {
          return Success(response.data);
        } else if (response.value != null) {
          return Success(response.value);
        } else {
          return Failure(
            NetworkError(
              description: "Error on parser data",
              name: "Parser Data",
              codeError: -1000,
              statusCode: 0,
              isOperational: false,
            ),
          );
        }
      } else {
        return Failure(response.error as NetworkError);
      }
    } on DioException catch (error) {
      return Failure(NetworkError.fromJson(error.response?.data));
    }
  }
}
