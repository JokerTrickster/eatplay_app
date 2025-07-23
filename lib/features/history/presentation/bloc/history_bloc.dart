import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/history_item.dart';
import '../../domain/usecases/get_history_items_usecase.dart';
import '../../../../core/error/failures.dart';

part 'history_event.dart';
part 'history_state.dart';
part 'history_bloc.freezed.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  final GetHistoryItemsUseCase getHistoryItemsUseCase;

  HistoryBloc({required this.getHistoryItemsUseCase})
      : super(const HistoryState.initial()) {
    on<HistoryEvent>((event, emit) async {
      await event.map(
        loadHistory: (e) async => await _onLoadHistory(e, emit),
      );
    });
  }

  Future<void> _onLoadHistory(
      _LoadHistory event, Emitter<HistoryState> emit) async {
    emit(const HistoryState.loading());

    final result = await getHistoryItemsUseCase();

    result.fold(
      (failure) => emit(HistoryState.error(failure)),
      (historyItems) => emit(HistoryState.loaded(historyItems)),
    );
  }
}
