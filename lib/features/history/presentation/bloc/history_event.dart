part of 'history_bloc.dart';

@freezed
class HistoryEvent with _$HistoryEvent {
  const factory HistoryEvent.loadHistory() = _LoadHistory;
  const factory HistoryEvent.addHistory(HistoryItem historyItem) = _AddHistory;
  const factory HistoryEvent.updateHistory(HistoryItem historyItem) =
      _UpdateHistory;
  const factory HistoryEvent.deleteHistory(String historyId) = _DeleteHistory;
}
