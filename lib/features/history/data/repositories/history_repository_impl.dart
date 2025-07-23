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
      final historyModels = await localDataSource.getHistoryItems();
      final historyItems =
          historyModels.map((model) => model.toEntity()).toList();
      return Right(historyItems);
    } catch (e) {
      return Left(CacheFailure());
    }
  }
}
