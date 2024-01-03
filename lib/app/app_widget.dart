import 'package:core/core.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'App Acampamento',
      // themeMode: ThemeMode.,
      theme: LightTheme.theme,
      darkTheme: DarkTheme.theme,
      routerConfig: Modular.routerConfig,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('pt-br'),
        Locale('en'),
        Locale('es'),
      ],
    );
  }
}
