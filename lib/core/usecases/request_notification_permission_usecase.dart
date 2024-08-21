import 'package:injectable/injectable.dart';
import 'package:reminder/core/services/notification/notification_manager.dart';

@injectable
class RequestNotificationPermissionUsecase {
  final NotificationManager notificationManager;

  RequestNotificationPermissionUsecase(
    this.notificationManager,
  );

  Future<void> call() async {
    return notificationManager.requestPermission();
  }
}
