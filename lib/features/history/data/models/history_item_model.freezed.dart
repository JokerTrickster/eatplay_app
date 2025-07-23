// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HistoryItemModel _$HistoryItemModelFromJson(Map<String, dynamic> json) {
  return _HistoryItemModel.fromJson(json);
}

/// @nodoc
mixin _$HistoryItemModel {
  String get id => throw _privateConstructorUsedError;
  String get restaurantName => throw _privateConstructorUsedError;
  String get visitDate => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String get review => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;

  /// Serializes this HistoryItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HistoryItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HistoryItemModelCopyWith<HistoryItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryItemModelCopyWith<$Res> {
  factory $HistoryItemModelCopyWith(
          HistoryItemModel value, $Res Function(HistoryItemModel) then) =
      _$HistoryItemModelCopyWithImpl<$Res, HistoryItemModel>;
  @useResult
  $Res call(
      {String id,
      String restaurantName,
      String visitDate,
      double rating,
      String review,
      String imageUrl,
      String category});
}

/// @nodoc
class _$HistoryItemModelCopyWithImpl<$Res, $Val extends HistoryItemModel>
    implements $HistoryItemModelCopyWith<$Res> {
  _$HistoryItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoryItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? restaurantName = null,
    Object? visitDate = null,
    Object? rating = null,
    Object? review = null,
    Object? imageUrl = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantName: null == restaurantName
          ? _value.restaurantName
          : restaurantName // ignore: cast_nullable_to_non_nullable
              as String,
      visitDate: null == visitDate
          ? _value.visitDate
          : visitDate // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryItemModelImplCopyWith<$Res>
    implements $HistoryItemModelCopyWith<$Res> {
  factory _$$HistoryItemModelImplCopyWith(_$HistoryItemModelImpl value,
          $Res Function(_$HistoryItemModelImpl) then) =
      __$$HistoryItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String restaurantName,
      String visitDate,
      double rating,
      String review,
      String imageUrl,
      String category});
}

/// @nodoc
class __$$HistoryItemModelImplCopyWithImpl<$Res>
    extends _$HistoryItemModelCopyWithImpl<$Res, _$HistoryItemModelImpl>
    implements _$$HistoryItemModelImplCopyWith<$Res> {
  __$$HistoryItemModelImplCopyWithImpl(_$HistoryItemModelImpl _value,
      $Res Function(_$HistoryItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? restaurantName = null,
    Object? visitDate = null,
    Object? rating = null,
    Object? review = null,
    Object? imageUrl = null,
    Object? category = null,
  }) {
    return _then(_$HistoryItemModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantName: null == restaurantName
          ? _value.restaurantName
          : restaurantName // ignore: cast_nullable_to_non_nullable
              as String,
      visitDate: null == visitDate
          ? _value.visitDate
          : visitDate // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryItemModelImpl implements _HistoryItemModel {
  const _$HistoryItemModelImpl(
      {required this.id,
      required this.restaurantName,
      required this.visitDate,
      required this.rating,
      required this.review,
      required this.imageUrl,
      required this.category});

  factory _$HistoryItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryItemModelImplFromJson(json);

  @override
  final String id;
  @override
  final String restaurantName;
  @override
  final String visitDate;
  @override
  final double rating;
  @override
  final String review;
  @override
  final String imageUrl;
  @override
  final String category;

  @override
  String toString() {
    return 'HistoryItemModel(id: $id, restaurantName: $restaurantName, visitDate: $visitDate, rating: $rating, review: $review, imageUrl: $imageUrl, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.restaurantName, restaurantName) ||
                other.restaurantName == restaurantName) &&
            (identical(other.visitDate, visitDate) ||
                other.visitDate == visitDate) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, restaurantName, visitDate,
      rating, review, imageUrl, category);

  /// Create a copy of HistoryItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryItemModelImplCopyWith<_$HistoryItemModelImpl> get copyWith =>
      __$$HistoryItemModelImplCopyWithImpl<_$HistoryItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryItemModelImplToJson(
      this,
    );
  }
}

abstract class _HistoryItemModel implements HistoryItemModel {
  const factory _HistoryItemModel(
      {required final String id,
      required final String restaurantName,
      required final String visitDate,
      required final double rating,
      required final String review,
      required final String imageUrl,
      required final String category}) = _$HistoryItemModelImpl;

  factory _HistoryItemModel.fromJson(Map<String, dynamic> json) =
      _$HistoryItemModelImpl.fromJson;

  @override
  String get id;
  @override
  String get restaurantName;
  @override
  String get visitDate;
  @override
  double get rating;
  @override
  String get review;
  @override
  String get imageUrl;
  @override
  String get category;

  /// Create a copy of HistoryItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryItemModelImplCopyWith<_$HistoryItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
