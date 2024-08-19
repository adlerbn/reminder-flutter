part of 'edit_notification_bloc.dart';

@freezed
class EditScheduleNotificationEvent with _$EditScheduleNotificationEvent {
  factory EditScheduleNotificationEvent.changeTitle({
    required String title,
  }) = ChangeTitle;

  factory EditScheduleNotificationEvent.changeBody({
    required String body,
  }) = ChangeBody;

  factory EditScheduleNotificationEvent.changeStartDate({
    required DateTime startDate,
  }) = ChangeStartDate;

  factory EditScheduleNotificationEvent.changeFrequencyType({
    required FrequencyType frequencyType,
  }) = ChangeFrequencyType;

  factory EditScheduleNotificationEvent.changeFrequencyAmount({
    required int frequencyAmount,
  }) = ChangeFrequencyAmount;

  factory EditScheduleNotificationEvent.save() = SaveNotification;
}
