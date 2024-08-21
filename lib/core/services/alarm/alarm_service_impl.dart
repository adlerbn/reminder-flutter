import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:reminder/core/services/alarm/alarm_service.dart';
import 'package:reminder/core/services/notification/notification_manager.dart';

@Injectable(as: AlarmService)
class AlarmServiceImpl extends AlarmService {
  final NotificationManager manager;

  AlarmServiceImpl(this.manager);

  @override
  Future<void> create({
    required int id,
    DateTime? startAt,
    required Duration duration,
    required String title,
    String? body,
    bool hasStarted = false,
  }) async {
    await AndroidAlarmManager.periodic(
      duration,
      id,
      callbackAction,
      rescheduleOnReboot: true,
      allowWhileIdle: true,
      exact: true,
      wakeup: true,
      params: {
        'title': title,
        'body': body,
      },
      startAt: startAt,
    );
  }

  @override
  Future<void> cancel(int id) async {
    await AndroidAlarmManager.cancel(id);

    await manager.cancel(id);
  }

  @override
  Future<void> update({
    required int id,
    DateTime? startAt,
    required Duration duration,
    required String title,
    String? body,
  }) async {
    await cancel(id);

    await create(
      id: id,
      duration: duration,
      title: title,
      body: body,
      startAt: startAt,
    );
  }
}

@pragma('vm:entry-point')
void callbackAction(int id, Map<String, dynamic> params) async {
  await NotificationManager().show(
    title: params['title'],
    body: params['body'],
  );
}
