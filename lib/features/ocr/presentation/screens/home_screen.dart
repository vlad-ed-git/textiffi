import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:textiffi/core/presentation/widgets/app_texts.dart';
import 'package:textiffi/core/utils/context_ext.dart';
import 'package:textiffi/features/ocr/presentation/state/ocr_bloc.dart';
import 'package:textiffi/features/ocr/presentation/widgets/get_started_ui.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // BLoC instance for handling state and events
  OcrBloc? _stateHandler;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: H6(
          context.translated.app_title,
          color: context.color.onPrimary,
        ),
        backgroundColor: context.color.primary,
      ),
      body: BlocProvider(
        lazy: false, // Create the BLoC instance immediately
        create: (BuildContext blocProviderContext) => GetIt.instance<OcrBloc>(),
        child: BlocListener<OcrBloc, OcrState>(
          listener: _listenToStateChange,
          child: BlocBuilder<OcrBloc, OcrState>(builder: (blocContext, state) {
            _initializeStateHandlerIfNotInit(blocContext);
            return GetStartedUi(
              onClickGetStartedBtn: _onClickGetStartedBtn,
              isLoading: state is LoadingState,
            );
          }),
        ),
      ),
    );
  }

  /// Initializes the [_stateHandler] if it hasn't been set yet.
  void _initializeStateHandlerIfNotInit(BuildContext blocContext) {
    _stateHandler ??= BlocProvider.of<OcrBloc>(blocContext);
  }

  /// Handles the click event on the "Get Started" button.
  ///* Adds a `RequestCameraPermissionEvent` to the `OcrBloc` to trigger the process of requesting camera permissions from the user.
  void _onClickGetStartedBtn() {
    _stateHandler?.add(RequestCameraPermissionEvent());
  }

  /// Listens to state changes from the `OcrBloc`.
  void _listenToStateChange(BuildContext context, OcrState state) {
    if (state is OnCameraPermissionsDeniedState) {
      context.showErrorSnack(context.translated.camera_permissions_error);
    }
    if (state is OnCameraPermissionsGrantedState) {}
  }
}
