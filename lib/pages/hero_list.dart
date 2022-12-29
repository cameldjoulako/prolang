import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:prolang/pages/settings.dart';
import 'package:prolang/pages/widgets/hero_card.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HeroList extends StatefulWidget {
  final String title;

  const HeroList({super.key, required this.title});

  @override
  State<HeroList> createState() => _HeroListState();
}

class _HeroListState extends State<HeroList> {
  @override
  Widget build(BuildContext context) {
    Intl.defaultLocale = 'fr';
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.language),
            tooltip: AppLocalizations.of(context)!.chooseLang,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ChangeLanguage()),
              );
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              //child: Text('6 Hereos'),
              child: Text(AppLocalizations.of(context)!.heroNumber),
            ),
            Expanded(
              child: ListView(
                children: [
                  HeroCard(
                    name: 'Grace Hopper',
                    born: AppLocalizations.of(context)!.bornHero1,
                    bio: AppLocalizations.of(context)!.bioHero1,
                    imagePath: 'assets/images/grace_hopper.jpg',
                  ),
                  HeroCard(
                    name: 'Alan Turing',
                    born: AppLocalizations.of(context)!.bornHero2,
                    bio: AppLocalizations.of(context)!.bioHero2,
                    imagePath: 'assets/images/alan_turing.jpg',
                  ),
                  HeroCard(
                    name: 'Barbara Liskov',
                    born: AppLocalizations.of(context)!.bornHero3,
                    bio: AppLocalizations.of(context)!.bioHero3,
                    imagePath: 'assets/images/barbara_liskov.jpg',
                  ),
                  HeroCard(
                    name: 'Steve Wozniak',
                    born: AppLocalizations.of(context)!.bornHero4,
                    bio: AppLocalizations.of(context)!.bioHero4,
                    imagePath: 'assets/images/steve_wozniak.jpg',
                  ),
                  HeroCard(
                    name: 'Tim Berners-Lee',
                    born: AppLocalizations.of(context)!.bornHero5,
                    bio: AppLocalizations.of(context)!.bioHero5,
                    imagePath: 'assets/images/tim_berners_lee.jpg',
                  ),
                  HeroCard(
                    name: 'Bill Gates',
                    born: AppLocalizations.of(context)!.bornHero6,
                    bio: AppLocalizations.of(context)!.bioHero6,
                    imagePath: 'assets/images/bill_gates.jpg',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
