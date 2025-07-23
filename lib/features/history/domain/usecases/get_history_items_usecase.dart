import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/history_item.dart';
import '../repositories/history_repository.dart';

class GetHistoryItemsUseCase {
  final HistoryRepository repository;

  GetHistoryItemsUseCase(this.repository);

  Future<Either<Failure, List<HistoryItem>>> call() async {
    return await repository.getHistoryItems();
  }
}
