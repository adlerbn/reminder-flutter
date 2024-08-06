import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

const channelGroupKey = 'reminder_channel_group';
const channelKey = 'reminder_channel';

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

  Future<void> create() async {
    await AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: 10,
        channelKey: channelKey,
        groupKey: channelGroupKey,
        actionType: ActionType.Default,
        title: 'Hello World!',
        body: 'This is my first notification!',
        criticalAlert: true,
        category: NotificationCategory.Reminder,
      ),
      schedule: NotificationInterval(
        interval: 60,
        allowWhileIdle: true,
        repeats: true,
      ),
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
