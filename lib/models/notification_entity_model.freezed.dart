// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_entity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationEntityModel _$NotificationEntityModelFromJson(
    Map<String, dynamic> json) {
  return _NotificationEntityModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationEntityModel {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  FrequencyType get frequencyType => throw _privateConstructorUsedError;
  int get frequencyAmount => throw _privateConstructorUsedError;

  /// Serializes this NotificationEntityModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationEntityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationEntityModelCopyWith<NotificationEntityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEntityModelCopyWith<$Res> {
  factory $NotificationEntityModelCopyWith(NotificationEntityModel value,
          $Res Function(NotificationEntityModel) then) =
      _$NotificationEntityModelCopyWithImpl<$Res, NotificationEntityModel>;
  @useResult
  $Res call(
      {int? id,
      String name,
      DateTime startDate,
      FrequencyType frequencyType,
      int frequencyAmount});
}

/// @nodoc
class _$NotificationEntityModelCopyWithImpl<$Res,
        $Val extends NotificationEntityModel>
    implements $NotificationEntityModelCopyWith<$Res> {
  _$NotificationEntityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationEntityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? startDate = null,
    Object? frequencyType = null,
    Object? frequencyAmount = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$NotificationEntityModelImplCopyWith<$Res>
    implements $NotificationEntityModelCopyWith<$Res> {
  factory _$$NotificationEntityModelImplCopyWith(
          _$NotificationEntityModelImpl value,
          $Res Function(_$NotificationEntityModelImpl) then) =
      __$$NotificationEntityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String name,
      DateTime startDate,
      FrequencyType frequencyType,
      int frequencyAmount});
}

/// @nodoc
class __$$NotificationEntityModelImplCopyWithImpl<$Res>
    extends _$NotificationEntityModelCopyWithImpl<$Res,
        _$NotificationEntityModelImpl>
    implements _$$NotificationEntityModelImplCopyWith<$Res> {
  __$$NotificationEntityModelImplCopyWithImpl(
      _$NotificationEntityModelImpl _value,
      $Res Function(_$NotificationEntityModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEntityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? startDate = null,
    Object? frequencyType = null,
    Object? frequencyAmount = null,
  }) {
    return _then(_$NotificationEntityModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
@JsonSerializable()
class _$NotificationEntityModelImpl implements _NotificationEntityModel {
  _$NotificationEntityModelImpl(
      {this.id,
      required this.name,
      required this.startDate,
      required this.frequencyType,
      required this.frequencyAmount});

  factory _$NotificationEntityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationEntityModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String name;
  @override
  final DateTime startDate;
  @override
  final FrequencyType frequencyType;
  @override
  final int frequencyAmount;

  @override
  String toString() {
    return 'NotificationEntityModel(id: $id, name: $name, startDate: $startDate, frequencyType: $frequencyType, frequencyAmount: $frequencyAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationEntityModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.frequencyType, frequencyType) ||
                other.frequencyType == frequencyType) &&
            (identical(other.frequencyAmount, frequencyAmount) ||
                other.frequencyAmount == frequencyAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, startDate, frequencyType, frequencyAmount);

  /// Create a copy of NotificationEntityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationEntityModelImplCopyWith<_$NotificationEntityModelImpl>
      get copyWith => __$$NotificationEntityModelImplCopyWithImpl<
          _$NotificationEntityModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationEntityModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationEntityModel implements NotificationEntityModel {
  factory _NotificationEntityModel(
      {final int? id,
      required final String name,
      required final DateTime startDate,
      required final FrequencyType frequencyType,
      required final int frequencyAmount}) = _$NotificationEntityModelImpl;

  factory _NotificationEntityModel.fromJson(Map<String, dynamic> json) =
      _$NotificationEntityModelImpl.fromJson;

  @override
  int? get id;
  @override
  String get name;
  @override
  DateTime get startDate;
  @override
  FrequencyType get frequencyType;
  @override
  int get frequencyAmount;

  /// Create a copy of NotificationEntityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationEntityModelImplCopyWith<_$NotificationEntityModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
