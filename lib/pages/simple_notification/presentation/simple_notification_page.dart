import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder/pages/simple_notification/bloc/simple_notification_bloc.dart';

class SimpleNotificationPage extends StatelessWidget {
  final ReceivedAction? receivedAction;

  const SimpleNotificationPage({
    super.key,
    this.receivedAction,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimpleNotificationBloc, SimpleNotificationState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Simple Notification',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            centerTitle: true,
          ),
          body: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              _showNowNotificationButton(context),
            ],
          ),
        );
      },
    );
  }

  Widget _showNowNotificationButton(BuildContext context) {
    return FilledButton(
      onPressed: () => _showNowNotificationButtonAction(context),
      child: const Text('Show now'),
    );
  }

  Future<void> _showNowNotificationButtonAction(BuildContext context) async {
    context
        .read<SimpleNotificationBloc>()
        .add(SimpleNotificationEvent.showNow());
  }
}
