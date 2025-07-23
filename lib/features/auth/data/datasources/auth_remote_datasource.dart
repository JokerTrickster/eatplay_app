import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> login(String email, String password);
  Future<UserModel> register(String email, String password, String name);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final http.Client client;
  final String baseUrl = 'https://api.example.com'; // 실제 API URL로 변경

  AuthRemoteDataSourceImpl({required this.client});

  @override
  Future<UserModel> login(String email, String password) async {
    try {
      final response = await client.post(
        Uri.parse('$baseUrl/auth/login'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'email': email,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        return UserModel.fromJson(jsonData['user']);
      } else {
        throw Exception('Login failed');
      }
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }

  @override
  Future<UserModel> register(String email, String password, String name) async {
    try {
      final response = await client.post(
        Uri.parse('$baseUrl/auth/register'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'email': email,
          'password': password,
          'name': name,
        }),
      );

      if (response.statusCode == 201) {
        final jsonData = json.decode(response.body);
        return UserModel.fromJson(jsonData['user']);
      } else {
        throw Exception('Registration failed');
      }
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }
}
