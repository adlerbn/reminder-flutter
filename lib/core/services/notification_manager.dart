import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:reminder/core/services/notification_controller.dart';

const channelGroupKey = 'reminder_channel_group';
const channelKey = 'reminder_channel';

@injectable
class NotificationManager {
  static Future<void> initialize() async {
    AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
          channelGroupKey: channelGroupKey,
          channelKey: channelKey,
          channelName: 'Reminder Channel',
          channelDescription: 'Reminders',
          defaultColor: Colors.redAccent,
          ledColor: Colors.white,
          playSound: true,
          importance: NotificationImportance.Max,
          onlyAlertOnce: true,
          criticalAlerts: true,
        ),
      ],
      // Channel groups are only visual and are not required
      channelGroups: [
        NotificationChannelGroup(
          channelGroupKey: channelGroupKey,
          channelGroupName: 'Reminder group',
        ),
      ],
      debug: true,
    );

    await _setNotificationListeners();
  }

  static Future<void> _setNotificationListeners() async {
    AwesomeNotifications().setListeners(
      onActionReceivedMethod: NotificationController.onActionReceivedMethod,
      onNotificationCreatedMethod:
          NotificationController.onNotificationCreatedMethod,
      onNotificationDisplayedMethod:
          NotificationController.onNotificationDisplayedMethod,
      onDismissActionReceivedMethod:
          NotificationController.onDismissActionReceivedMethod,
    );
  }

  Future<void> requestPermission() async {
    await AwesomeNotifications()
        .isNotificationAllowed()
        .then((isAllowed) async {
      if (!isAllowed) {
        // This is just a basic example. For real apps, you must show some
        // friendly dialog box before call the request method.
        // This is very important to not harm the user experience
        await AwesomeNotifications().requestPermissionToSendNotifications();
      }
    });
  }

  Future<void> create({
    required int id,
    required int interval,
    Map<String, String>? payload,
  }) async {
    await AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: id,
        channelKey: channelKey,
        groupKey: channelGroupKey,
        actionType: ActionType.Default,
        title: 'Hello World!',
        body: 'This is my first notification!',
        criticalAlert: true,
        category: NotificationCategory.Reminder,
        payload: payload,
      ),
      schedule: NotificationInterval(
        interval: interval,
        allowWhileIdle: true,
        repeats: true,
      ),
    );
  }

  Future<void> show({
    required String title,
    required String body,
    Map<String, String>? payload,
    ActionType actionType = ActionType.Default,
    List<NotificationActionButton>? actionButtons,
    bool schedule = false,
    int? interval,
  }) async {
    await AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: -1,
        channelKey: channelKey,
        groupKey: channelGroupKey,
        actionType: actionType,
        title: title,
        body: body,
        criticalAlert: true,
        category: NotificationCategory.Reminder,
        payload: payload,
      ),
      actionButtons: actionButtons,
    );
  }

  Future<void> cancel(int id) async {
    await AwesomeNotifications().cancel(id);
  }

  Future<void> cancelAll() async {
    await AwesomeNotifications().cancelAll();
  }

  Future<void> cancelAllSchedules() async {
    AwesomeNotifications().cancelAllSchedules();
  }
}
