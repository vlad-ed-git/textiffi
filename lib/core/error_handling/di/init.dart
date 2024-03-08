import 'package:get_it/get_it.dart';
import 'package:textiffi/core/error_handling/data/repository/log_errors_impl.dart';
import 'package:textiffi/core/error_handling/domain/repository/log_errors.dart';

/// Initializes the dependency injection container with required services.
void init() {
  final GetIt di = GetIt.instance
    ..registerLazySingleton<LogErrors>(LogErrorsImpl.new);
}
