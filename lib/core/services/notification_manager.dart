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
          channelGroupKey: 'reminder_tests',
          channelKey: 'reminder',
          channelName: 'Reminder notifications',
          channelDescription: 'Reminders',
          defaultColor: Colors.redAccent,
          ledColor: Colors.white,
          playSound: true,
          importance: NotificationImportance.Max,
          onlyAlertOnce: true,
          criticalAlerts: true,
        ),
        NotificationChannel(
          channelGroupKey: 'schedule_tests',
          channelKey: 'scheduled',
          channelName: 'Scheduled notifications',
          channelDescription: 'Notifications with schedule functionality',
          defaultColor: Colors.blueAccent,
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
          channelGroupKey: 'reminder_tests',
          channelGroupName: 'Reminder tests',
        ),
        NotificationChannelGroup(
          channelGroupKey: 'schedule_tests',
          channelGroupName: 'Schedule tests',
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

  Future<void> showSchedule({
    required int id,
    required int interval,
    Map<String, String>? payload,
  }) async {
    final localTimeZone =
        await AwesomeNotifications().getLocalTimeZoneIdentifier();

    await AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: id,
        channelKey: 'scheduled',
        title: 'Notification every single minute',
        body: 'This notification was scheduled to repeat every minute.',
      ),
      schedule: NotificationInterval(
        interval: interval,
        allowWhileIdle: true,
        repeats: true,
        timeZone: localTimeZone,
      ),
    );
  }

  Future<void> show({
    required String title,
    required String body,
    Map<String, String>? payload,
    ActionType actionType = ActionType.Default,
    List<NotificationActionButton>? actionButtons,
    DateTime? scheduleDate,
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
        wakeUpScreen: true,
        locked: true,
        fullScreenIntent: true,
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
