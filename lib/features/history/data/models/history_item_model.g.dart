// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryItemModelImpl _$$HistoryItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HistoryItemModelImpl(
      id: json['id'] as String,
      restaurantName: json['restaurantName'] as String,
      visitDate: json['visitDate'] as String,
      rating: (json['rating'] as num).toDouble(),
      review: json['review'] as String,
      imageUrl: json['imageUrl'] as String,
      category: json['category'] as String,
    );

Map<String, dynamic> _$$HistoryItemModelImplToJson(
        _$HistoryItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'restaurantName': instance.restaurantName,
      'visitDate': instance.visitDate,
      'rating': instance.rating,
      'review': instance.review,
      'imageUrl': instance.imageUrl,
      'category': instance.category,
    };
