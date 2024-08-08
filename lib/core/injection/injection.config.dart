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
import 'package:reminder/pages/create_notification/bloc/create_notification_bloc.dart'
    as _i53;
import 'package:reminder/pages/notification/bloc/notification_bloc.dart'
    as _i741;

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
    gh.factory<_i917.NotificationService>(() => _i917.NotificationService());
    gh.factory<_i56.NotificationManager>(() => _i56.NotificationManager());
    gh.factory<_i53.CreateNotificationBloc>(() => _i53.CreateNotificationBloc(
          gh<_i917.NotificationService>(),
          gh<_i56.NotificationManager>(),
        ));
    gh.factory<_i741.NotificationBloc>(() => _i741.NotificationBloc(
          gh<_i56.NotificationManager>(),
          gh<_i917.NotificationService>(),
        ));
    return this;
  }
}
