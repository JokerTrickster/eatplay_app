import 'dart:convert';
import '../../../../core/network/api_client.dart';
import '../models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> login(String email, String password);
  Future<UserModel> register(String email, String password, String name);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final ApiClient apiClient;

  AuthRemoteDataSourceImpl({required this.apiClient});

  @override
  Future<UserModel> login(String email, String password) async {
    // 임시 로그인 로직
    if (email == 'test@test.com' && password == '456123') {
      // 성공 시 임시 사용자 데이터 반환
      return UserModel(
        id: '1',
        email: email,
        name: '테스트 사용자',
        profileImage: null,
      );
    } else {
      throw Exception('Invalid credentials');
    }
  }

  @override
  Future<UserModel> register(String email, String password, String name) async {
    try {
      final response = await apiClient.post('/auth/register', body: {
        'email': email,
        'password': password,
        'name': name,
      });

      if (response.statusCode == 201) {
        final jsonData = json.decode(response.body);
        return UserModel.fromJson(jsonData['user']);
      } else {
        throw Exception('Registration failed: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }
}
