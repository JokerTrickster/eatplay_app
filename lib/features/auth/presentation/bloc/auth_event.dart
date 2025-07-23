part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({
    required String email,
    required String password,
    required bool rememberMe,
  }) = _Login;

  const factory AuthEvent.checkAuthStatus() = _CheckAuthStatus;
  const factory AuthEvent.logout() = _Logout;
}
