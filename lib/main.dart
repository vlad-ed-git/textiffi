import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:textiffi/core/routing/go_router_config.dart';
import 'package:textiffi/core/translations/domain/entities/supported_languages.dart';
import 'package:textiffi/flavor_config.dart';

Future<void> mainCommon() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: goRouter,
      title: FlavorConfig.instance.appTitle,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: SupportedLanguages.getLocale(
          languageCode: SupportedLanguages.defaultLanguage.languageCode),
      debugShowCheckedModeBanner: FlavorConfig.instance.isDevelopment,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
