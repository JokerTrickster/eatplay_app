import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_item.freezed.dart';

@freezed
class HistoryItem with _$HistoryItem {
  const factory HistoryItem({
    required String id,
    required String title,
    required String description,
    required DateTime date,
    double? latitude,
    double? longitude,
    String? imageUrl,
    // 추가 필드들
    required String restaurantName,
    required String visitDate,
    required double rating,
    required String category,
    required String review,
  }) = _HistoryItem;
}
