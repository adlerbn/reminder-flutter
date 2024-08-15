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
        }

        return null;
      },
      direction: DismissDirection.endToStart,
      dismissThresholds: const {DismissDirection.endToStart: 0.3},
      background: Container(
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
          model.name,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        subtitle: Text(
          'Every ${model.frequencyAmount} ${model.frequencyType.title}',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        trailing: Text(
          DateFormat.Hm().format(model.startDate),
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.apply(color: Theme.of(context).colorScheme.tertiary),
        ),
      ),
    );
  }
}
