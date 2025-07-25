import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/history_item.dart';

part 'history_item_model.freezed.dart';
part 'history_item_model.g.dart';

@freezed
class HistoryItemModel with _$HistoryItemModel {
  const factory HistoryItemModel({
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
  }) = _HistoryItemModel;

  factory HistoryItemModel.fromJson(Map<String, dynamic> json) =>
      _$HistoryItemModelFromJson(json);

  factory HistoryItemModel.fromEntity(HistoryItem entity) => HistoryItemModel(
        id: entity.id,
        title: entity.title,
        description: entity.description,
        date: entity.date,
        latitude: entity.latitude,
        longitude: entity.longitude,
        imageUrl: entity.imageUrl,
        restaurantName: entity.restaurantName,
        visitDate: entity.visitDate,
        rating: entity.rating,
        category: entity.category,
        review: entity.review,
      );
}

extension HistoryItemModelExtension on HistoryItemModel {
  HistoryItem toEntity() => HistoryItem(
        id: id,
        title: title,
        description: description,
        date: date,
        latitude: latitude,
        longitude: longitude,
        imageUrl: imageUrl,
        restaurantName: restaurantName,
        visitDate: visitDate,
        rating: rating,
        category: category,
        review: review,
      );
}
