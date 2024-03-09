import 'dart:typed_data';

abstract class TextRecognizer{

  /// Extract text from a given image bytes
  ///* Might throw an exception if an error occurs
  Future<List<String>> getTextInImage(Uint8List imageBytes);

}