import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reminder/core/log/logger.dart';
import 'package:reminder/core/usecases/create_schedule_notification_usecase.dart';
import 'package:reminder/core/usecases/request_notification_permission_usecase.dart';
import 'package:reminder/models/frequency_type.dart';
import 'package:reminder/models/notification_entity_model.dart';

part 'create_notification_bloc.freezed.dart';
part 'create_notification_event.dart';
part 'create_notification_state.dart';

@injectable
class CreateScheduleNotificationBloc extends Bloc<
    CreateScheduleNotificationEvent, CreateScheduleNotificationState> {
  final RequestNotificationPermissionUsecase
      _requestNotificationPermissionUsecase;
  final CreateScheduleNotificationUseCase _createScheduleNotificationUseCase;

  CreateScheduleNotificationBloc(
    this._requestNotificationPermissionUsecase,
    this._createScheduleNotificationUseCase,
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
    await _requestNotificationPermissionUsecase();

    final notification = NotificationEntityModel(
      title: state.title,
      body: state.body,
      startDate: state.startDate,
      frequencyType: state.frequencyType,
      frequencyAmount: state.frequencyAmount,
    );

    await _createScheduleNotificationUseCase(notification).then(
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
