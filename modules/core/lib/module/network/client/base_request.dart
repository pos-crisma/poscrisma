import 'package:core/core.dart';

import '../model/network_response.dart';

class BaseRequest {
  AsyncResult<Entity, ErrorInfo> get(String path) async {
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
            ErrorInfo(
              code: 0,
              error: ErrorData(
                type: '',
                statusCode: 0,
                message: '',
              ),
              response: '',
            ),
          );
        }
      } else {
        return Failure(response.error!);
      }
    } on DioException catch (error) {
      return Failure(ErrorInfo.fromJson(error.response?.data));
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
    final Network client = Modular.get();

    // final obj = await getInfo("@token");
    // final token = obj[0] as String;

    try {
      final result = await client.post(path, data: data);

      final response = NetworkResponse.fromJson(result.data);

      if (response.ok) {
        if (response.data != null) {
          return Success(response.data);
        } else if (response.value != null) {
          return Success(response.value);
        } else {
          return Failure(
            ErrorInfo(
              code: 0,
              error: ErrorData(
                type: '',
                statusCode: 0,
                message: '',
              ),
              response: '',
            ),
          );
        }
      } else {
        return Failure(response.error as ErrorInfo);
      }
    } on DioException catch (error) {
      return Failure(ErrorInfo.fromJson(error.response?.data));
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
