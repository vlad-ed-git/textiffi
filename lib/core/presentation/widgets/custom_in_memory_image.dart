import 'dart:typed_data';

import 'package:flutter/material.dart';

class CustomInMemoryImage extends StatelessWidget {
  final Uint8List image;
  final double? width, height;
  const CustomInMemoryImage({
    super.key,
    required this.image,
    this.width = 240,
    this.height = 240,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 12,
      ),
      child: Image.memory(
        image,
        errorBuilder: (BuildContext _, Object __, StackTrace? ___) {
          return SizedBox.shrink();
        },
        width: width,
        height: height,
        fit: BoxFit.fill,
      ),
    );
  }
}
