import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:textiffi/core/routing/go_router_config.dart';
import 'package:textiffi/core/translations/domain/entities/supported_languages.dart';
import 'package:textiffi/flavor_config.dart';
import 'package:textiffi/main_initialization.dart';

Future<void> mainCommon() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MainInit.init();
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        /// Remove any keyboard displayed if no editable element is focused
        if (!currentFocus.hasPrimaryFocus) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: MaterialApp.router(
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
      ),
    );
  }
}
