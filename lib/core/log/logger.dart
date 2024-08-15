import 'package:logger/logger.dart';

late final Logger logger;

Future<void> configureLogger() async {
  logger = Logger();
}
