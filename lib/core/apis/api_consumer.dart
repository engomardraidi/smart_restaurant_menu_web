import 'dart:convert';

import 'package:http/http.dart';

abstract class ApiConsumer {
  Future<Response> get(
    String path, {
    Map<String, String>? headers,
  });

  Future<Response> post(
    String path, {
    Object? body,
    Map<String, String>? headers,
    Encoding? encoding,
  });

  Future<Response> patch(
    String path, {
    Object? body,
    Map<String, String>? headers,
    Encoding? encoding,
  });

  Future<Response> put(
    String path, {
    Object? body,
    Map<String, String>? headers,
    Encoding? encoding,
  });

  Future<Response> delete(
    String path, {
    Object? body,
    Map<String, String>? headers,
    Encoding? encoding,
  });
}
