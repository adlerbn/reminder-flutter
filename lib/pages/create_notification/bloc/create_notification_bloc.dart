import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reminder/core/services/notification_manager.dart';
import 'package:reminder/core/services/notification_service.dart';
import 'package:reminder/models/frequency_type.dart';
import 'package:reminder/models/notification_entity_model.dart';

part 'create_notification_bloc.freezed.dart';
part 'create_notification_event.dart';
part 'create_notification_state.dart';

@injectable
class CreateNotificationBloc
    extends Bloc<CreateNotificationEvent, CreateNotificationState> {
  final NotificationService service;
  final NotificationManager manager;

  CreateNotificationBloc(
    this.service,
    this.manager,
  ) : super(CreateNotificationState.init()) {
    on<ChangeName>(_changeNameEvent);
    on<ChangeStartDate>(_changeStartDateEvent);
    on<ChangeFrequencyType>(_changeFrequencyTypeEvent);
    on<ChangeFrequencyAmount>(_changeFrequencyAmountEvent);
    on<SaveNotification>(_saveEvent);
  }

  FutureOr _changeNameEvent(
    ChangeName event,
    Emitter<CreateNotificationState> emit,
  ) async {
    emit(state.copyWith(name: event.name));
  }

  FutureOr _changeStartDateEvent(
    ChangeStartDate event,
    Emitter<CreateNotificationState> emit,
  ) async {
    emit(state.copyWith(startDate: event.startDate));
  }

  FutureOr _changeFrequencyTypeEvent(
    ChangeFrequencyType event,
    Emitter<CreateNotificationState> emit,
  ) async {
    emit(state.copyWith(frequencyType: event.frequencyType));
  }

  FutureOr _changeFrequencyAmountEvent(
    ChangeFrequencyAmount event,
    Emitter<CreateNotificationState> emit,
  ) async {
    emit(state.copyWith(frequencyAmount: event.frequencyAmount));
  }

  FutureOr _saveEvent(
    SaveNotification event,
    Emitter<CreateNotificationState> emit,
  ) async {
    final interval = state.frequencyAmount * state.frequencyType.toSeconds();
    final notification = NotificationEntityModel(
      name: state.name,
      startDate: state.startDate,
      frequencyType: state.frequencyType,
      frequencyAmount: state.frequencyAmount,
    );

    final id = await service.insert(notification);

    await manager.create(
      id: id,
      interval: interval,
    );
  }
}
