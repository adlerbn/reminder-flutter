import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reminder/core/log/logger.dart';
import 'package:reminder/core/usecases/create_notification_usecase.dart';
import 'package:reminder/core/usecases/request_notification_permission_usecase.dart';

part 'simple_notification_bloc.freezed.dart';
part 'simple_notification_event.dart';
part 'simple_notification_state.dart';

@injectable
class SimpleNotificationBloc
    extends Bloc<SimpleNotificationEvent, SimpleNotificationState> {
  final RequestNotificationPermissionUsecase
      _requestNotificationPermissionUsecase;
  final CreateNotificationUsecase _createNotificationUsecase;

  SimpleNotificationBloc(
    this._requestNotificationPermissionUsecase,
    this._createNotificationUsecase,
  ) : super(SimpleNotificationState()) {
    on<ShowNow>(_showNowEvent);
  }

  FutureOr _showNowEvent(
    ShowNow event,
    Emitter<SimpleNotificationState> emit,
  ) async {
    await _requestNotificationPermissionUsecase();

    await _createNotificationUsecase(
      title: 'Simple notification',
      body: 'This is body',
    ).then(
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
