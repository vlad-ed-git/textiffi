import 'package:flutter/foundation.dart';

/// Prints a debug message to the console if debug mode is enabled.
///* [s]: The string message to be printed.
void kDebugPrint(String s) {
  if (!kDebugMode) return;

  /// allows for printing long messages
  final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
  pattern.allMatches(s).forEach((match) => print(match.group(0)));
}
