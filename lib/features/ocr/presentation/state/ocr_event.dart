part of 'ocr_bloc.dart';

abstract class OcrEvent extends Equatable {
  const OcrEvent();
}

class RequestCameraPermissionEvent extends OcrEvent {
  @override
  List<Object> get props => [];
}