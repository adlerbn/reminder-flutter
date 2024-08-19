import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder/core/presentation/builder/empty_state_builder.dart';
import 'package:reminder/models/notification_entity_model.dart';
import 'package:reminder/pages/schedule_notification/bloc/manager/schedule_notification_bloc.dart';
import 'package:reminder/pages/schedule_notification/widgets/schedule_notification_item.dart';
import 'package:visibility_detector/visibility_detector.dart';

class ScheduleNotificationPage extends StatelessWidget {
  final ReceivedAction? receivedAction;

  const ScheduleNotificationPage({
    super.key,
    this.receivedAction,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleNotificationBloc, ScheduleNotificationState>(
      builder: (context, state) {
        return VisibilityDetector(
          key: const Key('Schedule Notification'),
          onVisibilityChanged: (info) {
            if (info.visibleFraction == 1) {
              context
                  .read<ScheduleNotificationBloc>()
                  .add(ScheduleNotificationEvent.fetch());
            }
          },
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                'Schedule Notification',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              centerTitle: true,
            ),
            body: RefreshIndicator(
              onRefresh: () => _fetch(context),
              child: state.when(
                success: (list) => EmptyStateBuilder(
                  isEmpty: list.isEmpty,
                  emptyContent: _emptyContent(context),
                  child: _listContent(context, list),
                ),
                error: (error) => Text(error),
                loading: () => const Center(child: CircularProgressIndicator()),
              ),
            ),
            floatingActionButton: _addNotificationButton(context),
          ),
        );
      },
    );
  }

  Widget _listContent(
    BuildContext context,
    List<NotificationEntityModel> list,
  ) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) => NotificationItem(
        list[index],
        onDismissed: () {
          context
              .read<ScheduleNotificationBloc>()
              .add(ScheduleNotificationEvent.remove(list[index]));
        },
      ),
    );
  }

  Widget _emptyContent(BuildContext context) {
    return Center(
      child: Text(
        'Empty list',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }

  Widget _addNotificationButton(BuildContext context) {
    return FilledButton.icon(
      onPressed: () => _addNotificationButtonAction(context),
      icon: const Icon(Icons.add_rounded),
      label: const Text('Add'),
    );
  }

  Future<void> _addNotificationButtonAction(BuildContext context) async {
    Navigator.pushNamed(
      context,
      '/schedule-notification-page/create-schedule-notification-page',
    );
  }

  Future<void> _fetch(BuildContext context) async {
    context
        .read<ScheduleNotificationBloc>()
        .add(ScheduleNotificationEvent.fetch());
  }
}
