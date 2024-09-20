// ignore_for_file: library_private_types_in_public_api

import 'dart:async';
import 'dart:convert';

import 'package:get_it/get_it.dart';
import 'package:poscrisma/index.dart';
import 'package:http/http.dart' as http;

import 'package:logger/logger.dart';

final logger = Logger(
  printer: PrettyPrinter(),
  // printer: SimplePrinter(),
  level: Level.debug,
);

class HttpProvider {
  final memoryProvider = GetIt.instance.get<MemoryProvider>();

  final String baseUrl = 'imaculada-backend-prod.up.railway.app';
  late final _HttpInterceptors interceptors;

  HttpProvider() : interceptors = _HttpInterceptors();

  String get bearerToken => memoryProvider.getMemory().accessToken ?? '';

  Future<dynamic> get({
    required String path,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
  }) async {
    return _makeRequest(
      'GET',
      path,
      body: body,
      queryParameters: queryParameters,
    );
  }

  Future<dynamic> post({
    required String path,
    required Map<String, dynamic> body,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? optionParameters,
  }) async {
    return _makeRequest(
      'POST',
      path,
      body: body,
      optionParameters: optionParameters,
      queryParameters: queryParameters,
    );
  }

  Future<dynamic> put({
    required String path,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
  }) async {
    return _makeRequest(
      'PUT',
      path,
      body: body,
      queryParameters: queryParameters,
    );
  }

  Future<dynamic> delete({
    required String path,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
  }) async {
    return _makeRequest(
      'DELETE',
      path,
      body: body,
      queryParameters: queryParameters,
    );
  }

  Future<dynamic> _makeRequest(
    String method,
    String path, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? optionParameters,
  }) async {
    final uri = Uri.https(
      baseUrl,
      path,
      queryParameters,
    );

    try {
      final modifiedRequest = http.Request(method, uri);

      // Adiciona os headers necessários
      final headers = {
        'Authorization': 'Bearer $bearerToken',
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'isDevelopment': 'true',
      };
      modifiedRequest.headers.addAll(headers);

      if (optionParameters != null) {
        modifiedRequest.headers.addAll(optionParameters);
      }

      if (body != null) {
        modifiedRequest.body = jsonEncode(body);
      }
      final interceptedRequest =
          await interceptors.interceptRequest(modifiedRequest);
      final streamedResponse = await http.Client()
          .send(interceptedRequest)
          .timeout(const Duration(seconds: 10));

      final response = await http.Response.fromStream(streamedResponse);

      await interceptors.interceptResponse(response);

      return _handleResponse(response);
    } catch (e) {
      rethrow;
    }
  }

  dynamic _handleResponse(
    http.Response response,
  ) {
    final jsonResponse = jsonDecode(utf8.decode(response.bodyBytes));

    if (response.statusCode == 200 ||
        response.statusCode == 201 ||
        response.statusCode == 204) {
      // return HttpResponseModel.fromJson(jsonResponse).payload;
      return jsonResponse;
    } else if (response.statusCode == 400 ||
        response.statusCode == 404 ||
        response.statusCode == 403) {
      throw ServiceException.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}

class _HttpInterceptors {
  final _recentRequests = <String, DateTime>{};

  _HttpInterceptors();

  FutureOr<http.Request> interceptRequest(http.Request request) async {
    final key = _generateRequestKey(request);
    final now = DateTime.now();

    // logger.d('Intercepting request: ${request.url}');

    if (_recentRequests.containsKey(key)) {
      final lastRequestTime = _recentRequests[key]!;
      if (now.difference(lastRequestTime).inSeconds < 3) {
        // logger.d('Request throttled, skipping: ${request.url}');
        return request;
      }
    }

    _recentRequests[key] = now;
    return request;
  }

  FutureOr<void> interceptResponse(http.Response response) {
    _recentRequests.removeWhere(
        (key, timestamp) => DateTime.now().difference(timestamp).inSeconds > 3);

    // logger.d(
    //     'Intercepting response: ${response.statusCode} ${response.request?.url}');

    // Log the response body if needed
    // if (kDebugMode) {
    //   CustomPrettyPrinter.prettyPrintJson(response.body);
    // }
  }

  FutureOr<http.Response> interceptError(dynamic error) {
    logger.e('Error intercepted: $error');
    throw error;
  }

  String _generateRequestKey(http.Request request) {
    final uri = request.url.toString();
    final data = request.body.isNotEmpty ? request.body : '';
    final params = request.url.query.isNotEmpty ? request.url.query : '';
    final key = '$uri$data$params';
    return key;
  }
}

class ServiceException implements Exception {
  final int code;
  final String response;
  final ErrorData error;

  ServiceException({
    required this.code,
    required this.response,
    required this.error,
  });

  ServiceException.fromJson(Map<String, dynamic> json)
      : code = json['code'],
        response = json['response'],
        error = ErrorData.fromJson(json["error"]);
}

class ErrorData {
  ErrorData({
    required this.type,
    required this.statusCode,
    required this.message,
  });

  final String type;
  final int statusCode;
  final String message;

  ErrorData copyWith({
    String? type,
    int? statusCode,
    String? message,
  }) =>
      ErrorData(
        type: type ?? this.type,
        statusCode: statusCode ?? this.statusCode,
        message: message ?? this.message,
      );

  factory ErrorData.fromRawJson(String str) =>
      ErrorData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ErrorData.fromJson(Map<String, dynamic> json) => ErrorData(
        type: json["type"],
        statusCode: json["statusCode"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "statusCode": statusCode,
        "message": message,
      };
}
