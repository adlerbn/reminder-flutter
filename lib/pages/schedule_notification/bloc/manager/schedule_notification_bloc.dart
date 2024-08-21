import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reminder/core/log/logger.dart';
import 'package:reminder/core/usecases/delete_schedule_notification_usecase.dart';
import 'package:reminder/core/usecases/get_schedule_notification_list_usecase.dart';
import 'package:reminder/models/notification_entity_model.dart';

part 'schedule_notification_bloc.freezed.dart';
part 'schedule_notification_event.dart';
part 'schedule_notification_state.dart';

@injectable
class ScheduleNotificationBloc
    extends Bloc<ScheduleNotificationEvent, ScheduleNotificationState> {
  final GetScheduleNotificationListUsecase _getScheduleNotificationListUsecase;
  final DeleteScheduleNotificationUseCase _deleteScheduleNotificationUseCase;

  ScheduleNotificationBloc(
    this._getScheduleNotificationListUsecase,
    this._deleteScheduleNotificationUseCase,
  ) : super(ScheduleNotificationState.loading()) {
    on<Fetch>(_fetchEvent);
    on<Remove>(_removeEvent);
  }

  FutureOr _fetchEvent(
    Fetch event,
    Emitter<ScheduleNotificationState> emit,
  ) async {
    emit(ScheduleNotificationState.loading());

    await _getScheduleNotificationListUsecase().then(
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
    await _deleteScheduleNotificationUseCase(event.entity).then(
      (_) async {
        logger.i('Schedule notification deleted');

        await _getScheduleNotificationListUsecase().then(
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
