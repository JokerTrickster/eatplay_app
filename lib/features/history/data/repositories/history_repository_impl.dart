import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/history_item.dart';
import '../../domain/repositories/history_repository.dart';
import '../datasources/history_local_datasource.dart';
import '../models/history_item_model.dart';

class HistoryRepositoryImpl implements HistoryRepository {
  final HistoryLocalDataSource localDataSource;

  HistoryRepositoryImpl({required this.localDataSource});

  @override
  Future<Either<Failure, List<HistoryItem>>> getHistoryItems() async {
    try {
      final items = await localDataSource.getHistoryItems();
      return Right(items.map((model) => model.toEntity()).toList());
    } on Exception catch (e) {
      return Left(CacheFailure('캐시에서 데이터를 불러오는데 실패했습니다: $e'));
    }
  }
}
