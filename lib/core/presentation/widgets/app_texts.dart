import 'package:flutter/material.dart';

enum AppTxtStyle {
  h1,
  h2,
  h3,
  h4,
  h5,
  h6,
  subtitle1,
  subtitle2,
  p1,
  p2,
  btn,
  hint,
  overline;

  TextStyle? style(BuildContext context) {
    switch (this) {
      case AppTxtStyle.h1:
        return Theme.of(context).textTheme.displayLarge;
      case AppTxtStyle.h2:
        return Theme.of(context).textTheme.displayMedium;
      case AppTxtStyle.h3:
        return Theme.of(context).textTheme.displaySmall;
      case AppTxtStyle.h4:
        return Theme.of(context).textTheme.headlineMedium;
      case AppTxtStyle.h5:
        return Theme.of(context).textTheme.headlineSmall;
      case AppTxtStyle.h6:
        return Theme.of(context).textTheme.titleLarge;
      case AppTxtStyle.subtitle1:
        return Theme.of(context).textTheme.titleMedium;
      case AppTxtStyle.subtitle2:
        return Theme.of(context).textTheme.titleSmall;
      case AppTxtStyle.p1:
        return Theme.of(context).textTheme.bodyLarge;
      case AppTxtStyle.p2:
        return Theme.of(context).textTheme.bodyMedium;
      case AppTxtStyle.btn:
        return Theme.of(context).textTheme.labelLarge;
      case AppTxtStyle.hint:
        return Theme.of(context).textTheme.bodySmall;
      case AppTxtStyle.overline:
        return Theme.of(context).textTheme.labelSmall;
    }
  }
}

abstract class AppText extends StatelessWidget {
  final String txt;
  final Color? color;
  final TextAlign? txtAlign;
  final bool isTruncated;
  final int maxLines;
  final AppTxtStyle htmlTag;
  final bool isBold;

  const AppText(
    this.txt, {
    super.key,
    required this.htmlTag,
    this.color,
    this.txtAlign = TextAlign.start,
    this.isTruncated = true,
    this.maxLines = 1,
    this.isBold = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: htmlTag.style(context)?.copyWith(
            color: color,
            fontWeight: isBold ? FontWeight.bold : null,
          ),
      softWrap: !isTruncated,
      maxLines: isTruncated ? maxLines : null,
      overflow: isTruncated ? TextOverflow.ellipsis : null,
      textAlign: txtAlign,
    );
  }
}

class H1 extends AppText {
  const H1(
    super.txt, {
    super.key,
    super.htmlTag = AppTxtStyle.h1,
    super.color,
    super.txtAlign,
    super.isTruncated,
    super.maxLines,
  });
}

class H2 extends AppText {
  const H2(
    super.txt, {
    super.key,
    super.htmlTag = AppTxtStyle.h2,
    super.color,
    super.txtAlign,
    super.isTruncated,
    super.maxLines,
  });
}

class H3 extends AppText {
  const H3(
    super.txt, {
    super.key,
    super.htmlTag = AppTxtStyle.h3,
    super.color,
    super.txtAlign,
    super.isTruncated,
    super.maxLines,
  });
}

class H4 extends AppText {
  const H4(
    super.txt, {
    super.key,
    super.htmlTag = AppTxtStyle.h4,
    super.color,
    super.txtAlign,
    super.isTruncated,
    super.maxLines,
  });
}

class H5 extends AppText {
  const H5(
    super.txt, {
    super.key,
    super.htmlTag = AppTxtStyle.h5,
    super.color,
    super.txtAlign,
    super.isTruncated,
    super.maxLines,
  });
}

class H6 extends AppText {
  const H6(
    super.txt, {
    super.key,
    super.htmlTag = AppTxtStyle.h6,
    super.color,
    super.txtAlign,
    super.isTruncated,
    super.maxLines,
  });
}

class Subtitle1 extends AppText {
  const Subtitle1(
    super.txt, {
    super.key,
    super.htmlTag = AppTxtStyle.subtitle1,
    super.color,
    super.txtAlign,
    super.isTruncated,
    super.maxLines,
    super.isBold = false,
  });
}

class Subtitle2 extends AppText {
  const Subtitle2(
    super.txt, {
    super.key,
    super.htmlTag = AppTxtStyle.subtitle2,
    super.color,
    super.txtAlign,
    super.isTruncated,
    super.maxLines,
    super.isBold = false,
  });
}

class P1 extends AppText {
  const P1(
    super.txt, {
    super.key,
    super.htmlTag = AppTxtStyle.p1,
    super.color,
    super.txtAlign,
    super.isTruncated,
    super.maxLines,
  });
}

class P2 extends AppText {
  const P2(
    super.txt, {
    super.key,
    super.htmlTag = AppTxtStyle.p2,
    super.color,
    super.txtAlign,
    super.isTruncated,
    super.maxLines,
  });
}

class BtnTxt extends AppText {
  const BtnTxt(
    super.txt, {
    super.key,
    super.htmlTag = AppTxtStyle.btn,
    super.color,
    super.txtAlign,
    super.isTruncated,
    super.maxLines,
  });
}

class Hint extends AppText {
  const Hint(
    super.txt, {
    super.key,
    super.htmlTag = AppTxtStyle.hint,
    super.color,
    super.txtAlign,
    super.isTruncated,
    super.maxLines,
  });
}

class Overline extends AppText {
  const Overline(
    super.txt, {
    super.key,
    super.htmlTag = AppTxtStyle.overline,
    super.color,
    super.txtAlign,
    super.isTruncated,
    super.maxLines,
  });
}
