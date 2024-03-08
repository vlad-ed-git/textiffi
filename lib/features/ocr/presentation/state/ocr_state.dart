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

class OnCameraPermissionsDeniedState extends OcrState {
  @override
  List<Object> get props => [];
}

class OnCameraPermissionsGrantedState extends OcrState {
  @override
  List<Object> get props => [];
}
