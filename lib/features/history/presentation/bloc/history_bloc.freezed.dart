// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadHistory,
    required TResult Function(HistoryItem historyItem) addHistory,
    required TResult Function(HistoryItem historyItem) updateHistory,
    required TResult Function(String historyId) deleteHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadHistory,
    TResult? Function(HistoryItem historyItem)? addHistory,
    TResult? Function(HistoryItem historyItem)? updateHistory,
    TResult? Function(String historyId)? deleteHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadHistory,
    TResult Function(HistoryItem historyItem)? addHistory,
    TResult Function(HistoryItem historyItem)? updateHistory,
    TResult Function(String historyId)? deleteHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadHistory value) loadHistory,
    required TResult Function(_AddHistory value) addHistory,
    required TResult Function(_UpdateHistory value) updateHistory,
    required TResult Function(_DeleteHistory value) deleteHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadHistory value)? loadHistory,
    TResult? Function(_AddHistory value)? addHistory,
    TResult? Function(_UpdateHistory value)? updateHistory,
    TResult? Function(_DeleteHistory value)? deleteHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadHistory value)? loadHistory,
    TResult Function(_AddHistory value)? addHistory,
    TResult Function(_UpdateHistory value)? updateHistory,
    TResult Function(_DeleteHistory value)? deleteHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryEventCopyWith<$Res> {
  factory $HistoryEventCopyWith(
          HistoryEvent value, $Res Function(HistoryEvent) then) =
      _$HistoryEventCopyWithImpl<$Res, HistoryEvent>;
}

/// @nodoc
class _$HistoryEventCopyWithImpl<$Res, $Val extends HistoryEvent>
    implements $HistoryEventCopyWith<$Res> {
  _$HistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadHistoryImplCopyWith<$Res> {
  factory _$$LoadHistoryImplCopyWith(
          _$LoadHistoryImpl value, $Res Function(_$LoadHistoryImpl) then) =
      __$$LoadHistoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadHistoryImplCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$LoadHistoryImpl>
    implements _$$LoadHistoryImplCopyWith<$Res> {
  __$$LoadHistoryImplCopyWithImpl(
      _$LoadHistoryImpl _value, $Res Function(_$LoadHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadHistoryImpl implements _LoadHistory {
  const _$LoadHistoryImpl();

  @override
  String toString() {
    return 'HistoryEvent.loadHistory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadHistoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadHistory,
    required TResult Function(HistoryItem historyItem) addHistory,
    required TResult Function(HistoryItem historyItem) updateHistory,
    required TResult Function(String historyId) deleteHistory,
  }) {
    return loadHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadHistory,
    TResult? Function(HistoryItem historyItem)? addHistory,
    TResult? Function(HistoryItem historyItem)? updateHistory,
    TResult? Function(String historyId)? deleteHistory,
  }) {
    return loadHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadHistory,
    TResult Function(HistoryItem historyItem)? addHistory,
    TResult Function(HistoryItem historyItem)? updateHistory,
    TResult Function(String historyId)? deleteHistory,
    required TResult orElse(),
  }) {
    if (loadHistory != null) {
      return loadHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadHistory value) loadHistory,
    required TResult Function(_AddHistory value) addHistory,
    required TResult Function(_UpdateHistory value) updateHistory,
    required TResult Function(_DeleteHistory value) deleteHistory,
  }) {
    return loadHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadHistory value)? loadHistory,
    TResult? Function(_AddHistory value)? addHistory,
    TResult? Function(_UpdateHistory value)? updateHistory,
    TResult? Function(_DeleteHistory value)? deleteHistory,
  }) {
    return loadHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadHistory value)? loadHistory,
    TResult Function(_AddHistory value)? addHistory,
    TResult Function(_UpdateHistory value)? updateHistory,
    TResult Function(_DeleteHistory value)? deleteHistory,
    required TResult orElse(),
  }) {
    if (loadHistory != null) {
      return loadHistory(this);
    }
    return orElse();
  }
}

abstract class _LoadHistory implements HistoryEvent {
  const factory _LoadHistory() = _$LoadHistoryImpl;
}

/// @nodoc
abstract class _$$AddHistoryImplCopyWith<$Res> {
  factory _$$AddHistoryImplCopyWith(
          _$AddHistoryImpl value, $Res Function(_$AddHistoryImpl) then) =
      __$$AddHistoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HistoryItem historyItem});

  $HistoryItemCopyWith<$Res> get historyItem;
}

/// @nodoc
class __$$AddHistoryImplCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$AddHistoryImpl>
    implements _$$AddHistoryImplCopyWith<$Res> {
  __$$AddHistoryImplCopyWithImpl(
      _$AddHistoryImpl _value, $Res Function(_$AddHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? historyItem = null,
  }) {
    return _then(_$AddHistoryImpl(
      null == historyItem
          ? _value.historyItem
          : historyItem // ignore: cast_nullable_to_non_nullable
              as HistoryItem,
    ));
  }

  /// Create a copy of HistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HistoryItemCopyWith<$Res> get historyItem {
    return $HistoryItemCopyWith<$Res>(_value.historyItem, (value) {
      return _then(_value.copyWith(historyItem: value));
    });
  }
}

/// @nodoc

class _$AddHistoryImpl implements _AddHistory {
  const _$AddHistoryImpl(this.historyItem);

  @override
  final HistoryItem historyItem;

  @override
  String toString() {
    return 'HistoryEvent.addHistory(historyItem: $historyItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddHistoryImpl &&
            (identical(other.historyItem, historyItem) ||
                other.historyItem == historyItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, historyItem);

  /// Create a copy of HistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddHistoryImplCopyWith<_$AddHistoryImpl> get copyWith =>
      __$$AddHistoryImplCopyWithImpl<_$AddHistoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadHistory,
    required TResult Function(HistoryItem historyItem) addHistory,
    required TResult Function(HistoryItem historyItem) updateHistory,
    required TResult Function(String historyId) deleteHistory,
  }) {
    return addHistory(historyItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadHistory,
    TResult? Function(HistoryItem historyItem)? addHistory,
    TResult? Function(HistoryItem historyItem)? updateHistory,
    TResult? Function(String historyId)? deleteHistory,
  }) {
    return addHistory?.call(historyItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadHistory,
    TResult Function(HistoryItem historyItem)? addHistory,
    TResult Function(HistoryItem historyItem)? updateHistory,
    TResult Function(String historyId)? deleteHistory,
    required TResult orElse(),
  }) {
    if (addHistory != null) {
      return addHistory(historyItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadHistory value) loadHistory,
    required TResult Function(_AddHistory value) addHistory,
    required TResult Function(_UpdateHistory value) updateHistory,
    required TResult Function(_DeleteHistory value) deleteHistory,
  }) {
    return addHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadHistory value)? loadHistory,
    TResult? Function(_AddHistory value)? addHistory,
    TResult? Function(_UpdateHistory value)? updateHistory,
    TResult? Function(_DeleteHistory value)? deleteHistory,
  }) {
    return addHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadHistory value)? loadHistory,
    TResult Function(_AddHistory value)? addHistory,
    TResult Function(_UpdateHistory value)? updateHistory,
    TResult Function(_DeleteHistory value)? deleteHistory,
    required TResult orElse(),
  }) {
    if (addHistory != null) {
      return addHistory(this);
    }
    return orElse();
  }
}

abstract class _AddHistory implements HistoryEvent {
  const factory _AddHistory(final HistoryItem historyItem) = _$AddHistoryImpl;

  HistoryItem get historyItem;

  /// Create a copy of HistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddHistoryImplCopyWith<_$AddHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateHistoryImplCopyWith<$Res> {
  factory _$$UpdateHistoryImplCopyWith(
          _$UpdateHistoryImpl value, $Res Function(_$UpdateHistoryImpl) then) =
      __$$UpdateHistoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HistoryItem historyItem});

  $HistoryItemCopyWith<$Res> get historyItem;
}

/// @nodoc
class __$$UpdateHistoryImplCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$UpdateHistoryImpl>
    implements _$$UpdateHistoryImplCopyWith<$Res> {
  __$$UpdateHistoryImplCopyWithImpl(
      _$UpdateHistoryImpl _value, $Res Function(_$UpdateHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? historyItem = null,
  }) {
    return _then(_$UpdateHistoryImpl(
      null == historyItem
          ? _value.historyItem
          : historyItem // ignore: cast_nullable_to_non_nullable
              as HistoryItem,
    ));
  }

  /// Create a copy of HistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HistoryItemCopyWith<$Res> get historyItem {
    return $HistoryItemCopyWith<$Res>(_value.historyItem, (value) {
      return _then(_value.copyWith(historyItem: value));
    });
  }
}

/// @nodoc

class _$UpdateHistoryImpl implements _UpdateHistory {
  const _$UpdateHistoryImpl(this.historyItem);

  @override
  final HistoryItem historyItem;

  @override
  String toString() {
    return 'HistoryEvent.updateHistory(historyItem: $historyItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateHistoryImpl &&
            (identical(other.historyItem, historyItem) ||
                other.historyItem == historyItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, historyItem);

  /// Create a copy of HistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateHistoryImplCopyWith<_$UpdateHistoryImpl> get copyWith =>
      __$$UpdateHistoryImplCopyWithImpl<_$UpdateHistoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadHistory,
    required TResult Function(HistoryItem historyItem) addHistory,
    required TResult Function(HistoryItem historyItem) updateHistory,
    required TResult Function(String historyId) deleteHistory,
  }) {
    return updateHistory(historyItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadHistory,
    TResult? Function(HistoryItem historyItem)? addHistory,
    TResult? Function(HistoryItem historyItem)? updateHistory,
    TResult? Function(String historyId)? deleteHistory,
  }) {
    return updateHistory?.call(historyItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadHistory,
    TResult Function(HistoryItem historyItem)? addHistory,
    TResult Function(HistoryItem historyItem)? updateHistory,
    TResult Function(String historyId)? deleteHistory,
    required TResult orElse(),
  }) {
    if (updateHistory != null) {
      return updateHistory(historyItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadHistory value) loadHistory,
    required TResult Function(_AddHistory value) addHistory,
    required TResult Function(_UpdateHistory value) updateHistory,
    required TResult Function(_DeleteHistory value) deleteHistory,
  }) {
    return updateHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadHistory value)? loadHistory,
    TResult? Function(_AddHistory value)? addHistory,
    TResult? Function(_UpdateHistory value)? updateHistory,
    TResult? Function(_DeleteHistory value)? deleteHistory,
  }) {
    return updateHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadHistory value)? loadHistory,
    TResult Function(_AddHistory value)? addHistory,
    TResult Function(_UpdateHistory value)? updateHistory,
    TResult Function(_DeleteHistory value)? deleteHistory,
    required TResult orElse(),
  }) {
    if (updateHistory != null) {
      return updateHistory(this);
    }
    return orElse();
  }
}

abstract class _UpdateHistory implements HistoryEvent {
  const factory _UpdateHistory(final HistoryItem historyItem) =
      _$UpdateHistoryImpl;

  HistoryItem get historyItem;

  /// Create a copy of HistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateHistoryImplCopyWith<_$UpdateHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteHistoryImplCopyWith<$Res> {
  factory _$$DeleteHistoryImplCopyWith(
          _$DeleteHistoryImpl value, $Res Function(_$DeleteHistoryImpl) then) =
      __$$DeleteHistoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String historyId});
}

/// @nodoc
class __$$DeleteHistoryImplCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$DeleteHistoryImpl>
    implements _$$DeleteHistoryImplCopyWith<$Res> {
  __$$DeleteHistoryImplCopyWithImpl(
      _$DeleteHistoryImpl _value, $Res Function(_$DeleteHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? historyId = null,
  }) {
    return _then(_$DeleteHistoryImpl(
      null == historyId
          ? _value.historyId
          : historyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteHistoryImpl implements _DeleteHistory {
  const _$DeleteHistoryImpl(this.historyId);

  @override
  final String historyId;

  @override
  String toString() {
    return 'HistoryEvent.deleteHistory(historyId: $historyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteHistoryImpl &&
            (identical(other.historyId, historyId) ||
                other.historyId == historyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, historyId);

  /// Create a copy of HistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteHistoryImplCopyWith<_$DeleteHistoryImpl> get copyWith =>
      __$$DeleteHistoryImplCopyWithImpl<_$DeleteHistoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadHistory,
    required TResult Function(HistoryItem historyItem) addHistory,
    required TResult Function(HistoryItem historyItem) updateHistory,
    required TResult Function(String historyId) deleteHistory,
  }) {
    return deleteHistory(historyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadHistory,
    TResult? Function(HistoryItem historyItem)? addHistory,
    TResult? Function(HistoryItem historyItem)? updateHistory,
    TResult? Function(String historyId)? deleteHistory,
  }) {
    return deleteHistory?.call(historyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadHistory,
    TResult Function(HistoryItem historyItem)? addHistory,
    TResult Function(HistoryItem historyItem)? updateHistory,
    TResult Function(String historyId)? deleteHistory,
    required TResult orElse(),
  }) {
    if (deleteHistory != null) {
      return deleteHistory(historyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadHistory value) loadHistory,
    required TResult Function(_AddHistory value) addHistory,
    required TResult Function(_UpdateHistory value) updateHistory,
    required TResult Function(_DeleteHistory value) deleteHistory,
  }) {
    return deleteHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadHistory value)? loadHistory,
    TResult? Function(_AddHistory value)? addHistory,
    TResult? Function(_UpdateHistory value)? updateHistory,
    TResult? Function(_DeleteHistory value)? deleteHistory,
  }) {
    return deleteHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadHistory value)? loadHistory,
    TResult Function(_AddHistory value)? addHistory,
    TResult Function(_UpdateHistory value)? updateHistory,
    TResult Function(_DeleteHistory value)? deleteHistory,
    required TResult orElse(),
  }) {
    if (deleteHistory != null) {
      return deleteHistory(this);
    }
    return orElse();
  }
}

abstract class _DeleteHistory implements HistoryEvent {
  const factory _DeleteHistory(final String historyId) = _$DeleteHistoryImpl;

  String get historyId;

  /// Create a copy of HistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteHistoryImplCopyWith<_$DeleteHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HistoryItem> historyItems) loaded,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HistoryItem> historyItems)? loaded,
    TResult? Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HistoryItem> historyItems)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res, HistoryState>;
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res, $Val extends HistoryState>
    implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HistoryState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HistoryItem> historyItems) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HistoryItem> historyItems)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HistoryItem> historyItems)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HistoryState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'HistoryState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HistoryItem> historyItems) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HistoryItem> historyItems)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HistoryItem> historyItems)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HistoryState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<HistoryItem> historyItems});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? historyItems = null,
  }) {
    return _then(_$LoadedImpl(
      null == historyItems
          ? _value._historyItems
          : historyItems // ignore: cast_nullable_to_non_nullable
              as List<HistoryItem>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<HistoryItem> historyItems)
      : _historyItems = historyItems;

  final List<HistoryItem> _historyItems;
  @override
  List<HistoryItem> get historyItems {
    if (_historyItems is EqualUnmodifiableListView) return _historyItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_historyItems);
  }

  @override
  String toString() {
    return 'HistoryState.loaded(historyItems: $historyItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._historyItems, _historyItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_historyItems));

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HistoryItem> historyItems) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return loaded(historyItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HistoryItem> historyItems)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return loaded?.call(historyItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HistoryItem> historyItems)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(historyItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements HistoryState {
  const factory _Loaded(final List<HistoryItem> historyItems) = _$LoadedImpl;

  List<HistoryItem> get historyItems;

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ErrorImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'HistoryState.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HistoryItem> historyItems) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HistoryItem> historyItems)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HistoryItem> historyItems)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements HistoryState {
  const factory _Error(final Failure failure) = _$ErrorImpl;

  Failure get failure;

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
