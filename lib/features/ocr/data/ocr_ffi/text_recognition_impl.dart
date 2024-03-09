import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:textiffi/features/ocr/data/ocr_ffi/text_recognition.dart';


class TextRecognizerImpl implements TextRecognizer{

  static Pointer<Uint8> _toPointerUint8(Uint8List units) {
    final array = malloc<Uint8>(units.length);

    for (var i = 0; i < units.length; i++) {
      array[i] = units[i];
    }
    return array;
  }

  @override
  Future<List<String>> getTextInImage(Uint8List imageBytes) async{
      // TODO implement
      return [];
  }

}