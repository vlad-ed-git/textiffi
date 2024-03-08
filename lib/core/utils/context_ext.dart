import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:textiffi/core/presentation/widgets/snack.dart';

/// Extension methods for the BuildContext class.

/// This extension provides convenient access to commonly used properties
/// and functionalities from the BuildContext.
extension ContextExt on BuildContext {
  AppLocalizations get translated => AppLocalizations.of(this)!;

  ColorScheme get color => Theme.of(this).colorScheme;

  Brightness get brightness => MediaQuery.of(this).platformBrightness;

  bool get isDarkMode => brightness == Brightness.dark;

  bool get isLightMode => brightness == Brightness.light;

  Size get screenSize => MediaQuery.of(this).size;

  double get screenWidth => screenSize.width;

  double get screenHeight => screenSize.height;

  void showErrorSnack(String error) {
    final snack = Snack(
      content: error,
      isError: true,
    );
    final snackBar = snack.create(this);
    final messenger = ScaffoldMessenger.of(this);
    messenger.hideCurrentSnackBar();
    messenger.showSnackBar(snackBar);
  }
}
