part of 'create_notification_bloc.dart';

@freezed
class CreateScheduleNotificationEvent with _$CreateScheduleNotificationEvent {
  factory CreateScheduleNotificationEvent.changeName({
    required String name,
  }) = ChangeName;

  factory CreateScheduleNotificationEvent.changeStartDate({
    required DateTime startDate,
  }) = ChangeStartDate;

  factory CreateScheduleNotificationEvent.changeType({
    required FrequencyType frequencyType,
  }) = ChangeFrequencyType;

  factory CreateScheduleNotificationEvent.changeAmount({
    required int frequencyAmount,
  }) = ChangeFrequencyAmount;

  factory CreateScheduleNotificationEvent.save() = SaveNotification;
}
