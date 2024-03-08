/// Abstract base class for logging errors with caller information.
abstract class LogErrors {
  /// Logs an error with details about the caller.

  ///* [callerClass]: The name of the class where the error occurred.
  ///* [callerMethod]: The name of the method where the error occurred.
  ///* [error]: The exception object to be logged.
  ///* [stackTrace]: Optional stack trace associated with the error.
  ///* [logToServer]: Boolean flag indicating if the error should be logged to a remote server. Defaults to false.
  void log(
      {required String callerClass,
        required String callerMethod,
        required dynamic error,
        StackTrace? stackTrace,
        bool logToServer = false});
}
