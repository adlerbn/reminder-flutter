part of 'create_notification_bloc.dart';

@freezed
class CreateScheduleNotificationState with _$CreateScheduleNotificationState {
  factory CreateScheduleNotificationState({
    @Default('') String name,
    required DateTime startDate,
    @Default(FrequencyType.none) FrequencyType frequencyType,
    @Default(1) int frequencyAmount,
  }) = _NotificationState;

  factory CreateScheduleNotificationState.init() {
    return CreateScheduleNotificationState(startDate: DateTime.now());
  }
}
