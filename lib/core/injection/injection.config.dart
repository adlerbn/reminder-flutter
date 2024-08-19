// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:reminder/core/services/notification_manager.dart' as _i56;
import 'package:reminder/core/services/notification_service.dart' as _i917;
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
    gh.factory<_i56.NotificationManager>(() => _i56.NotificationManager());
    gh.factory<_i917.NotificationService>(() => _i917.NotificationService());
    gh.factory<_i579.CreateScheduleNotificationBloc>(
        () => _i579.CreateScheduleNotificationBloc(
              gh<_i917.NotificationService>(),
              gh<_i56.NotificationManager>(),
            ));
    gh.factoryParam<_i178.EditScheduleNotificationBloc,
        _i398.NotificationEntityModel, dynamic>((
      model,
      _,
    ) =>
        _i178.EditScheduleNotificationBloc(
          model,
          gh<_i917.NotificationService>(),
          gh<_i56.NotificationManager>(),
        ));
    gh.factory<_i196.SimpleNotificationBloc>(() => _i196.SimpleNotificationBloc(
          gh<_i56.NotificationManager>(),
          gh<_i917.NotificationService>(),
        ));
    gh.factory<_i673.ScheduleNotificationBloc>(
        () => _i673.ScheduleNotificationBloc(
              gh<_i56.NotificationManager>(),
              gh<_i917.NotificationService>(),
            ));
    return this;
  }
}
