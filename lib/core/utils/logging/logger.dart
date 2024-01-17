import 'package:logger/logger.dart';
class TLoggerHelper {
  static LogMode _logMode = LogMode.debug;

  static void init(LogMode mode) {
    TLoggerHelper._logMode = mode;
  }

  // print log according to LogMode live or debug
  static void log(dynamic data, {StackTrace? stackTrace}) {
    if (_logMode == LogMode.debug) {
      print("Error: $data$stackTrace");
    }
  }

  // new code functions
  // LogMode will be used later on below functions
  static final Logger _logger = Logger(
    printer: PrettyPrinter(),
    // Customize the log levels based on your needs
    level: Level.debug,
  );

  static void debug(String message) {
    _logger.d(message);
  }

  static void info(String message) {
    _logger.i(message);
  }

  static void warning(String message) {
    _logger.w(message);
  }

  static void error(String message, [dynamic error]) {
    _logger.e(message, error: error,  stackTrace: StackTrace.current);
  }

}

enum LogMode { debug, live }
