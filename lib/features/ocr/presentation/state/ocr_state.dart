part of 'ocr_bloc.dart';

abstract class OcrState extends Equatable {
  const OcrState();
}

class OcrInitial extends OcrState {
  @override
  List<Object> get props => [];
}

class LoadingState extends OcrState {
  @override
  List<Object> get props => [];
}

class CameraPermissionsDeniedState extends OcrState {
  @override
  List<Object> get props => [];
}

class CameraPermissionsGrantedState extends OcrState {
  @override
  List<Object> get props => [];
}

class FailedToTakePhotoState extends OcrState {
  @override
  List<Object> get props => [];
}

class PhotoTakenState  extends OcrState {
  final Uint8List imageBytes;
  PhotoTakenState(this.imageBytes);

  @override
  List<Object> get props => [];
}
