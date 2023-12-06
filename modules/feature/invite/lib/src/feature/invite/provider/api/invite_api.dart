import 'package:core/core.dart';

mixin InviteApi {
  static AsyncResult<void, ErrorInfo> invite(String invite) async {
    final Network client = Modular.get();
    // final obj = await getInfo("@token");
    // final token = obj[0] as String;

    try {
      final result = await client.get(
        '/invite/${invite}',
      );

      print(result.data);

      // final response = ListBookletByAcquirerResponse.fromJson(
      //   result.data as Map<String, dynamic>,
      // );

      return const Success(());
    } on DioException catch (error) {
      return Failure(ErrorInfo.fromJson(error.response?.data));
    }
  }
}
