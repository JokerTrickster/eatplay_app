import 'dart:io';
import 'dart:convert'; // Added missing import for json
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../config/environment.dart';

class ApiClient {
  final http.Client _client;

  ApiClient({http.Client? client}) : _client = client ?? http.Client();

  String get _baseUrl => EnvironmentConfig.apiUrl;

  Future<http.Response> get(String endpoint) async {
    final url = Uri.parse('$_baseUrl$endpoint');
    return await _client.get(url);
  }

  Future<http.Response> post(String endpoint,
      {Map<String, dynamic>? body}) async {
    final url = Uri.parse('$_baseUrl$endpoint');
    return await _client.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: body != null ? json.encode(body) : null,
    );
  }

  Future<http.Response> put(String endpoint,
      {Map<String, dynamic>? body}) async {
    final url = Uri.parse('$_baseUrl$endpoint');
    return await _client.put(
      url,
      headers: {'Content-Type': 'application/json'},
      body: body != null ? json.encode(body) : null,
    );
  }

  Future<http.Response> delete(String endpoint) async {
    final url = Uri.parse('$_baseUrl$endpoint');
    return await _client.delete(url);
  }
}
