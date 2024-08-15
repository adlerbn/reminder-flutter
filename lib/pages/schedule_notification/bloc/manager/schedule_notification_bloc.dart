import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reminder/core/log/logger.dart';
import 'package:reminder/core/services/notification_manager.dart';
import 'package:reminder/core/services/notification_service.dart';
import 'package:reminder/models/notification_entity_model.dart';

part 'schedule_notification_bloc.freezed.dart';
part 'schedule_notification_event.dart';
part 'schedule_notification_state.dart';

@injectable
class ScheduleNotificationBloc
    extends Bloc<ScheduleNotificationEvent, ScheduleNotificationState> {
  final NotificationManager manager;
  final NotificationService service;

  ScheduleNotificationBloc(
    this.manager,
    this.service,
  ) : super(ScheduleNotificationState.loading()) {
    on<Fetch>(_fetchEvent);
    on<Remove>(_removeEvent);
  }

  FutureOr _fetchEvent(
    Fetch event,
    Emitter<ScheduleNotificationState> emit,
  ) async {
    await manager.requestPermission();

    emit(ScheduleNotificationState.loading());

    await service.getList().then(
      (value) {
        emit(ScheduleNotificationState.success(list: value));
      },
    ).onError(
      (error, stackTrace) {
        emit(ScheduleNotificationState.error(error: error.toString()));
      },
    );
  }

  FutureOr _removeEvent(
    Remove event,
    Emitter<ScheduleNotificationState> emit,
  ) async {
    final id = event.entity.id;
    if (id == null) return;
    await service.delete(id).then(
      (_) async {
        await manager.cancel(id);

        logger.i('Schedule notification deleted');

        await service.getList().then(
          (value) {
            emit(ScheduleNotificationState.success(list: value));
          },
        ).onError(
          (error, stackTrace) {
            logger.e(
              'Get schedule notification list failed',
              error: error,
              stackTrace: stackTrace,
            );

            emit(ScheduleNotificationState.error(error: error.toString()));
          },
        );
      },
    ).onError(
      (error, stackTrace) {
        logger.e(
          'Delete schedule notification failed',
          error: error,
          stackTrace: stackTrace,
        );

        emit(ScheduleNotificationState.error(error: error.toString()));
      },
    );
  }
}
