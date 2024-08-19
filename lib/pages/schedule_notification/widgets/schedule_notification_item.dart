import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:reminder/models/frequency_type.dart';
import 'package:reminder/models/notification_entity_model.dart';

class NotificationItem extends StatelessWidget {
  final NotificationEntityModel model;
  final void Function() onDismissed;

  const NotificationItem(
    this.model, {
    super.key,
    required this.onDismissed,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(model.id.toString()),
      onDismissed: (_) => onDismissed(),
      confirmDismiss: (direction) async {
        if (direction == DismissDirection.endToStart) {
          bool dismiss = false;

          await showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text("Alert"),
                content:
                    const Text("Are you sure you want to delete the item?"),
                actions: [
                  TextButton(
                    onPressed: () {
                      dismiss = false;
                      Navigator.pop(context);
                    },
                    child: const Text("Discard"),
                  ),
                  FilledButton(
                    onPressed: () {
                      dismiss = true;
                      Navigator.pop(context);
                    },
                    child: const Text("Delete"),
                  ),
                ],
              );
            },
          );

          return dismiss;
        } else if (direction == DismissDirection.startToEnd) {
          Navigator.pushNamed(
            context,
            '/schedule-notification-page/edit-schedule-notification-page',
            arguments: model,
          );
        }

        return null;
      },
      dismissThresholds: const {DismissDirection.endToStart: 0.3},
      background: Container(
        color: Colors.blue,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.centerLeft,
        child: const Icon(
          Icons.edit,
          color: Colors.white,
        ),
      ),
      secondaryBackground: Container(
        color: Colors.red,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.centerRight,
        child: const Icon(
          Icons.delete,
          color: Colors.white,
        ),
      ),
      child: ListTile(
        title: Text(
          model.title,
          style: Theme.of(context).textTheme.bodyLarge,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Offstage(
          offstage: (model.body ?? '').isEmpty,
          child: Text(
            model.body ?? '',
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.apply(color: Theme.of(context).colorScheme.secondary),
          ),
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              DateFormat.Hm().format(model.startDate),
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.apply(color: Theme.of(context).colorScheme.tertiary),
            ),
            const SizedBox(height: 4),
            Text(
              'Every ${model.frequencyAmount} ${model.frequencyType.title}',
              style: Theme.of(context)
                  .textTheme
                  .labelMedium
                  ?.apply(color: Theme.of(context).colorScheme.primary),
            ),
          ],
        ),
      ),
    );
  }
}
