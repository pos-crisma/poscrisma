// ignore_for_file: library_private_types_in_public_api

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:poscrisma/index.dart';
import 'package:http/http.dart' as http;

import 'package:logger/logger.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final logger = Logger(
  printer: PrettyPrinter(), // Para um logger formatado
  // printer: SimplePrinter(), // Para um logger simples
  level: Level.debug, // Nível de logging desejado
);

class HttpProvider {
  final String baseUrl = 'localhost:3300';
  final String fallbackUrl = '192.168.1.2:3300';
  late final HttpInterceptors interceptors;

  HttpProvider() : interceptors = HttpInterceptors();

  String get bearerToken =>
      AppDependencies.getIt
          .get<SupabaseClient>()
          .auth
          .currentSession
          ?.accessToken ??
      '';

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
  }) async {
    return _makeRequest('POST', path,
        body: body, queryParameters: queryParameters);
  }

  Future<dynamic> put({
    required String path,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
  }) async {
    return _makeRequest('PUT', path,
        body: body, queryParameters: queryParameters);
  }

  Future<dynamic> delete({
    required String path,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
  }) async {
    return _makeRequest('DELETE', path,
        body: body, queryParameters: queryParameters);
  }

  Future<dynamic> _makeRequest(String method, String path,
      {Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameters}) async {
    final uri = Uri.http(baseUrl, path, queryParameters);
    final fallbackUri = Uri.http(fallbackUrl, path, queryParameters);

    try {
      final modifiedRequest = http.Request(method, uri);

      // Adiciona os headers necessários
      final headers = {
        'Authorization': 'Bearer $bearerToken',
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      };
      modifiedRequest.headers.addAll(headers);

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
    } on SocketException catch (_) {
      return await _sendHttpRequest(method, fallbackUri, body);
    } on TimeoutException catch (_) {
      return await _sendHttpRequest(method, fallbackUri, body);
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> _sendHttpRequest(
      String method, Uri uri, Map<String, dynamic>? body) async {
    final headers = {
      'Authorization': 'Bearer $bearerToken',
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };

    late http.Response response;

    switch (method) {
      case 'GET':
        response = await http.get(uri, headers: headers);
        break;
      case 'POST':
        response =
            await http.post(uri, headers: headers, body: jsonEncode(body));
        break;
      case 'PUT':
        response =
            await http.put(uri, headers: headers, body: jsonEncode(body));
        break;
      case 'DELETE':
        response = await http.delete(uri, headers: headers);
        break;
      default:
        throw Exception('HTTP method not supported');
    }

    await interceptors.interceptResponse(response);

    return _handleResponse(response);
  }

  dynamic _handleResponse(http.Response response) {
    final jsonResponse = jsonDecode(utf8.decode(response.bodyBytes));

    if (response.statusCode == 200 ||
        response.statusCode == 201 ||
        response.statusCode == 204) {
      // return HttpResponseModel.fromJson(jsonResponse).payload;
      return jsonResponse;
    } else if (response.statusCode == 403) {
      throw Exception('Forbidden: ${response.statusCode}');
    } else if (response.statusCode == 400 ||
        response.statusCode == 401 ||
        response.statusCode == 404 ||
        response.statusCode == 500) {
      throw ServiceException.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}

class HttpInterceptors {
  final _recentRequests = <String, DateTime>{};

  HttpInterceptors();

  FutureOr<http.Request> interceptRequest(http.Request request) async {
    final key = _generateRequestKey(request);
    final now = DateTime.now();

    logger.d('Intercepting request: ${request.url}');

    if (_recentRequests.containsKey(key)) {
      final lastRequestTime = _recentRequests[key]!;
      if (now.difference(lastRequestTime).inSeconds < 3) {
        logger.d('Request throttled, skipping: ${request.url}');
        return request;
      }
    }

    _recentRequests[key] = now;
    return request;
  }

  FutureOr<void> interceptResponse(http.Response response) {
    _recentRequests.removeWhere(
        (key, timestamp) => DateTime.now().difference(timestamp).inSeconds > 3);

    logger.d(
        'Intercepting response: ${response.statusCode} ${response.request?.url}');

    // Log the response body if needed
    if (kDebugMode) {
      print('Response body: ${response.body}');

      CustomPrettyPrinter.prettyPrintJson(response.body);
    }
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

class HttpResponseModel {
  final dynamic payload;
  final String version;

  HttpResponseModel({
    required this.payload,
    required this.version,
  });

  factory HttpResponseModel.fromJson(
    Map<String, dynamic> json,
  ) {
    return HttpResponseModel(
      payload: json['payload'],
      version: json['version'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'payload': payload,
      'version': version,
    };
  }
}

class ServiceException implements Exception {
  final String brief;
  final String cause;
  final int code;
  final String detail;
  final String name;

  ServiceException({
    required this.brief,
    required this.cause,
    required this.code,
    required this.detail,
    required this.name,
  });

  factory ServiceException.fromJson(Map<String, dynamic> json) {
    return ServiceException(
      brief: json['brief'] as String,
      cause: json['cause'] as String,
      code: json['code'] as int,
      detail: json['detail'] as String,
      name: json['name'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'brief': brief,
      'cause': cause,
      'code': code,
      'detail': detail,
      'name': name,
    };
  }
}
