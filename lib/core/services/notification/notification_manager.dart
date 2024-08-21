import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:reminder/core/services/notification/notification_controller.dart';

@injectable
class NotificationManager {
  static Future<void> initialize() async {
    AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
          channelGroupKey: 'reminder_tests',
          channelKey: 'reminder',
          channelName: 'Reminder notifications',
          channelDescription: 'Reminders',
          defaultColor: Colors.redAccent,
          ledColor: Colors.white,
          importance: NotificationImportance.Max,
          playSound: true,
          onlyAlertOnce: true,
          criticalAlerts: true,
          locked: true,
        ),
      ],
      // Channel groups are only visual and are not required
      channelGroups: [
        NotificationChannelGroup(
          channelGroupKey: 'reminder_tests',
          channelGroupName: 'Reminder tests',
        ),
      ],
      debug: true,
    );

    await initializeNotificationsEventListeners();
  }

  static Future<void> initializeNotificationsEventListeners() async {
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

  Future<void> show({
    int id = -1,
    required String title,
    String? body,
    Map<String, String>? payload,
    ActionType actionType = ActionType.Default,
    List<NotificationActionButton>? actionButtons,
    DateTime? scheduleDate,
  }) async {
    await AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: id,
        groupKey: 'reminder_tests',
        channelKey: 'reminder',
        actionType: actionType,
        title: title,
        body: body,
        category: NotificationCategory.Reminder,
        payload: payload,
        wakeUpScreen: true,
        fullScreenIntent: true,
        criticalAlert: true,
        locked: true,
        displayOnBackground: true,
        displayOnForeground: true,
      ),
      actionButtons: actionButtons,
      schedule: scheduleDate != null
          ? NotificationCalendar.fromDate(
              date: scheduleDate,
              preciseAlarm: true,
              allowWhileIdle: true,
            )
          : null,
    );
  }

  Future<void> cancel(int id) async {
    await AwesomeNotifications().cancel(id);
  }

  Future<void> cancelSchedule(int id) async {
    await AwesomeNotifications().cancelSchedule(id);
  }

  Future<void> cancelAll() async {
    await AwesomeNotifications().cancelAll();
  }

  Future<void> cancelAllSchedules() async {
    AwesomeNotifications().cancelAllSchedules();
  }
}
