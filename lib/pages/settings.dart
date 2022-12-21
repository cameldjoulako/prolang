import 'package:flutter/material.dart';
//import 'package:country_icons/country_icons.dart';

class ChangeLanguage extends StatefulWidget {
  const ChangeLanguage({super.key});

  @override
  State<ChangeLanguage> createState() => _ChangeLanguageState();
}

class _ChangeLanguageState extends State<ChangeLanguage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seetings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 15, bottom: 8.0),
              child: Text(
                'Choose the Language',
                style: TextStyle(
                  fontSize: 28,
                  color: Color.fromARGB(255, 44, 44, 44),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Image.asset('icons/flags/png/fr.png',
                      package: 'country_icons'),
                  Image.asset('icons/flags/png/es.png',
                      package: 'country_icons'),
                  Image.asset('icons/flags/png/gb.png',
                      package: 'country_icons'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
