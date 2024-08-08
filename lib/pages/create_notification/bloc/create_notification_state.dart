part of 'create_notification_bloc.dart';

@freezed
class CreateNotificationState with _$CreateNotificationState {
  factory CreateNotificationState({
    @Default('') String name,
    required DateTime startDate,
    @Default(FrequencyType.none) FrequencyType frequencyType,
    @Default(1) int frequencyAmount,
  }) = _NotificationState;

  factory CreateNotificationState.init() {
    return CreateNotificationState(startDate: DateTime.now());
  }
}
