import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          _simpleNotificationPage(context),
          _scheduleNotificationPage(context),
        ],
      ),
    );
  }

  Widget _simpleNotificationPage(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.of(context).pushNamed('/simple-notification-page'),
      title: const Text("Simple Notification"),
      leading: const Icon(Icons.notifications),
      trailing: const Icon(Icons.chevron_right_rounded),
    );
  }

  Widget _scheduleNotificationPage(BuildContext context) {
    return ListTile(
      onTap: () =>
          Navigator.of(context).pushNamed('/schedule-notification-page'),
      title: const Text("Schedule Notification"),
      leading: const Icon(Icons.access_time_filled),
      trailing: const Icon(Icons.chevron_right_rounded),
    );
  }
}
