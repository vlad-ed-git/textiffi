import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:textiffi/core/utils/dartz_ext.dart';
import 'package:textiffi/features/ocr/domain/entities/ocr_permissions.dart';
import 'package:textiffi/features/ocr/domain/usecases/ocr_usecases.dart';

part 'ocr_event.dart';
part 'ocr_state.dart';

class OcrBloc extends Bloc<OcrEvent, OcrState> {
  final RequestPermissionsUseCase _requestPermissionsUseCase;
  OcrBloc(this._requestPermissionsUseCase,) : super(OcrInitial()) {
    on<RequestCameraPermissionEvent>(_onRequestCameraPermissionEvent);
  }

  FutureOr<void> _onRequestCameraPermissionEvent(RequestCameraPermissionEvent event, Emitter<OcrState> emit) async{
    emit(LoadingState());
    final result = await _requestPermissionsUseCase(OcrPermissions.camera);
    if(result.isError || !result.asSuccess())
      emit(OnCameraPermissionsDeniedState());
    else
      emit(OnCameraPermissionsGrantedState());
  }
}
