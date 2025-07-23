import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/user.dart';
import '../entities/login_params.dart';

abstract class AuthRepository {
  Future<Either<Failure, User>> login(LoginParams params);
  Future<Either<Failure, User>> register(LoginParams params);
  Future<Either<Failure, Unit>> logout();
  Future<Either<Failure, User?>> getCurrentUser();
  Future<Either<Failure, Unit>> saveUserToCache(User user);
  Future<Either<Failure, Unit>> clearCache();
}
