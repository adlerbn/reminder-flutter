import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reminder/core/log/logger.dart';
import 'package:reminder/core/services/notification_manager.dart';
import 'package:reminder/core/services/notification_service.dart';
import 'package:reminder/models/frequency_type.dart';
import 'package:reminder/models/notification_entity_model.dart';

part 'create_notification_bloc.freezed.dart';
part 'create_notification_event.dart';
part 'create_notification_state.dart';

@injectable
class CreateScheduleNotificationBloc extends Bloc<
    CreateScheduleNotificationEvent, CreateScheduleNotificationState> {
  final NotificationService service;
  final NotificationManager manager;

  CreateScheduleNotificationBloc(
    this.service,
    this.manager,
  ) : super(CreateScheduleNotificationState.init()) {
    on<ChangeTitle>(_changeTitleEvent);
    on<ChangeBody>(_changeBodyEvent);
    on<ChangeStartDate>(_changeStartDateEvent);
    on<ChangeFrequencyType>(_changeFrequencyTypeEvent);
    on<ChangeFrequencyAmount>(_changeFrequencyAmountEvent);
    on<SaveNotification>(_saveEvent);
  }

  FutureOr _changeTitleEvent(
    ChangeTitle event,
    Emitter<CreateScheduleNotificationState> emit,
  ) async {
    emit(state.copyWith(title: event.title));
  }

  FutureOr _changeBodyEvent(
    ChangeBody event,
    Emitter<CreateScheduleNotificationState> emit,
  ) async {
    emit(state.copyWith(body: event.body));
  }

  FutureOr _changeStartDateEvent(
    ChangeStartDate event,
    Emitter<CreateScheduleNotificationState> emit,
  ) async {
    emit(state.copyWith(startDate: event.startDate));
  }

  FutureOr _changeFrequencyTypeEvent(
    ChangeFrequencyType event,
    Emitter<CreateScheduleNotificationState> emit,
  ) async {
    emit(state.copyWith(frequencyType: event.frequencyType));
  }

  FutureOr _changeFrequencyAmountEvent(
    ChangeFrequencyAmount event,
    Emitter<CreateScheduleNotificationState> emit,
  ) async {
    emit(state.copyWith(frequencyAmount: event.frequencyAmount));
  }

  FutureOr _saveEvent(
    SaveNotification event,
    Emitter<CreateScheduleNotificationState> emit,
  ) async {
    final notification = NotificationEntityModel(
      title: state.title,
      body: state.body,
      startDate: state.startDate,
      frequencyType: state.frequencyType,
      frequencyAmount: state.frequencyAmount,
    );

    final id = await service.insert(notification);
    final payload = notification.copyWith(id: id).toMap();

    await manager
        .showSchedule(
      id: id,
      title: state.title,
      body: state.body,
      date: state.startDate,
      payload: payload,
    )
        .then(
      (_) {
        logger.i('Schedule notification created');
      },
    ).onError(
      (error, stackTrace) {
        logger.e(
          'Create schedule notification failed',
          error: error,
          stackTrace: stackTrace,
        );
      },
    );
  }
}
