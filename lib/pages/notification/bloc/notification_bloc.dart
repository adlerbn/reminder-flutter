import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reminder/core/services/notification_manager.dart';
import 'package:reminder/core/services/notification_service.dart';
import 'package:reminder/models/notification_entity_model.dart';

part 'notification_bloc.freezed.dart';
part 'notification_event.dart';
part 'notification_state.dart';

@injectable
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final NotificationManager manager;
  final NotificationService service;

  NotificationBloc(
    this.manager,
    this.service,
  ) : super(NotificationState.loading()) {
    on<Fetch>(_fetchEvent);
  }

  FutureOr _fetchEvent(
    Fetch event,
    Emitter<NotificationState> emit,
  ) async {
    await manager.requestPermission();

    emit(NotificationState.loading());

    try {
      final list = await service.getList();

      emit(NotificationState.success(list: list));
    } catch (e) {
      emit(NotificationState.error(error: e.toString()));
    }
  }
}
