import 'dart:async';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reminder/core/log/logger.dart';
import 'package:reminder/core/services/notification_manager.dart';
import 'package:reminder/core/services/notification_service.dart';

part 'simple_notification_bloc.freezed.dart';
part 'simple_notification_event.dart';
part 'simple_notification_state.dart';

@injectable
class SimpleNotificationBloc
    extends Bloc<SimpleNotificationEvent, SimpleNotificationState> {
  final NotificationManager manager;
  final NotificationService service;

  SimpleNotificationBloc(
    this.manager,
    this.service,
  ) : super(SimpleNotificationState()) {
    on<ShowNow>(_showNowEvent);
  }

  FutureOr _showNowEvent(
    ShowNow event,
    Emitter<SimpleNotificationState> emit,
  ) async {
    await manager.requestPermission();

    await manager.show(
        title: 'Simple notification',
        body: 'This is body',
        actionButtons: [
          NotificationActionButton(
            key: '1',
            label: 'Move to home',
            actionType: ActionType.KeepOnTop,
          ),
        ]).then(
      (_) {
        logger.i('Simple notification created');
      },
    ).onError(
      (error, stackTrace) {
        logger.e(
          'Show notification failed',
          error: error,
          stackTrace: stackTrace,
        );
      },
    );
  }
}
