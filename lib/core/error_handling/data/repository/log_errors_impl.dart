import 'package:textiffi/core/error_handling/domain/repository/debug_print.dart';
import 'package:textiffi/core/error_handling/domain/repository/log_errors.dart';

class LogErrorsImpl implements LogErrors {
  @override
  void log(
      {required String callerClass,
        required String callerMethod,
        required dynamic error,
        StackTrace? stackTrace,
        bool logToServer = false}){
      kDebugPrint('$callerClass.$callerMethod\n'
          'Error: $error\n'
          'Stacktrace: $stackTrace\n');
      if(!logToServer)return;

      // TODO LOG TO SERVER IF REQUIRED
  }
}
