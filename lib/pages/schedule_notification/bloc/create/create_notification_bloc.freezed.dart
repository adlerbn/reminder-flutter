// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateScheduleNotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) changeTitle,
    required TResult Function(String body) changeBody,
    required TResult Function(DateTime startDate) changeStartDate,
    required TResult Function(FrequencyType frequencyType) changeFrequencyType,
    required TResult Function(int frequencyAmount) changeFrequencyAmount,
    required TResult Function() save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? changeTitle,
    TResult? Function(String body)? changeBody,
    TResult? Function(DateTime startDate)? changeStartDate,
    TResult? Function(FrequencyType frequencyType)? changeFrequencyType,
    TResult? Function(int frequencyAmount)? changeFrequencyAmount,
    TResult? Function()? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? changeTitle,
    TResult Function(String body)? changeBody,
    TResult Function(DateTime startDate)? changeStartDate,
    TResult Function(FrequencyType frequencyType)? changeFrequencyType,
    TResult Function(int frequencyAmount)? changeFrequencyAmount,
    TResult Function()? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeTitle value) changeTitle,
    required TResult Function(ChangeBody value) changeBody,
    required TResult Function(ChangeStartDate value) changeStartDate,
    required TResult Function(ChangeFrequencyType value) changeFrequencyType,
    required TResult Function(ChangeFrequencyAmount value)
        changeFrequencyAmount,
    required TResult Function(SaveNotification value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeTitle value)? changeTitle,
    TResult? Function(ChangeBody value)? changeBody,
    TResult? Function(ChangeStartDate value)? changeStartDate,
    TResult? Function(ChangeFrequencyType value)? changeFrequencyType,
    TResult? Function(ChangeFrequencyAmount value)? changeFrequencyAmount,
    TResult? Function(SaveNotification value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeTitle value)? changeTitle,
    TResult Function(ChangeBody value)? changeBody,
    TResult Function(ChangeStartDate value)? changeStartDate,
    TResult Function(ChangeFrequencyType value)? changeFrequencyType,
    TResult Function(ChangeFrequencyAmount value)? changeFrequencyAmount,
    TResult Function(SaveNotification value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateScheduleNotificationEventCopyWith<$Res> {
  factory $CreateScheduleNotificationEventCopyWith(
          CreateScheduleNotificationEvent value,
          $Res Function(CreateScheduleNotificationEvent) then) =
      _$CreateScheduleNotificationEventCopyWithImpl<$Res,
          CreateScheduleNotificationEvent>;
}

/// @nodoc
class _$CreateScheduleNotificationEventCopyWithImpl<$Res,
        $Val extends CreateScheduleNotificationEvent>
    implements $CreateScheduleNotificationEventCopyWith<$Res> {
  _$CreateScheduleNotificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateScheduleNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChangeTitleImplCopyWith<$Res> {
  factory _$$ChangeTitleImplCopyWith(
          _$ChangeTitleImpl value, $Res Function(_$ChangeTitleImpl) then) =
      __$$ChangeTitleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$ChangeTitleImplCopyWithImpl<$Res>
    extends _$CreateScheduleNotificationEventCopyWithImpl<$Res,
        _$ChangeTitleImpl> implements _$$ChangeTitleImplCopyWith<$Res> {
  __$$ChangeTitleImplCopyWithImpl(
      _$ChangeTitleImpl _value, $Res Function(_$ChangeTitleImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateScheduleNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$ChangeTitleImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeTitleImpl implements ChangeTitle {
  _$ChangeTitleImpl({required this.title});

  @override
  final String title;

  @override
  String toString() {
    return 'CreateScheduleNotificationEvent.changeTitle(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTitleImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  /// Create a copy of CreateScheduleNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTitleImplCopyWith<_$ChangeTitleImpl> get copyWith =>
      __$$ChangeTitleImplCopyWithImpl<_$ChangeTitleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) changeTitle,
    required TResult Function(String body) changeBody,
    required TResult Function(DateTime startDate) changeStartDate,
    required TResult Function(FrequencyType frequencyType) changeFrequencyType,
    required TResult Function(int frequencyAmount) changeFrequencyAmount,
    required TResult Function() save,
  }) {
    return changeTitle(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? changeTitle,
    TResult? Function(String body)? changeBody,
    TResult? Function(DateTime startDate)? changeStartDate,
    TResult? Function(FrequencyType frequencyType)? changeFrequencyType,
    TResult? Function(int frequencyAmount)? changeFrequencyAmount,
    TResult? Function()? save,
  }) {
    return changeTitle?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? changeTitle,
    TResult Function(String body)? changeBody,
    TResult Function(DateTime startDate)? changeStartDate,
    TResult Function(FrequencyType frequencyType)? changeFrequencyType,
    TResult Function(int frequencyAmount)? changeFrequencyAmount,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changeTitle != null) {
      return changeTitle(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeTitle value) changeTitle,
    required TResult Function(ChangeBody value) changeBody,
    required TResult Function(ChangeStartDate value) changeStartDate,
    required TResult Function(ChangeFrequencyType value) changeFrequencyType,
    required TResult Function(ChangeFrequencyAmount value)
        changeFrequencyAmount,
    required TResult Function(SaveNotification value) save,
  }) {
    return changeTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeTitle value)? changeTitle,
    TResult? Function(ChangeBody value)? changeBody,
    TResult? Function(ChangeStartDate value)? changeStartDate,
    TResult? Function(ChangeFrequencyType value)? changeFrequencyType,
    TResult? Function(ChangeFrequencyAmount value)? changeFrequencyAmount,
    TResult? Function(SaveNotification value)? save,
  }) {
    return changeTitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeTitle value)? changeTitle,
    TResult Function(ChangeBody value)? changeBody,
    TResult Function(ChangeStartDate value)? changeStartDate,
    TResult Function(ChangeFrequencyType value)? changeFrequencyType,
    TResult Function(ChangeFrequencyAmount value)? changeFrequencyAmount,
    TResult Function(SaveNotification value)? save,
    required TResult orElse(),
  }) {
    if (changeTitle != null) {
      return changeTitle(this);
    }
    return orElse();
  }
}

abstract class ChangeTitle implements CreateScheduleNotificationEvent {
  factory ChangeTitle({required final String title}) = _$ChangeTitleImpl;

  String get title;

  /// Create a copy of CreateScheduleNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeTitleImplCopyWith<_$ChangeTitleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeBodyImplCopyWith<$Res> {
  factory _$$ChangeBodyImplCopyWith(
          _$ChangeBodyImpl value, $Res Function(_$ChangeBodyImpl) then) =
      __$$ChangeBodyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String body});
}

/// @nodoc
class __$$ChangeBodyImplCopyWithImpl<$Res>
    extends _$CreateScheduleNotificationEventCopyWithImpl<$Res,
        _$ChangeBodyImpl> implements _$$ChangeBodyImplCopyWith<$Res> {
  __$$ChangeBodyImplCopyWithImpl(
      _$ChangeBodyImpl _value, $Res Function(_$ChangeBodyImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateScheduleNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
  }) {
    return _then(_$ChangeBodyImpl(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeBodyImpl implements ChangeBody {
  _$ChangeBodyImpl({required this.body});

  @override
  final String body;

  @override
  String toString() {
    return 'CreateScheduleNotificationEvent.changeBody(body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeBodyImpl &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, body);

  /// Create a copy of CreateScheduleNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeBodyImplCopyWith<_$ChangeBodyImpl> get copyWith =>
      __$$ChangeBodyImplCopyWithImpl<_$ChangeBodyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) changeTitle,
    required TResult Function(String body) changeBody,
    required TResult Function(DateTime startDate) changeStartDate,
    required TResult Function(FrequencyType frequencyType) changeFrequencyType,
    required TResult Function(int frequencyAmount) changeFrequencyAmount,
    required TResult Function() save,
  }) {
    return changeBody(body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? changeTitle,
    TResult? Function(String body)? changeBody,
    TResult? Function(DateTime startDate)? changeStartDate,
    TResult? Function(FrequencyType frequencyType)? changeFrequencyType,
    TResult? Function(int frequencyAmount)? changeFrequencyAmount,
    TResult? Function()? save,
  }) {
    return changeBody?.call(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? changeTitle,
    TResult Function(String body)? changeBody,
    TResult Function(DateTime startDate)? changeStartDate,
    TResult Function(FrequencyType frequencyType)? changeFrequencyType,
    TResult Function(int frequencyAmount)? changeFrequencyAmount,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changeBody != null) {
      return changeBody(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeTitle value) changeTitle,
    required TResult Function(ChangeBody value) changeBody,
    required TResult Function(ChangeStartDate value) changeStartDate,
    required TResult Function(ChangeFrequencyType value) changeFrequencyType,
    required TResult Function(ChangeFrequencyAmount value)
        changeFrequencyAmount,
    required TResult Function(SaveNotification value) save,
  }) {
    return changeBody(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeTitle value)? changeTitle,
    TResult? Function(ChangeBody value)? changeBody,
    TResult? Function(ChangeStartDate value)? changeStartDate,
    TResult? Function(ChangeFrequencyType value)? changeFrequencyType,
    TResult? Function(ChangeFrequencyAmount value)? changeFrequencyAmount,
    TResult? Function(SaveNotification value)? save,
  }) {
    return changeBody?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeTitle value)? changeTitle,
    TResult Function(ChangeBody value)? changeBody,
    TResult Function(ChangeStartDate value)? changeStartDate,
    TResult Function(ChangeFrequencyType value)? changeFrequencyType,
    TResult Function(ChangeFrequencyAmount value)? changeFrequencyAmount,
    TResult Function(SaveNotification value)? save,
    required TResult orElse(),
  }) {
    if (changeBody != null) {
      return changeBody(this);
    }
    return orElse();
  }
}

abstract class ChangeBody implements CreateScheduleNotificationEvent {
  factory ChangeBody({required final String body}) = _$ChangeBodyImpl;

  String get body;

  /// Create a copy of CreateScheduleNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeBodyImplCopyWith<_$ChangeBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeStartDateImplCopyWith<$Res> {
  factory _$$ChangeStartDateImplCopyWith(_$ChangeStartDateImpl value,
          $Res Function(_$ChangeStartDateImpl) then) =
      __$$ChangeStartDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime startDate});
}

/// @nodoc
class __$$ChangeStartDateImplCopyWithImpl<$Res>
    extends _$CreateScheduleNotificationEventCopyWithImpl<$Res,
        _$ChangeStartDateImpl> implements _$$ChangeStartDateImplCopyWith<$Res> {
  __$$ChangeStartDateImplCopyWithImpl(
      _$ChangeStartDateImpl _value, $Res Function(_$ChangeStartDateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateScheduleNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
  }) {
    return _then(_$ChangeStartDateImpl(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ChangeStartDateImpl implements ChangeStartDate {
  _$ChangeStartDateImpl({required this.startDate});

  @override
  final DateTime startDate;

  @override
  String toString() {
    return 'CreateScheduleNotificationEvent.changeStartDate(startDate: $startDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeStartDateImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startDate);

  /// Create a copy of CreateScheduleNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeStartDateImplCopyWith<_$ChangeStartDateImpl> get copyWith =>
      __$$ChangeStartDateImplCopyWithImpl<_$ChangeStartDateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) changeTitle,
    required TResult Function(String body) changeBody,
    required TResult Function(DateTime startDate) changeStartDate,
    required TResult Function(FrequencyType frequencyType) changeFrequencyType,
    required TResult Function(int frequencyAmount) changeFrequencyAmount,
    required TResult Function() save,
  }) {
    return changeStartDate(startDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? changeTitle,
    TResult? Function(String body)? changeBody,
    TResult? Function(DateTime startDate)? changeStartDate,
    TResult? Function(FrequencyType frequencyType)? changeFrequencyType,
    TResult? Function(int frequencyAmount)? changeFrequencyAmount,
    TResult? Function()? save,
  }) {
    return changeStartDate?.call(startDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? changeTitle,
    TResult Function(String body)? changeBody,
    TResult Function(DateTime startDate)? changeStartDate,
    TResult Function(FrequencyType frequencyType)? changeFrequencyType,
    TResult Function(int frequencyAmount)? changeFrequencyAmount,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changeStartDate != null) {
      return changeStartDate(startDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeTitle value) changeTitle,
    required TResult Function(ChangeBody value) changeBody,
    required TResult Function(ChangeStartDate value) changeStartDate,
    required TResult Function(ChangeFrequencyType value) changeFrequencyType,
    required TResult Function(ChangeFrequencyAmount value)
        changeFrequencyAmount,
    required TResult Function(SaveNotification value) save,
  }) {
    return changeStartDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeTitle value)? changeTitle,
    TResult? Function(ChangeBody value)? changeBody,
    TResult? Function(ChangeStartDate value)? changeStartDate,
    TResult? Function(ChangeFrequencyType value)? changeFrequencyType,
    TResult? Function(ChangeFrequencyAmount value)? changeFrequencyAmount,
    TResult? Function(SaveNotification value)? save,
  }) {
    return changeStartDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeTitle value)? changeTitle,
    TResult Function(ChangeBody value)? changeBody,
    TResult Function(ChangeStartDate value)? changeStartDate,
    TResult Function(ChangeFrequencyType value)? changeFrequencyType,
    TResult Function(ChangeFrequencyAmount value)? changeFrequencyAmount,
    TResult Function(SaveNotification value)? save,
    required TResult orElse(),
  }) {
    if (changeStartDate != null) {
      return changeStartDate(this);
    }
    return orElse();
  }
}

abstract class ChangeStartDate implements CreateScheduleNotificationEvent {
  factory ChangeStartDate({required final DateTime startDate}) =
      _$ChangeStartDateImpl;

  DateTime get startDate;

  /// Create a copy of CreateScheduleNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeStartDateImplCopyWith<_$ChangeStartDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeFrequencyTypeImplCopyWith<$Res> {
  factory _$$ChangeFrequencyTypeImplCopyWith(_$ChangeFrequencyTypeImpl value,
          $Res Function(_$ChangeFrequencyTypeImpl) then) =
      __$$ChangeFrequencyTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FrequencyType frequencyType});
}

/// @nodoc
class __$$ChangeFrequencyTypeImplCopyWithImpl<$Res>
    extends _$CreateScheduleNotificationEventCopyWithImpl<$Res,
        _$ChangeFrequencyTypeImpl>
    implements _$$ChangeFrequencyTypeImplCopyWith<$Res> {
  __$$ChangeFrequencyTypeImplCopyWithImpl(_$ChangeFrequencyTypeImpl _value,
      $Res Function(_$ChangeFrequencyTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateScheduleNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frequencyType = null,
  }) {
    return _then(_$ChangeFrequencyTypeImpl(
      frequencyType: null == frequencyType
          ? _value.frequencyType
          : frequencyType // ignore: cast_nullable_to_non_nullable
              as FrequencyType,
    ));
  }
}

/// @nodoc

class _$ChangeFrequencyTypeImpl implements ChangeFrequencyType {
  _$ChangeFrequencyTypeImpl({required this.frequencyType});

  @override
  final FrequencyType frequencyType;

  @override
  String toString() {
    return 'CreateScheduleNotificationEvent.changeFrequencyType(frequencyType: $frequencyType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeFrequencyTypeImpl &&
            (identical(other.frequencyType, frequencyType) ||
                other.frequencyType == frequencyType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, frequencyType);

  /// Create a copy of CreateScheduleNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeFrequencyTypeImplCopyWith<_$ChangeFrequencyTypeImpl> get copyWith =>
      __$$ChangeFrequencyTypeImplCopyWithImpl<_$ChangeFrequencyTypeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) changeTitle,
    required TResult Function(String body) changeBody,
    required TResult Function(DateTime startDate) changeStartDate,
    required TResult Function(FrequencyType frequencyType) changeFrequencyType,
    required TResult Function(int frequencyAmount) changeFrequencyAmount,
    required TResult Function() save,
  }) {
    return changeFrequencyType(frequencyType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? changeTitle,
    TResult? Function(String body)? changeBody,
    TResult? Function(DateTime startDate)? changeStartDate,
    TResult? Function(FrequencyType frequencyType)? changeFrequencyType,
    TResult? Function(int frequencyAmount)? changeFrequencyAmount,
    TResult? Function()? save,
  }) {
    return changeFrequencyType?.call(frequencyType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? changeTitle,
    TResult Function(String body)? changeBody,
    TResult Function(DateTime startDate)? changeStartDate,
    TResult Function(FrequencyType frequencyType)? changeFrequencyType,
    TResult Function(int frequencyAmount)? changeFrequencyAmount,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changeFrequencyType != null) {
      return changeFrequencyType(frequencyType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeTitle value) changeTitle,
    required TResult Function(ChangeBody value) changeBody,
    required TResult Function(ChangeStartDate value) changeStartDate,
    required TResult Function(ChangeFrequencyType value) changeFrequencyType,
    required TResult Function(ChangeFrequencyAmount value)
        changeFrequencyAmount,
    required TResult Function(SaveNotification value) save,
  }) {
    return changeFrequencyType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeTitle value)? changeTitle,
    TResult? Function(ChangeBody value)? changeBody,
    TResult? Function(ChangeStartDate value)? changeStartDate,
    TResult? Function(ChangeFrequencyType value)? changeFrequencyType,
    TResult? Function(ChangeFrequencyAmount value)? changeFrequencyAmount,
    TResult? Function(SaveNotification value)? save,
  }) {
    return changeFrequencyType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeTitle value)? changeTitle,
    TResult Function(ChangeBody value)? changeBody,
    TResult Function(ChangeStartDate value)? changeStartDate,
    TResult Function(ChangeFrequencyType value)? changeFrequencyType,
    TResult Function(ChangeFrequencyAmount value)? changeFrequencyAmount,
    TResult Function(SaveNotification value)? save,
    required TResult orElse(),
  }) {
    if (changeFrequencyType != null) {
      return changeFrequencyType(this);
    }
    return orElse();
  }
}

abstract class ChangeFrequencyType implements CreateScheduleNotificationEvent {
  factory ChangeFrequencyType({required final FrequencyType frequencyType}) =
      _$ChangeFrequencyTypeImpl;

  FrequencyType get frequencyType;

  /// Create a copy of CreateScheduleNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeFrequencyTypeImplCopyWith<_$ChangeFrequencyTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeFrequencyAmountImplCopyWith<$Res> {
  factory _$$ChangeFrequencyAmountImplCopyWith(
          _$ChangeFrequencyAmountImpl value,
          $Res Function(_$ChangeFrequencyAmountImpl) then) =
      __$$ChangeFrequencyAmountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int frequencyAmount});
}

/// @nodoc
class __$$ChangeFrequencyAmountImplCopyWithImpl<$Res>
    extends _$CreateScheduleNotificationEventCopyWithImpl<$Res,
        _$ChangeFrequencyAmountImpl>
    implements _$$ChangeFrequencyAmountImplCopyWith<$Res> {
  __$$ChangeFrequencyAmountImplCopyWithImpl(_$ChangeFrequencyAmountImpl _value,
      $Res Function(_$ChangeFrequencyAmountImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateScheduleNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frequencyAmount = null,
  }) {
    return _then(_$ChangeFrequencyAmountImpl(
      frequencyAmount: null == frequencyAmount
          ? _value.frequencyAmount
          : frequencyAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeFrequencyAmountImpl implements ChangeFrequencyAmount {
  _$ChangeFrequencyAmountImpl({required this.frequencyAmount});

  @override
  final int frequencyAmount;

  @override
  String toString() {
    return 'CreateScheduleNotificationEvent.changeFrequencyAmount(frequencyAmount: $frequencyAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeFrequencyAmountImpl &&
            (identical(other.frequencyAmount, frequencyAmount) ||
                other.frequencyAmount == frequencyAmount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, frequencyAmount);

  /// Create a copy of CreateScheduleNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeFrequencyAmountImplCopyWith<_$ChangeFrequencyAmountImpl>
      get copyWith => __$$ChangeFrequencyAmountImplCopyWithImpl<
          _$ChangeFrequencyAmountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) changeTitle,
    required TResult Function(String body) changeBody,
    required TResult Function(DateTime startDate) changeStartDate,
    required TResult Function(FrequencyType frequencyType) changeFrequencyType,
    required TResult Function(int frequencyAmount) changeFrequencyAmount,
    required TResult Function() save,
  }) {
    return changeFrequencyAmount(frequencyAmount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? changeTitle,
    TResult? Function(String body)? changeBody,
    TResult? Function(DateTime startDate)? changeStartDate,
    TResult? Function(FrequencyType frequencyType)? changeFrequencyType,
    TResult? Function(int frequencyAmount)? changeFrequencyAmount,
    TResult? Function()? save,
  }) {
    return changeFrequencyAmount?.call(frequencyAmount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? changeTitle,
    TResult Function(String body)? changeBody,
    TResult Function(DateTime startDate)? changeStartDate,
    TResult Function(FrequencyType frequencyType)? changeFrequencyType,
    TResult Function(int frequencyAmount)? changeFrequencyAmount,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changeFrequencyAmount != null) {
      return changeFrequencyAmount(frequencyAmount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeTitle value) changeTitle,
    required TResult Function(ChangeBody value) changeBody,
    required TResult Function(ChangeStartDate value) changeStartDate,
    required TResult Function(ChangeFrequencyType value) changeFrequencyType,
    required TResult Function(ChangeFrequencyAmount value)
        changeFrequencyAmount,
    required TResult Function(SaveNotification value) save,
  }) {
    return changeFrequencyAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeTitle value)? changeTitle,
    TResult? Function(ChangeBody value)? changeBody,
    TResult? Function(ChangeStartDate value)? changeStartDate,
    TResult? Function(ChangeFrequencyType value)? changeFrequencyType,
    TResult? Function(ChangeFrequencyAmount value)? changeFrequencyAmount,
    TResult? Function(SaveNotification value)? save,
  }) {
    return changeFrequencyAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeTitle value)? changeTitle,
    TResult Function(ChangeBody value)? changeBody,
    TResult Function(ChangeStartDate value)? changeStartDate,
    TResult Function(ChangeFrequencyType value)? changeFrequencyType,
    TResult Function(ChangeFrequencyAmount value)? changeFrequencyAmount,
    TResult Function(SaveNotification value)? save,
    required TResult orElse(),
  }) {
    if (changeFrequencyAmount != null) {
      return changeFrequencyAmount(this);
    }
    return orElse();
  }
}

abstract class ChangeFrequencyAmount
    implements CreateScheduleNotificationEvent {
  factory ChangeFrequencyAmount({required final int frequencyAmount}) =
      _$ChangeFrequencyAmountImpl;

  int get frequencyAmount;

  /// Create a copy of CreateScheduleNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeFrequencyAmountImplCopyWith<_$ChangeFrequencyAmountImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveNotificationImplCopyWith<$Res> {
  factory _$$SaveNotificationImplCopyWith(_$SaveNotificationImpl value,
          $Res Function(_$SaveNotificationImpl) then) =
      __$$SaveNotificationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveNotificationImplCopyWithImpl<$Res>
    extends _$CreateScheduleNotificationEventCopyWithImpl<$Res,
        _$SaveNotificationImpl>
    implements _$$SaveNotificationImplCopyWith<$Res> {
  __$$SaveNotificationImplCopyWithImpl(_$SaveNotificationImpl _value,
      $Res Function(_$SaveNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateScheduleNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SaveNotificationImpl implements SaveNotification {
  _$SaveNotificationImpl();

  @override
  String toString() {
    return 'CreateScheduleNotificationEvent.save()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveNotificationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) changeTitle,
    required TResult Function(String body) changeBody,
    required TResult Function(DateTime startDate) changeStartDate,
    required TResult Function(FrequencyType frequencyType) changeFrequencyType,
    required TResult Function(int frequencyAmount) changeFrequencyAmount,
    required TResult Function() save,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? changeTitle,
    TResult? Function(String body)? changeBody,
    TResult? Function(DateTime startDate)? changeStartDate,
    TResult? Function(FrequencyType frequencyType)? changeFrequencyType,
    TResult? Function(int frequencyAmount)? changeFrequencyAmount,
    TResult? Function()? save,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? changeTitle,
    TResult Function(String body)? changeBody,
    TResult Function(DateTime startDate)? changeStartDate,
    TResult Function(FrequencyType frequencyType)? changeFrequencyType,
    TResult Function(int frequencyAmount)? changeFrequencyAmount,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeTitle value) changeTitle,
    required TResult Function(ChangeBody value) changeBody,
    required TResult Function(ChangeStartDate value) changeStartDate,
    required TResult Function(ChangeFrequencyType value) changeFrequencyType,
    required TResult Function(ChangeFrequencyAmount value)
        changeFrequencyAmount,
    required TResult Function(SaveNotification value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeTitle value)? changeTitle,
    TResult? Function(ChangeBody value)? changeBody,
    TResult? Function(ChangeStartDate value)? changeStartDate,
    TResult? Function(ChangeFrequencyType value)? changeFrequencyType,
    TResult? Function(ChangeFrequencyAmount value)? changeFrequencyAmount,
    TResult? Function(SaveNotification value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeTitle value)? changeTitle,
    TResult Function(ChangeBody value)? changeBody,
    TResult Function(ChangeStartDate value)? changeStartDate,
    TResult Function(ChangeFrequencyType value)? changeFrequencyType,
    TResult Function(ChangeFrequencyAmount value)? changeFrequencyAmount,
    TResult Function(SaveNotification value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class SaveNotification implements CreateScheduleNotificationEvent {
  factory SaveNotification() = _$SaveNotificationImpl;
}

/// @nodoc
mixin _$CreateScheduleNotificationState {
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  FrequencyType get frequencyType => throw _privateConstructorUsedError;
  int get frequencyAmount => throw _privateConstructorUsedError;

  /// Create a copy of CreateScheduleNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateScheduleNotificationStateCopyWith<CreateScheduleNotificationState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateScheduleNotificationStateCopyWith<$Res> {
  factory $CreateScheduleNotificationStateCopyWith(
          CreateScheduleNotificationState value,
          $Res Function(CreateScheduleNotificationState) then) =
      _$CreateScheduleNotificationStateCopyWithImpl<$Res,
          CreateScheduleNotificationState>;
  @useResult
  $Res call(
      {String title,
      String body,
      DateTime startDate,
      FrequencyType frequencyType,
      int frequencyAmount});
}

/// @nodoc
class _$CreateScheduleNotificationStateCopyWithImpl<$Res,
        $Val extends CreateScheduleNotificationState>
    implements $CreateScheduleNotificationStateCopyWith<$Res> {
  _$CreateScheduleNotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateScheduleNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
    Object? startDate = null,
    Object? frequencyType = null,
    Object? frequencyAmount = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      frequencyType: null == frequencyType
          ? _value.frequencyType
          : frequencyType // ignore: cast_nullable_to_non_nullable
              as FrequencyType,
      frequencyAmount: null == frequencyAmount
          ? _value.frequencyAmount
          : frequencyAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationStateImplCopyWith<$Res>
    implements $CreateScheduleNotificationStateCopyWith<$Res> {
  factory _$$NotificationStateImplCopyWith(_$NotificationStateImpl value,
          $Res Function(_$NotificationStateImpl) then) =
      __$$NotificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String body,
      DateTime startDate,
      FrequencyType frequencyType,
      int frequencyAmount});
}

/// @nodoc
class __$$NotificationStateImplCopyWithImpl<$Res>
    extends _$CreateScheduleNotificationStateCopyWithImpl<$Res,
        _$NotificationStateImpl>
    implements _$$NotificationStateImplCopyWith<$Res> {
  __$$NotificationStateImplCopyWithImpl(_$NotificationStateImpl _value,
      $Res Function(_$NotificationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateScheduleNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
    Object? startDate = null,
    Object? frequencyType = null,
    Object? frequencyAmount = null,
  }) {
    return _then(_$NotificationStateImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      frequencyType: null == frequencyType
          ? _value.frequencyType
          : frequencyType // ignore: cast_nullable_to_non_nullable
              as FrequencyType,
      frequencyAmount: null == frequencyAmount
          ? _value.frequencyAmount
          : frequencyAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NotificationStateImpl implements _NotificationState {
  _$NotificationStateImpl(
      {this.title = '',
      this.body = '',
      required this.startDate,
      this.frequencyType = FrequencyType.none,
      this.frequencyAmount = 1});

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String body;
  @override
  final DateTime startDate;
  @override
  @JsonKey()
  final FrequencyType frequencyType;
  @override
  @JsonKey()
  final int frequencyAmount;

  @override
  String toString() {
    return 'CreateScheduleNotificationState(title: $title, body: $body, startDate: $startDate, frequencyType: $frequencyType, frequencyAmount: $frequencyAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationStateImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.frequencyType, frequencyType) ||
                other.frequencyType == frequencyType) &&
            (identical(other.frequencyAmount, frequencyAmount) ||
                other.frequencyAmount == frequencyAmount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, body, startDate, frequencyType, frequencyAmount);

  /// Create a copy of CreateScheduleNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationStateImplCopyWith<_$NotificationStateImpl> get copyWith =>
      __$$NotificationStateImplCopyWithImpl<_$NotificationStateImpl>(
          this, _$identity);
}

abstract class _NotificationState implements CreateScheduleNotificationState {
  factory _NotificationState(
      {final String title,
      final String body,
      required final DateTime startDate,
      final FrequencyType frequencyType,
      final int frequencyAmount}) = _$NotificationStateImpl;

  @override
  String get title;
  @override
  String get body;
  @override
  DateTime get startDate;
  @override
  FrequencyType get frequencyType;
  @override
  int get frequencyAmount;

  /// Create a copy of CreateScheduleNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationStateImplCopyWith<_$NotificationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
