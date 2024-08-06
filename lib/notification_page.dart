import 'package:flutter/material.dart';
import 'package:reminder/notification_manager.dart';

class NotificationPage extends StatelessWidget {
  final manager = NotificationManager();

  NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _pushNotificationButton(),
              _cancelAllNotifications(),
              _checkNotificationsDetail(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _pushNotificationButton() {
    return FilledButton(
      onPressed: () => _pushNotificationButtonAction(),
      child: const Text('Push Notification'),
    );
  }

  Widget _cancelAllNotifications() {
    return OutlinedButton(
      onPressed: () => _cancelAllNotificationsAction(),
      child: const Text('Cancel All Notification'),
    );
  }

  Widget _checkNotificationsDetail() {
    return TextButton(
      onPressed: () => _checkNotificationsDetailAction(),
      child: const Text('Check Notifications Detail'),
    );
  }

  Future<void> _pushNotificationButtonAction() async {
    await manager.initialize();
    await manager.requestPermission();
    await manager.create();
  }

  Future<void> _cancelAllNotificationsAction() async {
    await manager.cancelAll();
  }

  Future<void> _checkNotificationsDetailAction() async {}
}
