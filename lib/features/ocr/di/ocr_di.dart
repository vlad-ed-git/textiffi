import 'package:get_it/get_it.dart';
import 'package:textiffi/features/ocr/data/repository/ocr_repository_impl.dart';
import 'package:textiffi/features/ocr/domain/repository/ocr_repository.dart';
import 'package:textiffi/features/ocr/domain/usecases/ocr_usecases.dart';
import 'package:textiffi/features/ocr/presentation/state/ocr_bloc.dart';

/// Initializes the dependency injection container with required services for the ocr feature.
void init() {
  final GetIt di = GetIt.instance;
  di.registerLazySingleton<OCRRepository>(() => OCRRepositoryImpl(di()));
  di.registerFactory(() => RequestPermissionsUseCase(di()));
  di.registerFactory(() => GetPhotoFromCameraUseCase(di()));
  di.registerFactory(() => StartRecognitionUseCase(di()));
  di.registerFactory<OcrBloc>(() => OcrBloc(
        di(),
        di(),
        di(),
      ));
}
