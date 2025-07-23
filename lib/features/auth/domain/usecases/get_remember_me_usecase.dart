import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../repositories/auth_repository.dart';

class GetRememberMeUseCase {
  final AuthRepository repository;

  GetRememberMeUseCase(this.repository);

  Future<Either<Failure, bool>> call() async {
    return await repository.getRememberMe();
  }
}
