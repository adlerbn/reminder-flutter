import 'package:injectable/injectable.dart';
import 'package:reminder/core/services/alarm/alarm_service.dart';
import 'package:reminder/core/services/notification/notification_service.dart';
import 'package:reminder/models/notification_entity_model.dart';

@injectable
class CreateScheduleNotificationUseCase {
  final AlarmService alarmService;
  final NotificationService notificationService;

  CreateScheduleNotificationUseCase(
    this.alarmService,
    this.notificationService,
  );

  Future<void> call(NotificationEntityModel param) async {
    final id = await notificationService.insert(param);

    await alarmService.create(
      id: id,
      startAt: param.startDate,
      duration: Duration(seconds: param.interval),
      title: param.title,
      body: param.body,
    );
  }
}
