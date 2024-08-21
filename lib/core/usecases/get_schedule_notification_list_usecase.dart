import 'package:injectable/injectable.dart';
import 'package:reminder/core/services/notification/notification_service.dart';
import 'package:reminder/models/notification_entity_model.dart';

@injectable
class GetScheduleNotificationListUsecase {
  final NotificationService notificationService;

  GetScheduleNotificationListUsecase(
    this.notificationService,
  );

  Future<List<NotificationEntityModel>> call() async {
    return notificationService.getList();
  }
}
