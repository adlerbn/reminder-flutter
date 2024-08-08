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
mixin _$CreateNotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeName,
    required TResult Function(DateTime startDate) changeStartDate,
    required TResult Function(FrequencyType frequencyType) changeType,
    required TResult Function(int frequencyAmount) changeAmount,
    required TResult Function() save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changeName,
    TResult? Function(DateTime startDate)? changeStartDate,
    TResult? Function(FrequencyType frequencyType)? changeType,
    TResult? Function(int frequencyAmount)? changeAmount,
    TResult? Function()? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeName,
    TResult Function(DateTime startDate)? changeStartDate,
    TResult Function(FrequencyType frequencyType)? changeType,
    TResult Function(int frequencyAmount)? changeAmount,
    TResult Function()? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeName value) changeName,
    required TResult Function(ChangeStartDate value) changeStartDate,
    required TResult Function(ChangeFrequencyType value) changeType,
    required TResult Function(ChangeFrequencyAmount value) changeAmount,
    required TResult Function(SaveNotification value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeName value)? changeName,
    TResult? Function(ChangeStartDate value)? changeStartDate,
    TResult? Function(ChangeFrequencyType value)? changeType,
    TResult? Function(ChangeFrequencyAmount value)? changeAmount,
    TResult? Function(SaveNotification value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeName value)? changeName,
    TResult Function(ChangeStartDate value)? changeStartDate,
    TResult Function(ChangeFrequencyType value)? changeType,
    TResult Function(ChangeFrequencyAmount value)? changeAmount,
    TResult Function(SaveNotification value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateNotificationEventCopyWith<$Res> {
  factory $CreateNotificationEventCopyWith(CreateNotificationEvent value,
          $Res Function(CreateNotificationEvent) then) =
      _$CreateNotificationEventCopyWithImpl<$Res, CreateNotificationEvent>;
}

/// @nodoc
class _$CreateNotificationEventCopyWithImpl<$Res,
        $Val extends CreateNotificationEvent>
    implements $CreateNotificationEventCopyWith<$Res> {
  _$CreateNotificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChangeNameImplCopyWith<$Res> {
  factory _$$ChangeNameImplCopyWith(
          _$ChangeNameImpl value, $Res Function(_$ChangeNameImpl) then) =
      __$$ChangeNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$ChangeNameImplCopyWithImpl<$Res>
    extends _$CreateNotificationEventCopyWithImpl<$Res, _$ChangeNameImpl>
    implements _$$ChangeNameImplCopyWith<$Res> {
  __$$ChangeNameImplCopyWithImpl(
      _$ChangeNameImpl _value, $Res Function(_$ChangeNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$ChangeNameImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeNameImpl implements ChangeName {
  _$ChangeNameImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'CreateNotificationEvent.changeName(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeNameImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of CreateNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeNameImplCopyWith<_$ChangeNameImpl> get copyWith =>
      __$$ChangeNameImplCopyWithImpl<_$ChangeNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeName,
    required TResult Function(DateTime startDate) changeStartDate,
    required TResult Function(FrequencyType frequencyType) changeType,
    required TResult Function(int frequencyAmount) changeAmount,
    required TResult Function() save,
  }) {
    return changeName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changeName,
    TResult? Function(DateTime startDate)? changeStartDate,
    TResult? Function(FrequencyType frequencyType)? changeType,
    TResult? Function(int frequencyAmount)? changeAmount,
    TResult? Function()? save,
  }) {
    return changeName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeName,
    TResult Function(DateTime startDate)? changeStartDate,
    TResult Function(FrequencyType frequencyType)? changeType,
    TResult Function(int frequencyAmount)? changeAmount,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changeName != null) {
      return changeName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeName value) changeName,
    required TResult Function(ChangeStartDate value) changeStartDate,
    required TResult Function(ChangeFrequencyType value) changeType,
    required TResult Function(ChangeFrequencyAmount value) changeAmount,
    required TResult Function(SaveNotification value) save,
  }) {
    return changeName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeName value)? changeName,
    TResult? Function(ChangeStartDate value)? changeStartDate,
    TResult? Function(ChangeFrequencyType value)? changeType,
    TResult? Function(ChangeFrequencyAmount value)? changeAmount,
    TResult? Function(SaveNotification value)? save,
  }) {
    return changeName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeName value)? changeName,
    TResult Function(ChangeStartDate value)? changeStartDate,
    TResult Function(ChangeFrequencyType value)? changeType,
    TResult Function(ChangeFrequencyAmount value)? changeAmount,
    TResult Function(SaveNotification value)? save,
    required TResult orElse(),
  }) {
    if (changeName != null) {
      return changeName(this);
    }
    return orElse();
  }
}

abstract class ChangeName implements CreateNotificationEvent {
  factory ChangeName({required final String name}) = _$ChangeNameImpl;

  String get name;

  /// Create a copy of CreateNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeNameImplCopyWith<_$ChangeNameImpl> get copyWith =>
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
    extends _$CreateNotificationEventCopyWithImpl<$Res, _$ChangeStartDateImpl>
    implements _$$ChangeStartDateImplCopyWith<$Res> {
  __$$ChangeStartDateImplCopyWithImpl(
      _$ChangeStartDateImpl _value, $Res Function(_$ChangeStartDateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateNotificationEvent
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
    return 'CreateNotificationEvent.changeStartDate(startDate: $startDate)';
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

  /// Create a copy of CreateNotificationEvent
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
    required TResult Function(String name) changeName,
    required TResult Function(DateTime startDate) changeStartDate,
    required TResult Function(FrequencyType frequencyType) changeType,
    required TResult Function(int frequencyAmount) changeAmount,
    required TResult Function() save,
  }) {
    return changeStartDate(startDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changeName,
    TResult? Function(DateTime startDate)? changeStartDate,
    TResult? Function(FrequencyType frequencyType)? changeType,
    TResult? Function(int frequencyAmount)? changeAmount,
    TResult? Function()? save,
  }) {
    return changeStartDate?.call(startDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeName,
    TResult Function(DateTime startDate)? changeStartDate,
    TResult Function(FrequencyType frequencyType)? changeType,
    TResult Function(int frequencyAmount)? changeAmount,
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
    required TResult Function(ChangeName value) changeName,
    required TResult Function(ChangeStartDate value) changeStartDate,
    required TResult Function(ChangeFrequencyType value) changeType,
    required TResult Function(ChangeFrequencyAmount value) changeAmount,
    required TResult Function(SaveNotification value) save,
  }) {
    return changeStartDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeName value)? changeName,
    TResult? Function(ChangeStartDate value)? changeStartDate,
    TResult? Function(ChangeFrequencyType value)? changeType,
    TResult? Function(ChangeFrequencyAmount value)? changeAmount,
    TResult? Function(SaveNotification value)? save,
  }) {
    return changeStartDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeName value)? changeName,
    TResult Function(ChangeStartDate value)? changeStartDate,
    TResult Function(ChangeFrequencyType value)? changeType,
    TResult Function(ChangeFrequencyAmount value)? changeAmount,
    TResult Function(SaveNotification value)? save,
    required TResult orElse(),
  }) {
    if (changeStartDate != null) {
      return changeStartDate(this);
    }
    return orElse();
  }
}

abstract class ChangeStartDate implements CreateNotificationEvent {
  factory ChangeStartDate({required final DateTime startDate}) =
      _$ChangeStartDateImpl;

  DateTime get startDate;

  /// Create a copy of CreateNotificationEvent
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
    extends _$CreateNotificationEventCopyWithImpl<$Res,
        _$ChangeFrequencyTypeImpl>
    implements _$$ChangeFrequencyTypeImplCopyWith<$Res> {
  __$$ChangeFrequencyTypeImplCopyWithImpl(_$ChangeFrequencyTypeImpl _value,
      $Res Function(_$ChangeFrequencyTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateNotificationEvent
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
    return 'CreateNotificationEvent.changeType(frequencyType: $frequencyType)';
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

  /// Create a copy of CreateNotificationEvent
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
    required TResult Function(String name) changeName,
    required TResult Function(DateTime startDate) changeStartDate,
    required TResult Function(FrequencyType frequencyType) changeType,
    required TResult Function(int frequencyAmount) changeAmount,
    required TResult Function() save,
  }) {
    return changeType(frequencyType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changeName,
    TResult? Function(DateTime startDate)? changeStartDate,
    TResult? Function(FrequencyType frequencyType)? changeType,
    TResult? Function(int frequencyAmount)? changeAmount,
    TResult? Function()? save,
  }) {
    return changeType?.call(frequencyType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeName,
    TResult Function(DateTime startDate)? changeStartDate,
    TResult Function(FrequencyType frequencyType)? changeType,
    TResult Function(int frequencyAmount)? changeAmount,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changeType != null) {
      return changeType(frequencyType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeName value) changeName,
    required TResult Function(ChangeStartDate value) changeStartDate,
    required TResult Function(ChangeFrequencyType value) changeType,
    required TResult Function(ChangeFrequencyAmount value) changeAmount,
    required TResult Function(SaveNotification value) save,
  }) {
    return changeType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeName value)? changeName,
    TResult? Function(ChangeStartDate value)? changeStartDate,
    TResult? Function(ChangeFrequencyType value)? changeType,
    TResult? Function(ChangeFrequencyAmount value)? changeAmount,
    TResult? Function(SaveNotification value)? save,
  }) {
    return changeType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeName value)? changeName,
    TResult Function(ChangeStartDate value)? changeStartDate,
    TResult Function(ChangeFrequencyType value)? changeType,
    TResult Function(ChangeFrequencyAmount value)? changeAmount,
    TResult Function(SaveNotification value)? save,
    required TResult orElse(),
  }) {
    if (changeType != null) {
      return changeType(this);
    }
    return orElse();
  }
}

abstract class ChangeFrequencyType implements CreateNotificationEvent {
  factory ChangeFrequencyType({required final FrequencyType frequencyType}) =
      _$ChangeFrequencyTypeImpl;

  FrequencyType get frequencyType;

  /// Create a copy of CreateNotificationEvent
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
    extends _$CreateNotificationEventCopyWithImpl<$Res,
        _$ChangeFrequencyAmountImpl>
    implements _$$ChangeFrequencyAmountImplCopyWith<$Res> {
  __$$ChangeFrequencyAmountImplCopyWithImpl(_$ChangeFrequencyAmountImpl _value,
      $Res Function(_$ChangeFrequencyAmountImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateNotificationEvent
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
    return 'CreateNotificationEvent.changeAmount(frequencyAmount: $frequencyAmount)';
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

  /// Create a copy of CreateNotificationEvent
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
    required TResult Function(String name) changeName,
    required TResult Function(DateTime startDate) changeStartDate,
    required TResult Function(FrequencyType frequencyType) changeType,
    required TResult Function(int frequencyAmount) changeAmount,
    required TResult Function() save,
  }) {
    return changeAmount(frequencyAmount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changeName,
    TResult? Function(DateTime startDate)? changeStartDate,
    TResult? Function(FrequencyType frequencyType)? changeType,
    TResult? Function(int frequencyAmount)? changeAmount,
    TResult? Function()? save,
  }) {
    return changeAmount?.call(frequencyAmount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeName,
    TResult Function(DateTime startDate)? changeStartDate,
    TResult Function(FrequencyType frequencyType)? changeType,
    TResult Function(int frequencyAmount)? changeAmount,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changeAmount != null) {
      return changeAmount(frequencyAmount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeName value) changeName,
    required TResult Function(ChangeStartDate value) changeStartDate,
    required TResult Function(ChangeFrequencyType value) changeType,
    required TResult Function(ChangeFrequencyAmount value) changeAmount,
    required TResult Function(SaveNotification value) save,
  }) {
    return changeAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeName value)? changeName,
    TResult? Function(ChangeStartDate value)? changeStartDate,
    TResult? Function(ChangeFrequencyType value)? changeType,
    TResult? Function(ChangeFrequencyAmount value)? changeAmount,
    TResult? Function(SaveNotification value)? save,
  }) {
    return changeAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeName value)? changeName,
    TResult Function(ChangeStartDate value)? changeStartDate,
    TResult Function(ChangeFrequencyType value)? changeType,
    TResult Function(ChangeFrequencyAmount value)? changeAmount,
    TResult Function(SaveNotification value)? save,
    required TResult orElse(),
  }) {
    if (changeAmount != null) {
      return changeAmount(this);
    }
    return orElse();
  }
}

abstract class ChangeFrequencyAmount implements CreateNotificationEvent {
  factory ChangeFrequencyAmount({required final int frequencyAmount}) =
      _$ChangeFrequencyAmountImpl;

  int get frequencyAmount;

  /// Create a copy of CreateNotificationEvent
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
    extends _$CreateNotificationEventCopyWithImpl<$Res, _$SaveNotificationImpl>
    implements _$$SaveNotificationImplCopyWith<$Res> {
  __$$SaveNotificationImplCopyWithImpl(_$SaveNotificationImpl _value,
      $Res Function(_$SaveNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SaveNotificationImpl implements SaveNotification {
  _$SaveNotificationImpl();

  @override
  String toString() {
    return 'CreateNotificationEvent.save()';
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
    required TResult Function(String name) changeName,
    required TResult Function(DateTime startDate) changeStartDate,
    required TResult Function(FrequencyType frequencyType) changeType,
    required TResult Function(int frequencyAmount) changeAmount,
    required TResult Function() save,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changeName,
    TResult? Function(DateTime startDate)? changeStartDate,
    TResult? Function(FrequencyType frequencyType)? changeType,
    TResult? Function(int frequencyAmount)? changeAmount,
    TResult? Function()? save,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeName,
    TResult Function(DateTime startDate)? changeStartDate,
    TResult Function(FrequencyType frequencyType)? changeType,
    TResult Function(int frequencyAmount)? changeAmount,
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
    required TResult Function(ChangeName value) changeName,
    required TResult Function(ChangeStartDate value) changeStartDate,
    required TResult Function(ChangeFrequencyType value) changeType,
    required TResult Function(ChangeFrequencyAmount value) changeAmount,
    required TResult Function(SaveNotification value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeName value)? changeName,
    TResult? Function(ChangeStartDate value)? changeStartDate,
    TResult? Function(ChangeFrequencyType value)? changeType,
    TResult? Function(ChangeFrequencyAmount value)? changeAmount,
    TResult? Function(SaveNotification value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeName value)? changeName,
    TResult Function(ChangeStartDate value)? changeStartDate,
    TResult Function(ChangeFrequencyType value)? changeType,
    TResult Function(ChangeFrequencyAmount value)? changeAmount,
    TResult Function(SaveNotification value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class SaveNotification implements CreateNotificationEvent {
  factory SaveNotification() = _$SaveNotificationImpl;
}

/// @nodoc
mixin _$CreateNotificationState {
  String get name => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  FrequencyType get frequencyType => throw _privateConstructorUsedError;
  int get frequencyAmount => throw _privateConstructorUsedError;

  /// Create a copy of CreateNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateNotificationStateCopyWith<CreateNotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateNotificationStateCopyWith<$Res> {
  factory $CreateNotificationStateCopyWith(CreateNotificationState value,
          $Res Function(CreateNotificationState) then) =
      _$CreateNotificationStateCopyWithImpl<$Res, CreateNotificationState>;
  @useResult
  $Res call(
      {String name,
      DateTime startDate,
      FrequencyType frequencyType,
      int frequencyAmount});
}

/// @nodoc
class _$CreateNotificationStateCopyWithImpl<$Res,
        $Val extends CreateNotificationState>
    implements $CreateNotificationStateCopyWith<$Res> {
  _$CreateNotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? startDate = null,
    Object? frequencyType = null,
    Object? frequencyAmount = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
    implements $CreateNotificationStateCopyWith<$Res> {
  factory _$$NotificationStateImplCopyWith(_$NotificationStateImpl value,
          $Res Function(_$NotificationStateImpl) then) =
      __$$NotificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      DateTime startDate,
      FrequencyType frequencyType,
      int frequencyAmount});
}

/// @nodoc
class __$$NotificationStateImplCopyWithImpl<$Res>
    extends _$CreateNotificationStateCopyWithImpl<$Res, _$NotificationStateImpl>
    implements _$$NotificationStateImplCopyWith<$Res> {
  __$$NotificationStateImplCopyWithImpl(_$NotificationStateImpl _value,
      $Res Function(_$NotificationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? startDate = null,
    Object? frequencyType = null,
    Object? frequencyAmount = null,
  }) {
    return _then(_$NotificationStateImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
      {this.name = '',
      required this.startDate,
      this.frequencyType = FrequencyType.none,
      this.frequencyAmount = 1});

  @override
  @JsonKey()
  final String name;
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
    return 'CreateNotificationState(name: $name, startDate: $startDate, frequencyType: $frequencyType, frequencyAmount: $frequencyAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.frequencyType, frequencyType) ||
                other.frequencyType == frequencyType) &&
            (identical(other.frequencyAmount, frequencyAmount) ||
                other.frequencyAmount == frequencyAmount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, startDate, frequencyType, frequencyAmount);

  /// Create a copy of CreateNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationStateImplCopyWith<_$NotificationStateImpl> get copyWith =>
      __$$NotificationStateImplCopyWithImpl<_$NotificationStateImpl>(
          this, _$identity);
}

abstract class _NotificationState implements CreateNotificationState {
  factory _NotificationState(
      {final String name,
      required final DateTime startDate,
      final FrequencyType frequencyType,
      final int frequencyAmount}) = _$NotificationStateImpl;

  @override
  String get name;
  @override
  DateTime get startDate;
  @override
  FrequencyType get frequencyType;
  @override
  int get frequencyAmount;

  /// Create a copy of CreateNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationStateImplCopyWith<_$NotificationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
