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
          _notificationPage(context),
        ],
      ),
    );
  }

  Widget _notificationPage(BuildContext context) {
    return ListTile(
      onTap: () =>
          Navigator.of(context).pushNamed('/schedule-notification-page'),
      title: const Text("Schedule Notification"),
      leading: const Icon(Icons.notifications),
      trailing: const Icon(Icons.chevron_right_rounded),
    );
  }
}
