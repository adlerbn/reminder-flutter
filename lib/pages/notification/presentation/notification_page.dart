import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder/core/presentation/builder/empty_state_builder.dart';
import 'package:reminder/models/notification_entity_model.dart';
import 'package:reminder/pages/notification/bloc/notification_bloc.dart';
import 'package:reminder/pages/notification/widgets/notification_item.dart';

class NotificationPage extends StatelessWidget {
  final ReceivedAction? receivedAction;

  const NotificationPage({
    super.key,
    this.receivedAction,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationBloc, NotificationState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Notification'),
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
        );
      },
    );
  }

  Widget _listContent(
    BuildContext context,
    List<NotificationEntityModel> list,
  ) {
    return ListView.separated(
      itemCount: list.length,
      itemBuilder: (context, index) => NotificationItem(list[index]),
      separatorBuilder: (context, index) => const Divider(),
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
      '/notification-page/create-notification-page',
    );
  }

  Future<void> _fetch(BuildContext context) async {
    context.read<NotificationBloc>().add(NotificationEvent.fetch());
  }
}
