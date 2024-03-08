import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:textiffi/core/error_handling/di/init.dart' as core_di;
import 'package:textiffi/core/error_handling/domain/repository/log_errors.dart';
import 'package:textiffi/features/ocr/di/ocr_di.dart' as ocr_di;

class MainInit {
  static Future<void> init() async {
    await _initDependencies();
    MainInit().registerErrorHandlers();
  }

  void registerErrorHandlers() {
    FlutterError.onError = (FlutterErrorDetails details) {
      GetIt.I<LogErrors>().log(
        callerClass: 'MainInit',
        callerMethod: 'registerErrorHandlers',
        error: 'FlutterError.onError caught an error',
        stackTrace: details.stack,
        logToServer: true,
      );
      // In development mode simply print to console.
      if (kDebugMode) {
        FlutterError.dumpErrorToConsole(details);
      }
    };

    // register errors from underlying platform
    PlatformDispatcher.instance.onError = (error, stack) {
      GetIt.I<LogErrors>().log(
        callerClass: 'MainInit',
        callerMethod: 'registerErrorHandlers',
        error: 'PlatformDispatcher.instance.onError caught an error $error',
        stackTrace: stack,
        logToServer: true,
      );
      return true;
    };
  }

  static Future<void> _initDependencies() async {
    core_di.init();
    ocr_di.init();
  }

  static void dispose() {
    // for any dispose work needed to be done on app disposed | note that this is not a async method
  }
}
