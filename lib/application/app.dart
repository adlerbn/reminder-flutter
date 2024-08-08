import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder/core/injection/injection.dart';
import 'package:reminder/core/services/notification_controller.dart';
import 'package:reminder/pages/create_notification/bloc/create_notification_bloc.dart';
import 'package:reminder/pages/create_notification/presentation/create_notification_page.dart';
import 'package:reminder/pages/home/presentation/home_page.dart';
import 'package:reminder/pages/notification/bloc/notification_bloc.dart';
import 'package:reminder/pages/notification/presentation/notification_page.dart';

class App extends StatefulWidget {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    // Only after at least the action method is set, the notification events are delivered
    AwesomeNotifications().setListeners(
      onActionReceivedMethod: NotificationController.onActionReceivedMethod,
      onNotificationCreatedMethod:
          NotificationController.onNotificationCreatedMethod,
      onNotificationDisplayedMethod:
          NotificationController.onNotificationDisplayedMethod,
      onDismissActionReceivedMethod:
          NotificationController.onDismissActionReceivedMethod,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // The navigator key is necessary to allow to navigate through static methods
      navigatorKey: App.navigatorKey,
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

          case '/notification-page':
            return MaterialPageRoute(builder: (context) {
              final receivedAction = settings.arguments as ReceivedAction?;

              return BlocProvider(
                create: (context) =>
                    locator<NotificationBloc>()..add(NotificationEvent.fetch()),
                child: NotificationPage(receivedAction: receivedAction),
              );
            });

          case '/notification-page/create-notification-page':
            return MaterialPageRoute(builder: (context) {
              return BlocProvider(
                create: (context) => locator<CreateNotificationBloc>(),
                child: const CreateNotificationPage(),
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
