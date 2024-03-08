part of 'ocr_bloc.dart';

abstract class OcrEvent extends Equatable {
  const OcrEvent();
}

class RequestCameraPermissionEvent extends OcrEvent {
  @override
  List<Object> get props => [];
}

class GetPhotoFromCameraEvent extends OcrEvent {
  @override
  List<Object> get props => [];
}

class StartRecognitionEvent extends OcrEvent {
  final Uint8List? recentPhoto;
  StartRecognitionEvent(this.recentPhoto);

  @override
  List<Object> get props => [];
}
