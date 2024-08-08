// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_entity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationEntityModelImpl _$$NotificationEntityModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationEntityModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      frequencyType: $enumDecode(_$FrequencyTypeEnumMap, json['frequencyType']),
      frequencyAmount: (json['frequencyAmount'] as num).toInt(),
    );

Map<String, dynamic> _$$NotificationEntityModelImplToJson(
        _$NotificationEntityModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'startDate': instance.startDate.toIso8601String(),
      'frequencyType': _$FrequencyTypeEnumMap[instance.frequencyType]!,
      'frequencyAmount': instance.frequencyAmount,
    };

const _$FrequencyTypeEnumMap = {
  FrequencyType.none: 'none',
  FrequencyType.hourly: 'hourly',
  FrequencyType.daily: 'daily',
  FrequencyType.weekly: 'weekly',
  FrequencyType.monthly: 'monthly',
  FrequencyType.yearly: 'yearly',
};
