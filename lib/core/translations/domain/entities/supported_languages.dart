import 'dart:ui';
import 'package:json_annotation/json_annotation.dart';

/// Defines the supported languages for the app
enum SupportedLanguages {
  @JsonValue('en')
  english('en', 'English', 'US');

  const SupportedLanguages(
      this.languageCode, this.languageName, this.countryCode);

  final String languageCode;
  final String languageName;
  final String countryCode;


  /// Returns a Locale object based on the provided language code.
  ///* Throws an exception if the language code is not found in the enum.
  ///* [languageCode]: The language code to get the corresponding Locale for.
  static Locale getLocale({required String languageCode}) {
    try {
      final language = SupportedLanguages.values
          .firstWhere((element) => element.languageCode == languageCode);
      return Locale(language.languageCode, language.countryCode);
    } on Exception catch (_) {
      return Locale(defaultLanguage.languageCode, defaultLanguage.countryCode);
    }
  }
  
  static const SupportedLanguages defaultLanguage = SupportedLanguages.english;
}
