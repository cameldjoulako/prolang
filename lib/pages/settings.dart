// ignore_for_file: dead_code

import 'package:flutter/material.dart';
//import 'package:country_icons/country_icons.dart';;

class ChangeLanguage extends StatefulWidget {
  const ChangeLanguage({super.key});

  @override
  State<ChangeLanguage> createState() => _ChangeLanguageState();
}

class _ChangeLanguageState extends State<ChangeLanguage> {
  @override
  Widget build(BuildContext context) {
    var selected = true;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seetings'),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 15, bottom: 8.0),
            child: Text(
              'Choose Language',
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
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Card(
                      shadowColor: selected ? Colors.teal : Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 35,
                          right: 25,
                          top: 18,
                          bottom: 18,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: ClipRRect(
                                child: Image.asset(
                                  'icons/flags/png/fr.png',
                                  package: 'country_icons',
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 0),
                              child: Text(
                                'Francais',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 66, 65, 65),
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Card(
                      shadowColor: selected ? Colors.teal : Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 35,
                          right: 25,
                          top: 18,
                          bottom: 18,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: ClipRRect(
                                child: Image.asset(
                                  'icons/flags/png/es.png',
                                  package: 'country_icons',
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 0),
                              child: Text(
                                'Española',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 66, 65, 65),
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Card(
                      shadowColor: selected ? Colors.teal : Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 35,
                          right: 25,
                          top: 18,
                          bottom: 18,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: ClipRRect(
                                child: Image.asset(
                                  'icons/flags/png/gb.png',
                                  package: 'country_icons',
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 0),
                              child: Text(
                                'English',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 66, 65, 65),
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
