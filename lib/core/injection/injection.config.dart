// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:reminder/core/services/alarm/alarm_service.dart' as _i5;
import 'package:reminder/core/services/alarm/alarm_service_impl.dart' as _i860;
import 'package:reminder/core/services/notification/notification_manager.dart'
    as _i102;
import 'package:reminder/core/services/notification/notification_service.dart'
    as _i212;
import 'package:reminder/core/usecases/create_notification_usecase.dart'
    as _i438;
import 'package:reminder/core/usecases/create_schedule_notification_usecase.dart'
    as _i622;
import 'package:reminder/core/usecases/delete_schedule_notification_usecase.dart'
    as _i173;
import 'package:reminder/core/usecases/get_schedule_notification_list_usecase.dart'
    as _i205;
import 'package:reminder/core/usecases/request_notification_permission_usecase.dart'
    as _i249;
import 'package:reminder/core/usecases/update_schedule_notification_usecase.dart'
    as _i798;
import 'package:reminder/models/notification_entity_model.dart' as _i398;
import 'package:reminder/pages/schedule_notification/bloc/create/create_notification_bloc.dart'
    as _i579;
import 'package:reminder/pages/schedule_notification/bloc/edit/edit_notification_bloc.dart'
    as _i178;
import 'package:reminder/pages/schedule_notification/bloc/manager/schedule_notification_bloc.dart'
    as _i673;
import 'package:reminder/pages/simple_notification/bloc/simple_notification_bloc.dart'
    as _i196;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i102.NotificationManager>(() => _i102.NotificationManager());
    gh.factory<_i212.NotificationService>(() => _i212.NotificationService());
    gh.factory<_i205.GetScheduleNotificationListUsecase>(() =>
        _i205.GetScheduleNotificationListUsecase(
            gh<_i212.NotificationService>()));
    gh.factory<_i249.RequestNotificationPermissionUsecase>(() =>
        _i249.RequestNotificationPermissionUsecase(
            gh<_i102.NotificationManager>()));
    gh.factory<_i438.CreateNotificationUsecase>(
        () => _i438.CreateNotificationUsecase(gh<_i102.NotificationManager>()));
    gh.factory<_i5.AlarmService>(
        () => _i860.AlarmServiceImpl(gh<_i102.NotificationManager>()));
    gh.factory<_i622.CreateScheduleNotificationUseCase>(
        () => _i622.CreateScheduleNotificationUseCase(
              gh<_i5.AlarmService>(),
              gh<_i212.NotificationService>(),
            ));
    gh.factory<_i798.UpdateScheduleNotificationUseCase>(
        () => _i798.UpdateScheduleNotificationUseCase(
              gh<_i5.AlarmService>(),
              gh<_i212.NotificationService>(),
            ));
    gh.factory<_i173.DeleteScheduleNotificationUseCase>(
        () => _i173.DeleteScheduleNotificationUseCase(
              gh<_i5.AlarmService>(),
              gh<_i212.NotificationService>(),
            ));
    gh.factoryParam<_i178.EditScheduleNotificationBloc,
        _i398.NotificationEntityModel, dynamic>((
      model,
      _,
    ) =>
        _i178.EditScheduleNotificationBloc(
          model,
          gh<_i798.UpdateScheduleNotificationUseCase>(),
        ));
    gh.factory<_i673.ScheduleNotificationBloc>(
        () => _i673.ScheduleNotificationBloc(
              gh<_i205.GetScheduleNotificationListUsecase>(),
              gh<_i173.DeleteScheduleNotificationUseCase>(),
            ));
    gh.factory<_i196.SimpleNotificationBloc>(() => _i196.SimpleNotificationBloc(
          gh<_i249.RequestNotificationPermissionUsecase>(),
          gh<_i438.CreateNotificationUsecase>(),
        ));
    gh.factory<_i579.CreateScheduleNotificationBloc>(
        () => _i579.CreateScheduleNotificationBloc(
              gh<_i249.RequestNotificationPermissionUsecase>(),
              gh<_i622.CreateScheduleNotificationUseCase>(),
            ));
    return this;
  }
}
