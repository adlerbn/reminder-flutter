import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder/core/injection/injection.dart';
import 'package:reminder/pages/home/presentation/home_page.dart';
import 'package:reminder/pages/schedule_notification/bloc/create/create_notification_bloc.dart';
import 'package:reminder/pages/schedule_notification/bloc/manager/schedule_notification_bloc.dart';
import 'package:reminder/pages/schedule_notification/presentation/create_schedule_notification_page.dart';
import 'package:reminder/pages/schedule_notification/presentation/schedule_notification_page.dart';
import 'package:reminder/pages/simple_notification/bloc/simple_notification_bloc.dart';
import 'package:reminder/pages/simple_notification/presentation/simple_notification_page.dart';

class App extends StatelessWidget {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // The navigator key is necessary to allow to navigate through static methods
      navigatorKey: navigatorKey,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.redAccent,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorSchemeSeed: Colors.redAccent,
      ),
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => const HomePage());

          case '/simple-notification-page':
            return MaterialPageRoute(builder: (context) {
              final receivedAction = settings.arguments as ReceivedAction?;

              return BlocProvider(
                create: (context) => locator<SimpleNotificationBloc>(),
                child: SimpleNotificationPage(receivedAction: receivedAction),
              );
            });

          case '/schedule-notification-page':
            return MaterialPageRoute(builder: (context) {
              final receivedAction = settings.arguments as ReceivedAction?;

              return BlocProvider(
                create: (context) => locator<ScheduleNotificationBloc>()
                  ..add(ScheduleNotificationEvent.fetch()),
                child: ScheduleNotificationPage(receivedAction: receivedAction),
              );
            });

          case '/schedule-notification-page/create-notification-page':
            return MaterialPageRoute(builder: (context) {
              return BlocProvider(
                create: (context) => locator<CreateScheduleNotificationBloc>(),
                child: CreateScheduleNotificationPage(),
              );
            });

          default:
            assert(false, 'Page ${settings.name} not found');
            return null;
        }
      },
    );
  }
}
