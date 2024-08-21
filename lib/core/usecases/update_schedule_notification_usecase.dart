import 'package:injectable/injectable.dart';
import 'package:reminder/core/services/alarm/alarm_service.dart';
import 'package:reminder/core/services/notification/notification_service.dart';
import 'package:reminder/models/notification_entity_model.dart';

@injectable
class UpdateScheduleNotificationUseCase {
  final AlarmService alarmService;
  final NotificationService notificationService;

  UpdateScheduleNotificationUseCase(
    this.alarmService,
    this.notificationService,
  );

  Future<void> call(NotificationEntityModel param) async {
    final id = param.id;
    if (id == null) throw Exception('id is null!');

    await notificationService.update(param);

    await alarmService.update(
      id: id,
      startAt: param.startDate,
      duration: Duration(seconds: param.interval),
      title: param.title,
      body: param.body,
    );
  }
}
