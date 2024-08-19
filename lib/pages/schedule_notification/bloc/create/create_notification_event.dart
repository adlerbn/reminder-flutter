part of 'create_notification_bloc.dart';

@freezed
class CreateScheduleNotificationEvent with _$CreateScheduleNotificationEvent {
  factory CreateScheduleNotificationEvent.changeTitle({
    required String title,
  }) = ChangeTitle;

  factory CreateScheduleNotificationEvent.changeBody({
    required String body,
  }) = ChangeBody;

  factory CreateScheduleNotificationEvent.changeStartDate({
    required DateTime startDate,
  }) = ChangeStartDate;

  factory CreateScheduleNotificationEvent.changeFrequencyType({
    required FrequencyType frequencyType,
  }) = ChangeFrequencyType;

  factory CreateScheduleNotificationEvent.changeFrequencyAmount({
    required int frequencyAmount,
  }) = ChangeFrequencyAmount;

  factory CreateScheduleNotificationEvent.save() = SaveNotification;
}
