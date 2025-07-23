import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/history_item.dart';

part 'history_item_model.freezed.dart';
part 'history_item_model.g.dart';

@freezed
class HistoryItemModel with _$HistoryItemModel {
  const factory HistoryItemModel({
    required String id,
    required String restaurantName,
    required String visitDate,
    required double rating,
    required String review,
    required String imageUrl,
    required String category,
  }) = _HistoryItemModel;

  factory HistoryItemModel.fromJson(Map<String, dynamic> json) =>
      _$HistoryItemModelFromJson(json);

  factory HistoryItemModel.fromEntity(HistoryItem entity) => HistoryItemModel(
        id: entity.id,
        restaurantName: entity.restaurantName,
        visitDate: entity.visitDate,
        rating: entity.rating,
        review: entity.review,
        imageUrl: entity.imageUrl,
        category: entity.category,
      );
}

extension HistoryItemModelExtension on HistoryItemModel {
  HistoryItem toEntity() => HistoryItem(
        id: id,
        restaurantName: restaurantName,
        visitDate: visitDate,
        rating: rating,
        review: review,
        imageUrl: imageUrl,
        category: category,
      );
}
