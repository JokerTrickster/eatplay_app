import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/user_model.dart';

abstract class AuthLocalDataSource {
  Future<void> cacheUser(UserModel user);
  Future<UserModel?> getCachedUser();
  Future<void> clearCache();
  Future<void> saveRememberMe(bool rememberMe);
  Future<bool> getRememberMe();
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final SharedPreferences sharedPreferences;

  AuthLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<void> cacheUser(UserModel user) async {
    await sharedPreferences.setString(
        'CACHED_USER', json.encode(user.toJson()));
  }

  @override
  Future<UserModel?> getCachedUser() async {
    final jsonString = sharedPreferences.getString('CACHED_USER');
    if (jsonString != null) {
      return UserModel.fromJson(json.decode(jsonString));
    }
    return null;
  }

  @override
  Future<void> clearCache() async {
    await sharedPreferences.remove('CACHED_USER');
    await sharedPreferences.remove('REMEMBER_ME');
  }

  @override
  Future<void> saveRememberMe(bool rememberMe) async {
    await sharedPreferences.setBool('REMEMBER_ME', rememberMe);
  }

  @override
  Future<bool> getRememberMe() async {
    return sharedPreferences.getBool('REMEMBER_ME') ?? false;
  }
}
