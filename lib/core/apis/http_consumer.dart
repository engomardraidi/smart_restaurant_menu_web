import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/retry.dart';

import 'api_consumer.dart';

class HttpConsumer implements ApiConsumer {
  late RetryClient retryClient;

  HttpConsumer({required http.Client client}) {
    retryClient = RetryClient(client);
  }

  @override
  Future<http.Response> delete(String path,
      {Object? body, Map<String, String>? headers, Encoding? encoding}) async {
    final Uri uri = Uri.parse(path);
    final http.Response response = await retryClient.delete(uri,
        body: body, headers: headers, encoding: encoding);

    return response;
  }

  @override
  Future<http.Response> get(
    String path, {
    Map<String, String>? headers,
  }) async {
    final Uri uri = Uri.parse(path);
    final http.Response response = await retryClient.get(uri, headers: headers);

    return response;
  }

  @override
  Future<http.Response> patch(String path,
      {Object? body, Map<String, String>? headers, Encoding? encoding}) async {
    final Uri uri = Uri.parse(path);
    final http.Response response = await retryClient.patch(uri,
        body: body, headers: headers, encoding: encoding);

    return response;
  }

  @override
  Future<http.Response> post(String path,
      {Object? body, Map<String, String>? headers, Encoding? encoding}) async {
    final Uri uri = Uri.parse(path);
    final http.Response response = await retryClient.post(uri,
        body: body, headers: headers, encoding: encoding);

    return response;
  }

  @override
  Future<http.Response> put(String path,
      {Object? body, Map<String, String>? headers, Encoding? encoding}) async {
    final Uri uri = Uri.parse(path);
    final http.Response response = await retryClient.put(uri,
        body: body, headers: headers, encoding: encoding);

    return response;
  }
}
