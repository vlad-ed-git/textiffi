import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:textiffi/core/error_handling/domain/entities/failure.dart';
import 'package:textiffi/features/ocr/domain/entities/ocr_permissions.dart';

abstract class OCRRepository {
  /// Requests the specified OCR [permission] from the system.

  ///* Returns a [Future] that completes with an [Either] containing a [Failure] if the request failed, or `true` if the permission was successfully granted.
  Future<Either<Failure, bool>> requestPermissions(OcrPermissions permission);

  /// Captures an image using the camera.
  ///* Returns a [Future] that completes with an [Either] containing a [Failure] if the request failed, or a [Uint8List] representing the captured image data if successful
  Future<Either<Failure, Uint8List>> takeCameraPhoto();

  /// Starts text recognition given image [imageBytes]
  ///* Returns a [Future] that completes with an [Either] containing a [Failure] if the request failed, or the recognized text as a `List` of `String`s
  Future<Either<Failure, List<String>>> startRecognition(Uint8List imageBytes);
}
