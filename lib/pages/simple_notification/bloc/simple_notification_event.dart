part of 'simple_notification_bloc.dart';

@freezed
class SimpleNotificationEvent with _$SimpleNotificationEvent {
  factory SimpleNotificationEvent.showNow() = ShowNow;
}
