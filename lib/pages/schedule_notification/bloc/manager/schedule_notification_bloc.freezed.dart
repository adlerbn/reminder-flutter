// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScheduleNotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(NotificationEntityModel entity) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(NotificationEntityModel entity)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(NotificationEntityModel entity)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetch value) fetch,
    required TResult Function(Remove value) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetch value)? fetch,
    TResult? Function(Remove value)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    TResult Function(Remove value)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleNotificationEventCopyWith<$Res> {
  factory $ScheduleNotificationEventCopyWith(ScheduleNotificationEvent value,
          $Res Function(ScheduleNotificationEvent) then) =
      _$ScheduleNotificationEventCopyWithImpl<$Res, ScheduleNotificationEvent>;
}

/// @nodoc
class _$ScheduleNotificationEventCopyWithImpl<$Res,
        $Val extends ScheduleNotificationEvent>
    implements $ScheduleNotificationEventCopyWith<$Res> {
  _$ScheduleNotificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchImplCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$ScheduleNotificationEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchImpl implements Fetch {
  _$FetchImpl();

  @override
  String toString() {
    return 'ScheduleNotificationEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(NotificationEntityModel entity) remove,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(NotificationEntityModel entity)? remove,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(NotificationEntityModel entity)? remove,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetch value) fetch,
    required TResult Function(Remove value) remove,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetch value)? fetch,
    TResult? Function(Remove value)? remove,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    TResult Function(Remove value)? remove,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class Fetch implements ScheduleNotificationEvent {
  factory Fetch() = _$FetchImpl;
}

/// @nodoc
abstract class _$$RemoveImplCopyWith<$Res> {
  factory _$$RemoveImplCopyWith(
          _$RemoveImpl value, $Res Function(_$RemoveImpl) then) =
      __$$RemoveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NotificationEntityModel entity});

  $NotificationEntityModelCopyWith<$Res> get entity;
}

/// @nodoc
class __$$RemoveImplCopyWithImpl<$Res>
    extends _$ScheduleNotificationEventCopyWithImpl<$Res, _$RemoveImpl>
    implements _$$RemoveImplCopyWith<$Res> {
  __$$RemoveImplCopyWithImpl(
      _$RemoveImpl _value, $Res Function(_$RemoveImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$RemoveImpl(
      null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as NotificationEntityModel,
    ));
  }

  /// Create a copy of ScheduleNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationEntityModelCopyWith<$Res> get entity {
    return $NotificationEntityModelCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$RemoveImpl implements Remove {
  _$RemoveImpl(this.entity);

  @override
  final NotificationEntityModel entity;

  @override
  String toString() {
    return 'ScheduleNotificationEvent.remove(entity: $entity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveImpl &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  /// Create a copy of ScheduleNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveImplCopyWith<_$RemoveImpl> get copyWith =>
      __$$RemoveImplCopyWithImpl<_$RemoveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(NotificationEntityModel entity) remove,
  }) {
    return remove(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(NotificationEntityModel entity)? remove,
  }) {
    return remove?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(NotificationEntityModel entity)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetch value) fetch,
    required TResult Function(Remove value) remove,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetch value)? fetch,
    TResult? Function(Remove value)? remove,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    TResult Function(Remove value)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class Remove implements ScheduleNotificationEvent {
  factory Remove(final NotificationEntityModel entity) = _$RemoveImpl;

  NotificationEntityModel get entity;

  /// Create a copy of ScheduleNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveImplCopyWith<_$RemoveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScheduleNotificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<NotificationEntityModel> list) success,
    required TResult Function(String error) error,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<NotificationEntityModel> list)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<NotificationEntityModel> list)? success,
    TResult Function(String error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScheduleNotificationSuccessState value) success,
    required TResult Function(_ScheduleNotificationErrorState value) error,
    required TResult Function(_ScheduleNotificationLoadingState value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScheduleNotificationSuccessState value)? success,
    TResult? Function(_ScheduleNotificationErrorState value)? error,
    TResult? Function(_ScheduleNotificationLoadingState value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScheduleNotificationSuccessState value)? success,
    TResult Function(_ScheduleNotificationErrorState value)? error,
    TResult Function(_ScheduleNotificationLoadingState value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleNotificationStateCopyWith<$Res> {
  factory $ScheduleNotificationStateCopyWith(ScheduleNotificationState value,
          $Res Function(ScheduleNotificationState) then) =
      _$ScheduleNotificationStateCopyWithImpl<$Res, ScheduleNotificationState>;
}

/// @nodoc
class _$ScheduleNotificationStateCopyWithImpl<$Res,
        $Val extends ScheduleNotificationState>
    implements $ScheduleNotificationStateCopyWith<$Res> {
  _$ScheduleNotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleNotificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ScheduleNotificationSuccessStateImplCopyWith<$Res> {
  factory _$$ScheduleNotificationSuccessStateImplCopyWith(
          _$ScheduleNotificationSuccessStateImpl value,
          $Res Function(_$ScheduleNotificationSuccessStateImpl) then) =
      __$$ScheduleNotificationSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NotificationEntityModel> list});
}

/// @nodoc
class __$$ScheduleNotificationSuccessStateImplCopyWithImpl<$Res>
    extends _$ScheduleNotificationStateCopyWithImpl<$Res,
        _$ScheduleNotificationSuccessStateImpl>
    implements _$$ScheduleNotificationSuccessStateImplCopyWith<$Res> {
  __$$ScheduleNotificationSuccessStateImplCopyWithImpl(
      _$ScheduleNotificationSuccessStateImpl _value,
      $Res Function(_$ScheduleNotificationSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$ScheduleNotificationSuccessStateImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<NotificationEntityModel>,
    ));
  }
}

/// @nodoc

class _$ScheduleNotificationSuccessStateImpl
    implements _ScheduleNotificationSuccessState {
  _$ScheduleNotificationSuccessStateImpl(
      {final List<NotificationEntityModel> list = const []})
      : _list = list;

  final List<NotificationEntityModel> _list;
  @override
  @JsonKey()
  List<NotificationEntityModel> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'ScheduleNotificationState.success(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleNotificationSuccessStateImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  /// Create a copy of ScheduleNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleNotificationSuccessStateImplCopyWith<
          _$ScheduleNotificationSuccessStateImpl>
      get copyWith => __$$ScheduleNotificationSuccessStateImplCopyWithImpl<
          _$ScheduleNotificationSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<NotificationEntityModel> list) success,
    required TResult Function(String error) error,
    required TResult Function() loading,
  }) {
    return success(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<NotificationEntityModel> list)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loading,
  }) {
    return success?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<NotificationEntityModel> list)? success,
    TResult Function(String error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScheduleNotificationSuccessState value) success,
    required TResult Function(_ScheduleNotificationErrorState value) error,
    required TResult Function(_ScheduleNotificationLoadingState value) loading,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScheduleNotificationSuccessState value)? success,
    TResult? Function(_ScheduleNotificationErrorState value)? error,
    TResult? Function(_ScheduleNotificationLoadingState value)? loading,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScheduleNotificationSuccessState value)? success,
    TResult Function(_ScheduleNotificationErrorState value)? error,
    TResult Function(_ScheduleNotificationLoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ScheduleNotificationSuccessState
    implements ScheduleNotificationState {
  factory _ScheduleNotificationSuccessState(
          {final List<NotificationEntityModel> list}) =
      _$ScheduleNotificationSuccessStateImpl;

  List<NotificationEntityModel> get list;

  /// Create a copy of ScheduleNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleNotificationSuccessStateImplCopyWith<
          _$ScheduleNotificationSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleNotificationErrorStateImplCopyWith<$Res> {
  factory _$$ScheduleNotificationErrorStateImplCopyWith(
          _$ScheduleNotificationErrorStateImpl value,
          $Res Function(_$ScheduleNotificationErrorStateImpl) then) =
      __$$ScheduleNotificationErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ScheduleNotificationErrorStateImplCopyWithImpl<$Res>
    extends _$ScheduleNotificationStateCopyWithImpl<$Res,
        _$ScheduleNotificationErrorStateImpl>
    implements _$$ScheduleNotificationErrorStateImplCopyWith<$Res> {
  __$$ScheduleNotificationErrorStateImplCopyWithImpl(
      _$ScheduleNotificationErrorStateImpl _value,
      $Res Function(_$ScheduleNotificationErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ScheduleNotificationErrorStateImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ScheduleNotificationErrorStateImpl
    implements _ScheduleNotificationErrorState {
  _$ScheduleNotificationErrorStateImpl({this.error = ''});

  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'ScheduleNotificationState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleNotificationErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ScheduleNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleNotificationErrorStateImplCopyWith<
          _$ScheduleNotificationErrorStateImpl>
      get copyWith => __$$ScheduleNotificationErrorStateImplCopyWithImpl<
          _$ScheduleNotificationErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<NotificationEntityModel> list) success,
    required TResult Function(String error) error,
    required TResult Function() loading,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<NotificationEntityModel> list)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loading,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<NotificationEntityModel> list)? success,
    TResult Function(String error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScheduleNotificationSuccessState value) success,
    required TResult Function(_ScheduleNotificationErrorState value) error,
    required TResult Function(_ScheduleNotificationLoadingState value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScheduleNotificationSuccessState value)? success,
    TResult? Function(_ScheduleNotificationErrorState value)? error,
    TResult? Function(_ScheduleNotificationLoadingState value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScheduleNotificationSuccessState value)? success,
    TResult Function(_ScheduleNotificationErrorState value)? error,
    TResult Function(_ScheduleNotificationLoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ScheduleNotificationErrorState
    implements ScheduleNotificationState {
  factory _ScheduleNotificationErrorState({final String error}) =
      _$ScheduleNotificationErrorStateImpl;

  String get error;

  /// Create a copy of ScheduleNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleNotificationErrorStateImplCopyWith<
          _$ScheduleNotificationErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleNotificationLoadingStateImplCopyWith<$Res> {
  factory _$$ScheduleNotificationLoadingStateImplCopyWith(
          _$ScheduleNotificationLoadingStateImpl value,
          $Res Function(_$ScheduleNotificationLoadingStateImpl) then) =
      __$$ScheduleNotificationLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScheduleNotificationLoadingStateImplCopyWithImpl<$Res>
    extends _$ScheduleNotificationStateCopyWithImpl<$Res,
        _$ScheduleNotificationLoadingStateImpl>
    implements _$$ScheduleNotificationLoadingStateImplCopyWith<$Res> {
  __$$ScheduleNotificationLoadingStateImplCopyWithImpl(
      _$ScheduleNotificationLoadingStateImpl _value,
      $Res Function(_$ScheduleNotificationLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleNotificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ScheduleNotificationLoadingStateImpl
    implements _ScheduleNotificationLoadingState {
  _$ScheduleNotificationLoadingStateImpl();

  @override
  String toString() {
    return 'ScheduleNotificationState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleNotificationLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<NotificationEntityModel> list) success,
    required TResult Function(String error) error,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<NotificationEntityModel> list)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<NotificationEntityModel> list)? success,
    TResult Function(String error)? error,
    TResult Function()? loading,
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
    required TResult Function(_ScheduleNotificationSuccessState value) success,
    required TResult Function(_ScheduleNotificationErrorState value) error,
    required TResult Function(_ScheduleNotificationLoadingState value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScheduleNotificationSuccessState value)? success,
    TResult? Function(_ScheduleNotificationErrorState value)? error,
    TResult? Function(_ScheduleNotificationLoadingState value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScheduleNotificationSuccessState value)? success,
    TResult Function(_ScheduleNotificationErrorState value)? error,
    TResult Function(_ScheduleNotificationLoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ScheduleNotificationLoadingState
    implements ScheduleNotificationState {
  factory _ScheduleNotificationLoadingState() =
      _$ScheduleNotificationLoadingStateImpl;
}
