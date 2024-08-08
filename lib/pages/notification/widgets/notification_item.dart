import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:reminder/models/notification_entity_model.dart';

class NotificationItem extends StatelessWidget {
  final NotificationEntityModel model;

  const NotificationItem(
    this.model, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(model.name),
      subtitle: Text(
        'Every ${model.frequencyAmount} per ${model.frequencyType.name}, started at: ${DateFormat.Hm().format(model.startDate)}',
      ),
    );
  }
}
