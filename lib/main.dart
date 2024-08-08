import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reminder/application/app.dart';
import 'package:reminder/core/db/database.dart';
import 'package:reminder/core/injection/injection.dart';
import 'package:reminder/core/services/notification_manager.dart';

Future<void> main() async {
  await NotificationManager.initialize();
  await configureFullScreen();
  await configureSystemUIOverlayStyle();
  await configureDependencies();
  await initializeDatabase();

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
