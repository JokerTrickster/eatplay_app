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
        addHistory: (e) async => await _onAddHistory(e, emit),
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

  Future<void> _onAddHistory(
      _AddHistory event, Emitter<HistoryState> emit) async {
    // 현재 상태에서 새로운 히스토리 추가
    final currentState = state;
    currentState.maybeWhen(
      loaded: (historyItems) {
        final updatedItems = List<HistoryItem>.from(historyItems)
          ..add(event.historyItem);
        emit(HistoryState.loaded(updatedItems));
      },
      orElse: () {
        // 로딩 중이거나 에러 상태면 새로 로드
        add(const HistoryEvent.loadHistory());
      },
    );
  }
}
