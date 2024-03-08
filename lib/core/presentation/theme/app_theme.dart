import 'package:flutter/material.dart';
import 'package:textiffi/core/presentation/theme/font_style.dart';

final ThemeData appTheme = ThemeData(
  useMaterial3: true,
  textTheme: fontStyle,
);

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF9C4238),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFFFDAD5),
  onPrimaryContainer: Color(0xFF410001),
  secondary: Color(0xFF775652),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFFFDAD5),
  onSecondaryContainer: Color(0xFF2C1512),
  tertiary: Color(0xFF715C2E),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFFDDFA6),
  onTertiaryContainer: Color(0xFF261A00),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFFFBFF),
  onBackground: Color(0xFF201A19),
  surface: Color(0xFFFFFBFF),
  onSurface: Color(0xFF201A19),
  surfaceVariant: Color(0xFFF5DDDA),
  onSurfaceVariant: Color(0xFF534341),
  outline: Color(0xFF857370),
  onInverseSurface: Color(0xFFFBEEEC),
  inverseSurface: Color(0xFF362F2E),
  inversePrimary: Color(0xFFFFB4AA),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF9C4238),
  outlineVariant: Color(0xFFD8C2BE),
  scrim: Color(0xFF000000),
);
const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFFFB4AA),
  onPrimary: Color(0xFF5F150F),
  primaryContainer: Color(0xFF7D2B23),
  onPrimaryContainer: Color(0xFFFFDAD5),
  secondary: Color(0xFFE7BDB7),
  onSecondary: Color(0xFF442926),
  secondaryContainer: Color(0xFF5D3F3B),
  onSecondaryContainer: Color(0xFFFFDAD5),
  tertiary: Color(0xFFDFC38C),
  onTertiary: Color(0xFF3F2E04),
  tertiaryContainer: Color(0xFF574419),
  onTertiaryContainer: Color(0xFFFDDFA6),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF201A19),
  onBackground: Color(0xFFEDE0DE),
  surface: Color(0xFF201A19),
  onSurface: Color(0xFFEDE0DE),
  surfaceVariant: Color(0xFF534341),
  onSurfaceVariant: Color(0xFFD8C2BE),
  outline: Color(0xFFA08C8A),
  onInverseSurface: Color(0xFF201A19),
  inverseSurface: Color(0xFFEDE0DE),
  inversePrimary: Color(0xFF9C4238),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFFFB4AA),
  outlineVariant: Color(0xFF534341),
  scrim: Color(0xFF000000),
);

final darkTheme = appTheme.copyWith(
  brightness: Brightness.dark,
  colorScheme: darkColorScheme,
);

final lightTheme = appTheme.copyWith(
  colorScheme: lightColorScheme,
  brightness: Brightness.light,
);

const ThemeMode defaultThemeMode = ThemeMode.light;
