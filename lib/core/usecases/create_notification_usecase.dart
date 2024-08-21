import 'package:injectable/injectable.dart';
import 'package:reminder/core/services/notification/notification_manager.dart';

@injectable
class CreateNotificationUsecase {
  final NotificationManager notificationManager;

  CreateNotificationUsecase(
    this.notificationManager,
  );

  Future<void> call({
    required String title,
    required String body,
  }) async {
    await notificationManager.show(
      title: title,
      body: body,
    );
  }
}
