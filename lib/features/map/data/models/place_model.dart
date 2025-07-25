import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/place.dart';

part 'place_model.freezed.dart';
part 'place_model.g.dart';

@freezed
class PlaceModel with _$PlaceModel {
  const factory PlaceModel({
    required String id,
    required String name,
    required String address,
    required double latitude,
    required double longitude,
    String? category,
    double? rating,
  }) = _PlaceModel;

  factory PlaceModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceModelFromJson(json);

  factory PlaceModel.fromEntity(Place entity) => PlaceModel(
        id: entity.id,
        name: entity.name,
        address: entity.address,
        latitude: entity.latitude,
        longitude: entity.longitude,
        category: entity.category,
        rating: entity.rating,
      );
}

extension PlaceModelExtension on PlaceModel {
  Place toEntity() => Place(
        id: id,
        name: name,
        address: address,
        latitude: latitude,
        longitude: longitude,
        category: category,
        rating: rating,
      );
}
