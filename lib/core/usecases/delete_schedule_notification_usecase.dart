import 'package:injectable/injectable.dart';
import 'package:reminder/core/services/alarm/alarm_service.dart';
import 'package:reminder/core/services/notification/notification_service.dart';
import 'package:reminder/models/notification_entity_model.dart';

@injectable
class DeleteScheduleNotificationUseCase {
  final AlarmService alarmService;
  final NotificationService notificationService;

  DeleteScheduleNotificationUseCase(
    this.alarmService,
    this.notificationService,
  );

  Future<void> call(NotificationEntityModel param) async {
    final id = param.id;
    if (id == null) throw Exception('id is null!');

    await notificationService.delete(id);

    await alarmService.cancel(id);
  }
}
