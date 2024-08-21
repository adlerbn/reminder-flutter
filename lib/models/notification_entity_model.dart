import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reminder/core/utils/boolean_converter.dart';
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
}

extension NotificationEntityModelExtension on NotificationEntityModel {
  int get interval => frequencyAmount * frequencyType.toSeconds();
}
