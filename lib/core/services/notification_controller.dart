import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:reminder/core/log/logger.dart';

class NotificationController {
  /// Use this method to detect when a new notification or a schedule is created
  @pragma("vm:entry-point")
  static Future<void> onNotificationCreatedMethod(
      ReceivedNotification receivedNotification) async {
    logger.i('onNotificationCreatedMethod');
  }

  /// Use this method to detect every time that a new notification is displayed
  @pragma("vm:entry-point")
  static Future<void> onNotificationDisplayedMethod(
      ReceivedNotification receivedNotification) async {
    logger.i('onNotificationDisplayedMethod');
  }

  /// Use this method to detect if the user dismissed a notification
  @pragma("vm:entry-point")
  static Future<void> onDismissActionReceivedMethod(
      ReceivedAction receivedAction) async {
    logger.i('onDismissActionReceivedMethod');
  }

  /// Use this method to detect when the user taps on a notification or action button
  @pragma("vm:entry-point")
  static Future<void> onActionReceivedMethod(
      ReceivedAction receivedAction) async {
    logger.i('onActionReceivedMethod');

    final payload = receivedAction.payload ?? {};
    if (payload['navigate'] == 'true') {}
    // Navigate into pages, avoiding to open the notification details page over another details page already opened
    // App.navigatorKey.currentState?.pushNamedIfNotCurrent(
    //   destinationRoute,
    //   arguments: receivedAction,
    // );
  }
}
