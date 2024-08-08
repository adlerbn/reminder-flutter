part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  factory NotificationState.success({
    @Default([]) List<NotificationEntityModel> list,
  }) = _NotificationSuccessState;

  factory NotificationState.error({
    @Default('') String error,
  }) = _NotificationErrorState;

  factory NotificationState.loading() = _NotificationLoadingState;
}
