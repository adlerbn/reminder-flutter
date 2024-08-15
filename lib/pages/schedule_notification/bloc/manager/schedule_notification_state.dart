part of 'schedule_notification_bloc.dart';

@freezed
class ScheduleNotificationState with _$ScheduleNotificationState {
  factory ScheduleNotificationState.success({
    @Default([]) List<NotificationEntityModel> list,
  }) = _ScheduleNotificationSuccessState;

  factory ScheduleNotificationState.error({
    @Default('') String error,
  }) = _ScheduleNotificationErrorState;

  factory ScheduleNotificationState.loading() =
      _ScheduleNotificationLoadingState;
}
