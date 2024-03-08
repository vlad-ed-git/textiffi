import 'dart:async';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:textiffi/core/utils/dartz_ext.dart';
import 'package:textiffi/features/ocr/domain/entities/ocr_permissions.dart';
import 'package:textiffi/features/ocr/domain/usecases/ocr_usecases.dart';

part 'ocr_event.dart';
part 'ocr_state.dart';

class OcrBloc extends Bloc<OcrEvent, OcrState> {
  final RequestPermissionsUseCase _requestPermissionsUseCase;
  final GetPhotoFromCameraUseCase _getPhotoFromCameraUseCase;
  OcrBloc(this._requestPermissionsUseCase, this._getPhotoFromCameraUseCase,) : super(OcrInitial()) {
    on<RequestCameraPermissionEvent>(_onRequestCameraPermissionEvent);
    on<GetPhotoFromCameraEvent>(_onGetPhotoFromCameraEvent);
  }

  FutureOr<void> _onRequestCameraPermissionEvent(RequestCameraPermissionEvent event, Emitter<OcrState> emit) async{
    emit(LoadingState());
    final result = await _requestPermissionsUseCase(OcrPermissions.camera);
    if(result.isError || !result.asSuccess())
      emit(CameraPermissionsDeniedState());
    else
      emit(CameraPermissionsGrantedState());
  }

  FutureOr<void> _onGetPhotoFromCameraEvent(GetPhotoFromCameraEvent event, Emitter<OcrState> emit) async{
    emit(LoadingState());
    final result = await _getPhotoFromCameraUseCase();
    if(result.isError)
      emit(FailedToTakePhotoState());
    else
      emit(PhotoTakenState(result.asSuccess()));
  }
}
