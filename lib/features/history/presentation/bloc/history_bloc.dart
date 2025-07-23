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
        updateHistory: (e) async => await _onUpdateHistory(e, emit),
        deleteHistory: (e) async => await _onDeleteHistory(e, emit),
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
    final currentState = state;
    currentState.maybeWhen(
      loaded: (historyItems) {
        final updatedItems = List<HistoryItem>.from(historyItems)
          ..add(event.historyItem);
        emit(HistoryState.loaded(updatedItems));
      },
      orElse: () {
        add(const HistoryEvent.loadHistory());
      },
    );
  }

  Future<void> _onUpdateHistory(
      _UpdateHistory event, Emitter<HistoryState> emit) async {
    final currentState = state;
    currentState.maybeWhen(
      loaded: (historyItems) {
        final updatedItems = historyItems.map((item) {
          return item.id == event.historyItem.id ? event.historyItem : item;
        }).toList();
        emit(HistoryState.loaded(updatedItems));
      },
      orElse: () {
        add(const HistoryEvent.loadHistory());
      },
    );
  }

  Future<void> _onDeleteHistory(
      _DeleteHistory event, Emitter<HistoryState> emit) async {
    final currentState = state;
    currentState.maybeWhen(
      loaded: (historyItems) {
        final updatedItems =
            historyItems.where((item) => item.id != event.historyId).toList();
        emit(HistoryState.loaded(updatedItems));
      },
      orElse: () {
        add(const HistoryEvent.loadHistory());
      },
    );
  }
}
