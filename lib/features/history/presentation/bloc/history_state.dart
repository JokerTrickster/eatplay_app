part of 'history_bloc.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState.initial() = _Initial;
  const factory HistoryState.loading() = _Loading;
  const factory HistoryState.loaded(List<HistoryItem> historyItems) = _Loaded;
  const factory HistoryState.error(Failure failure) = _Error;
}
