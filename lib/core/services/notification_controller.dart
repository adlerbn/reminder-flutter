import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:reminder/core/log/logger.dart';
import 'package:reminder/core/services/notification_manager.dart';
import 'package:reminder/models/notification_entity_model.dart';

class NotificationController {
  /// Use this method to detect when a new notification or a schedule is created
  @pragma("vm:entry-point")
  static Future<void> onNotificationCreatedMethod(
      ReceivedNotification receivedNotification) async {
    logger.i('onNotificationCreatedMethod: $receivedNotification');
  }

  /// Use this method to detect every time that a new notification is displayed
  @pragma("vm:entry-point")
  static Future<void> onNotificationDisplayedMethod(
      ReceivedNotification receivedNotification) async {
    logger.i('onNotificationDisplayedMethod: $receivedNotification');

    final payload = receivedNotification.payload;
    if (payload == null) return;

    final notification = NotificationEntityModel.fromMap(payload);
    final nextDate = (receivedNotification.displayedDate ?? DateTime.now())
        .add(Duration(seconds: notification.interval));

    if (notification.id == null) return;

    await NotificationManager().showSchedule(
      id: notification.id!,
      title: notification.title,
      body: notification.body,
      date: nextDate,
      payload: payload,
    );
  }

  /// Use this method to detect if the user dismissed a notification
  @pragma("vm:entry-point")
  static Future<void> onDismissActionReceivedMethod(
      ReceivedAction receivedAction) async {
    logger.i('onDismissActionReceivedMethod: $receivedAction');
  }

  /// Use this method to detect when the user taps on a notification or action button
  @pragma("vm:entry-point")
  static Future<void> onActionReceivedMethod(
      ReceivedAction receivedAction) async {
    logger.i('onActionReceivedMethod: $receivedAction');

    final payload = receivedAction.payload ?? {};
    if (payload['navigate'] == 'true') {}
  }
}
