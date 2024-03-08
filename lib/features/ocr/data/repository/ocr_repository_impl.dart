import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:textiffi/core/error_handling/domain/entities/failure.dart';
import 'package:textiffi/core/error_handling/domain/repository/log_errors.dart';
import 'package:textiffi/features/ocr/data/repository/models/ocr_failure.dart';
import 'package:textiffi/features/ocr/domain/entities/ocr_permissions.dart';
import 'package:textiffi/features/ocr/domain/repository/ocr_repository.dart';

/// Concrete implementation of the OCR repository
class OCRRepositoryImpl implements OCRRepository{
  /// Service for logging errors.
  final LogErrors _logErrors;
  OCRRepositoryImpl(this._logErrors);

  @override
  Future<Either<Failure, bool>> requestPermissions(OcrPermissions permission) async{
      try{
        final status = await _toPermissions(permission).request();

        if(!status.isGranted)
          return Left(PermissionsGrantingFailed());

        return Right(true); // permission granted
      }on Exception catch(e,st){
        await _logErrors.log(
            callerClass: 'OCRRepositoryImpl',
            callerMethod: 'requestPermissions',
            error: e,
        stackTrace: st,
        );
        return Left(PermissionsGrantingFailed());
      }
  }

  /// Converts an app-specific [permission] to the corresponding package permission.
  Permission _toPermissions(OcrPermissions permission) {
    switch(permission){
      case OcrPermissions.camera:
        return Permission.camera;
    }
  }

  @override
  Future<Either<Failure, Uint8List>> takeCameraPhoto() async{
     try{
       final ImagePicker picker = ImagePicker();
       final XFile? photo = await picker.pickImage(source: ImageSource.camera);
       if(photo == null)
         return Left(TakingPhotoFailed());
       final bytes = await photo.readAsBytes();
       return Right(bytes);
     }on Exception catch(e,st){
       await _logErrors.log(
         callerClass: 'OCRRepositoryImpl',
         callerMethod: 'takeCameraPhoto',
         error: e,
         stackTrace: st,
       );
       return Left(TakingPhotoFailed());
     }
  }

}