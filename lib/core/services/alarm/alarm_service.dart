abstract class AlarmService {
  Future<void> create({
    required int id,
    DateTime? startAt,
    required Duration duration,
    required String title,
    String? body,
  });

  Future<void> cancel(int id);

  Future<void> update({
    required int id,
    DateTime? startAt,
    required Duration duration,
    required String title,
    String? body,
  });
}
