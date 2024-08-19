import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reminder/models/frequency_type.dart';

part 'notification_entity_model.freezed.dart';
part 'notification_entity_model.g.dart';

@freezed
sealed class NotificationEntityModel with _$NotificationEntityModel {
  factory NotificationEntityModel({
    int? id,
    required String title,
    String? body,
    required DateTime startDate,
    required FrequencyType frequencyType,
    required int frequencyAmount,
  }) = _NotificationEntityModel;

  factory NotificationEntityModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationEntityModelFromJson(json);

  factory NotificationEntityModel.fromMap(Map<String, String?> map) {
    return NotificationEntityModel(
      id: int.tryParse(map['id'] ?? ''),
      title: map['title'] ?? '',
      body: map['body'] ?? '',
      startDate: DateTime.tryParse(map['startDate'] ?? '') ?? DateTime.now(),
      frequencyType: FrequencyTypeMapper.mapFromString(map['frequencyType']),
      frequencyAmount: int.tryParse(map['frequencyAmount'] ?? '') ?? 0,
    );
  }
}

extension NotificationEntityModelExtension on NotificationEntityModel {
  Map<String, String?> toMap() {
    return {
      'id': '$id',
      'title': title,
      'body': body,
      'startDate': startDate.toIso8601String(),
      'frequencyType': frequencyType.name,
      'frequencyAmount': frequencyAmount.toString(),
    };
  }

  int get interval => frequencyAmount * frequencyType.toSeconds();
}
