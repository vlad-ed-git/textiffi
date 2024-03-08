import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:textiffi/core/presentation/widgets/action_button.dart';
import 'package:textiffi/core/presentation/widgets/app_texts.dart';
import 'package:textiffi/core/presentation/widgets/custom_in_memory_image.dart';
import 'package:textiffi/core/utils/context_ext.dart';

class PreviewImageUi extends StatelessWidget {
  final Uint8List image;
  final VoidCallback onClickStartRecognitionBtn, onClickRetakeBtn;
  final bool isLoading;
  final String textInImage;
  const PreviewImageUi({
    super.key,
    required this.onClickStartRecognitionBtn,
    required this.isLoading,
    required this.image,
    required this.onClickRetakeBtn,
    required this.textInImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth,
      height: context.screenHeight,
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 24,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Subtitle1(
              context.translated.preview_image_title,
              maxLines: 2,
              txtAlign: TextAlign.center,
            ),
            SizedBox(
              height: 12,
            ),
            Subtitle2(
              context.translated.preview_image_description,
              maxLines: 2,
              txtAlign: TextAlign.center,
            ),
            CustomInMemoryImage(image: image, height: null,),
            if(textInImage.isNotEmpty)
            SizedBox(
              height: 12,
            ),
            if(textInImage.isNotEmpty)
            P1(
              textInImage,
              isTruncated: false,
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ActionBtn(
                  bgColor: context.color.secondary,
                  onBgColor: context.color.onSecondary,
                  onClick: onClickRetakeBtn,
                  isLoading: isLoading,
                  child: BtnTxt(
                    context.translated.cancel_preview_image_button_label,
                    color: context.color.onSecondaryContainer,
                  ),
                ),
                SizedBox(
                  width: 24,
                ),
                ActionBtn(
                  bgColor: context.color.primary,
                  onBgColor: context.color.onPrimary,
                  onClick: onClickStartRecognitionBtn,
                  isLoading: isLoading,
                  child: BtnTxt(
                    context.translated.start_recognition_button_label,
                    color: context.color.onPrimary,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
