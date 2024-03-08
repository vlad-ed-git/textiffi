import 'package:dartz/dartz.dart';
import 'package:textiffi/core/error_handling/domain/entities/failure.dart';
import 'package:textiffi/features/ocr/data/repository/models/ocr_failure.dart';
import 'package:textiffi/features/ocr/domain/entities/ocr_permissions.dart';
import 'package:textiffi/features/ocr/domain/repository/ocr_repository.dart';

class OCRRepositoryImpl implements OCRRepository{

  @override
  Future<Either<Failure, bool>> requestPermissions(OcrPermissions permission) async{
      return Left(PermissionsGrantingFailed());
  }

}