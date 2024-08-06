import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reminder/application/app.dart';
import 'package:reminder/service/notification_manager.dart';

Future<void> main() async {
  await NotificationManager.initialize();
  await configureFullScreen();
  await configureSystemUIOverlayStyle();

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
