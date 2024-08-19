import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reminder/core/log/logger.dart';
import 'package:reminder/core/services/notification_manager.dart';
import 'package:reminder/core/services/notification_service.dart';
import 'package:reminder/models/frequency_type.dart';
import 'package:reminder/models/notification_entity_model.dart';

part 'edit_notification_bloc.freezed.dart';
part 'edit_notification_event.dart';
part 'edit_notification_state.dart';

@injectable
class EditScheduleNotificationBloc
    extends Bloc<EditScheduleNotificationEvent, EditScheduleNotificationState> {
  final NotificationService service;
  final NotificationManager manager;

  EditScheduleNotificationBloc(
    @factoryParam NotificationEntityModel model,
    this.service,
    this.manager,
  ) : super(EditScheduleNotificationState(
          model: model,
          tempModel: model,
        )) {
    on<ChangeTitle>(_changeTitleEvent);
    on<ChangeBody>(_changeBodyEvent);
    on<ChangeStartDate>(_changeStartDateEvent);
    on<ChangeFrequencyType>(_changeFrequencyTypeEvent);
    on<ChangeFrequencyAmount>(_changeFrequencyAmountEvent);
    on<SaveNotification>(_saveEvent);
  }

  FutureOr _changeTitleEvent(
    ChangeTitle event,
    Emitter<EditScheduleNotificationState> emit,
  ) async {
    emit(state.copyWith(
        tempModel: state.tempModel.copyWith(title: event.title)));
  }

  FutureOr _changeBodyEvent(
    ChangeBody event,
    Emitter<EditScheduleNotificationState> emit,
  ) async {
    emit(state.copyWith(tempModel: state.tempModel.copyWith(body: event.body)));
  }

  FutureOr _changeStartDateEvent(
    ChangeStartDate event,
    Emitter<EditScheduleNotificationState> emit,
  ) async {
    emit(state.copyWith(
        tempModel: state.tempModel.copyWith(startDate: event.startDate)));
  }

  FutureOr _changeFrequencyTypeEvent(
    ChangeFrequencyType event,
    Emitter<EditScheduleNotificationState> emit,
  ) async {
    emit(state.copyWith(
        tempModel:
            state.tempModel.copyWith(frequencyType: event.frequencyType)));
  }

  FutureOr _changeFrequencyAmountEvent(
    ChangeFrequencyAmount event,
    Emitter<EditScheduleNotificationState> emit,
  ) async {
    emit(state.copyWith(
        tempModel:
            state.tempModel.copyWith(frequencyAmount: event.frequencyAmount)));
  }

  FutureOr _saveEvent(
    SaveNotification event,
    Emitter<EditScheduleNotificationState> emit,
  ) async {
    final id = state.tempModel.id;
    if (id == null) return;

    await service.update(state.tempModel);
    await manager.cancelSchedule(id);

    final payload = state.tempModel.toMap();

    await manager
        .showSchedule(
      id: id,
      title: state.tempModel.title,
      body: state.tempModel.body,
      date: state.tempModel.startDate,
      payload: payload,
    )
        .then(
      (_) {
        logger.i('Schedule notification edited');
      },
    ).onError(
      (error, stackTrace) {
        logger.e(
          'Edit schedule notification failed',
          error: error,
          stackTrace: stackTrace,
        );
      },
    );
  }
}
