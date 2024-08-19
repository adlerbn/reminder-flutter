part of 'edit_notification_bloc.dart';

@freezed
class EditScheduleNotificationState with _$EditScheduleNotificationState {
  factory EditScheduleNotificationState({
    required NotificationEntityModel model,
    required NotificationEntityModel tempModel,
  }) = _NotificationState;
}
