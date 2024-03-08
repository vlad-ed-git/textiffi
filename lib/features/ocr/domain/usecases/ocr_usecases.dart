import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:textiffi/core/error_handling/domain/entities/failure.dart';
import 'package:textiffi/features/ocr/domain/entities/ocr_permissions.dart';
import 'package:textiffi/features/ocr/domain/repository/ocr_repository.dart';

/// Use case for requesting OCR related permissions from the system.
class RequestPermissionsUseCase {
  final OCRRepository _repository;
  RequestPermissionsUseCase(this._repository);

  /// Requests the specified OCR [permission] from the system.

  ///* Returns a [Future] that completes with an [Either] containing a [Failure] if the request failed, or `true` if the permission was successfully granted.
  Future<Either<Failure, bool>> call(OcrPermissions permission) async =>
      _repository.requestPermissions(permission);
}

class GetPhotoFromCameraUseCase {
  final OCRRepository _repository;
  GetPhotoFromCameraUseCase(this._repository);

  /// Captures an image using the camera.
  ///* Returns a [Future] that completes with an [Either] containing a [Failure] if the request failed, or a [Uint8List] representing the captured image data if successful
  Future<Either<Failure, Uint8List>> call() async =>
      _repository.takeCameraPhoto();
}

class StartRecognitionUseCase {
  final OCRRepository _repository;
  StartRecognitionUseCase(this._repository);

  /// Starts text recognition given image [imageBytes]
  ///* Returns a [Future] that completes with an [Either] containing a [Failure] if the request failed, or the recognized text as a `List` of `String`s
  Future<Either<Failure, List<String>>> call(Uint8List imageBytes) async =>
      _repository.startRecognition(imageBytes);
}
