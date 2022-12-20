import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _selectedLanguage = 'fr';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('fr'),
        const Locale('en'),
        const Locale('es'),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: Text(Intl.message('app_title')),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(Intl.message('hello')),
              TextButton(
                child: Text(Intl.message('change_language')),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title: Text(Intl.message('select_language')),
                        children: [
                          SimpleDialogOption(
                            child: const Text('English'),
                            onPressed: () {
                              setState(() {
                                _selectedLanguage = 'en';
                              });
                              Intl.defaultLocale = 'en';
                              Navigator.pop(context);
                            },
                          ),
                          SimpleDialogOption(
                            child: const Text('French'),
                            onPressed: () {
                              setState(() {
                                _selectedLanguage = 'fr';
                              });
                              Intl.defaultLocale = 'fr';
                              Navigator.pop(context);
                            },
                          ),
                          SimpleDialogOption(
                            child: const Text('Spanish'),
                            onPressed: () {
                              setState(() {
                                _selectedLanguage = 'es';
                              });
                              Intl.defaultLocale = 'es';
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              Text(
                Intl.message(
                  'selected_language',
                  name: 'language',
                  args: [_selectedLanguage],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
