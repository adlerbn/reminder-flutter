part of 'create_notification_bloc.dart';

@freezed
class CreateNotificationEvent with _$CreateNotificationEvent {
  factory CreateNotificationEvent.changeName({
    required String name,
  }) = ChangeName;

  factory CreateNotificationEvent.changeStartDate({
    required DateTime startDate,
  }) = ChangeStartDate;

  factory CreateNotificationEvent.changeType({
    required FrequencyType frequencyType,
  }) = ChangeFrequencyType;

  factory CreateNotificationEvent.changeAmount({
    required int frequencyAmount,
  }) = ChangeFrequencyAmount;

  factory CreateNotificationEvent.save() = SaveNotification;
}
