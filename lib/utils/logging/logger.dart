
import 'package:logger/logger.dart';

class ThLoggerHelper{
  static final Logger _logger = Logger(
    printer: PrettyPrinter(),
    level: Level.debug,  //we can xustomize the log levels 
  );

static void debug(String message){
  _logger.d(message);
}
static void info(String message){
  _logger.i(message);
}
static void warning(String message){
  _logger.w(message);
}
static void error(String message,[dynamic error]){
  _logger.d(message,error: error, stackTrace: StackTrace.current);
}
}