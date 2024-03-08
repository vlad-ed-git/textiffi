import 'package:flutter/material.dart';
import 'package:textiffi/core/presentation/widgets/app_texts.dart';
import 'package:textiffi/core/utils/context_ext.dart';
import 'package:textiffi/features/ocr/presentation/widgets/get_started_ui.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: H6(
          context.translated.app_title,
          color: context.color.onPrimary,
        ),
        backgroundColor: context.color.primary,
      ),
      body: GetStartedUi(
        onClickGetStartedBtn: _onClickGetStartedBtn,
      ),
    );
  }

  void _onClickGetStartedBtn() {
      // request camera permissions
      // go to camera
  }
}
