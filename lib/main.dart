import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reminder/application/app.dart';
import 'package:reminder/core/db/database.dart';
import 'package:reminder/core/injection/injection.dart';
import 'package:reminder/core/log/logger.dart';
import 'package:reminder/core/services/notification/notification_manager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AndroidAlarmManager.initialize();
  await NotificationManager.initialize();
  await configureFullScreen();
  await configureSystemUIOverlayStyle();
  await configureDependencies();
  await initializeDatabase();
  await configureLogger();

  runApp(const App());
}

Future<void> configureFullScreen() async {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
}

Future<void> configureSystemUIOverlayStyle() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
      statusBarColor: Colors.transparent,
    ),
  );
}
