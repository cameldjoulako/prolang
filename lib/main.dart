import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'pages/hero_list.dart';

void main() {
  //Intl.defaultLocale = 'fr';
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
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fr', ''),
        Locale('en', ''),
        Locale('es', ''),
      ],
      title: 'Heroes of Computer Science',
      //title: AppLocalizations.of(context).appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: HeroList(title: AppLocalizations.of(context)!.appTitle),
      home: const HeroList(title: "Heroes of Computer Science"),
    );
  }
}
