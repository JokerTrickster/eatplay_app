// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryItemModelImpl _$$HistoryItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HistoryItemModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      date: DateTime.parse(json['date'] as String),
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      imageUrl: json['imageUrl'] as String?,
      restaurantName: json['restaurantName'] as String,
      visitDate: json['visitDate'] as String,
      rating: (json['rating'] as num).toDouble(),
      category: json['category'] as String,
      review: json['review'] as String,
    );

Map<String, dynamic> _$$HistoryItemModelImplToJson(
        _$HistoryItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'date': instance.date.toIso8601String(),
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'imageUrl': instance.imageUrl,
      'restaurantName': instance.restaurantName,
      'visitDate': instance.visitDate,
      'rating': instance.rating,
      'category': instance.category,
      'review': instance.review,
    };
