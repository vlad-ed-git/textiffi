import 'package:flutter/material.dart';
import 'package:textiffi/core/presentation/widgets/action_button.dart';
import 'package:textiffi/core/presentation/widgets/app_texts.dart';
import 'package:textiffi/core/utils/context_ext.dart';

class GetStartedUi extends StatelessWidget {
  final VoidCallback onClickGetStartedBtn;
  const GetStartedUi({super.key, required this.onClickGetStartedBtn, });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Subtitle1(context.translated.select_an_image_title, maxLines: 2, txtAlign: TextAlign.center,),
        SizedBox(height: 12,),
        Subtitle2(context.translated.select_an_image_description, maxLines: 2, txtAlign: TextAlign.center,),
        SizedBox(height: 24,),
        Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 240,
            ),
            child: ActionBtn(
              bgColor: context.color.primaryContainer,
              onBgColor: context.color.onPrimaryContainer,
              onClick: onClickGetStartedBtn,
              child: BtnTxt(
                  context.translated.select_an_image_button_label
              ),
            ),
          ),
        )
      ],
    );
  }
}
