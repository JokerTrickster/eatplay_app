import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/entities/user.dart';
import '../../domain/entities/login_params.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_datasource.dart';
import '../datasources/auth_local_datasource.dart';
import '../models/user_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  AuthRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, User>> login(LoginParams params) async {
    if (await networkInfo.isConnected) {
      try {
        final userModel =
            await remoteDataSource.login(params.email, params.password);
        await localDataSource.cacheUser(userModel);
        await localDataSource.saveRememberMe(params.rememberMe);
        return Right(userModel.toEntity());
      } catch (e) {
        return Left(ServerFailure(e.toString()));
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, User>> register(LoginParams params) async {
    if (await networkInfo.isConnected) {
      try {
        final userModel = await remoteDataSource.register(
            params.email, params.password, 'User' // 기본 이름
            );
        await localDataSource.cacheUser(userModel);
        await localDataSource.saveRememberMe(params.rememberMe);
        return Right(userModel.toEntity());
      } catch (e) {
        return Left(ServerFailure(e.toString()));
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> logout() async {
    try {
      await localDataSource.clearCache();
      return const Right(unit);
    } catch (e) {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, User?>> getCurrentUser() async {
    try {
      final userModel = await localDataSource.getCachedUser();
      return Right(userModel?.toEntity());
    } catch (e) {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> saveUserToCache(User user) async {
    try {
      final userModel = UserModel.fromEntity(user);
      await localDataSource.cacheUser(userModel);
      return const Right(unit);
    } catch (e) {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> clearCache() async {
    try {
      await localDataSource.clearCache();
      return const Right(unit);
    } catch (e) {
      return Left(CacheFailure());
    }
  }
}
