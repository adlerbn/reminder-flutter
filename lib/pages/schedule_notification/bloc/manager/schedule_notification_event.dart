part of 'schedule_notification_bloc.dart';

@freezed
class ScheduleNotificationEvent {
  factory ScheduleNotificationEvent.fetch() = Fetch;

  factory ScheduleNotificationEvent.remove(NotificationEntityModel entity) =
      Remove;
}
