import 'package:flutter/material.dart';
import 'package:prolang/pages/settings.dart';
import 'package:prolang/pages/widgets/hero_card.dart';

class HeroList extends StatelessWidget {
  final String title;

  const HeroList({super.key, this.title = ''});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
            icon: const Icon(Icons.language),
            tooltip: 'Change Language',
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
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text('6 Hereos'),
            ),
            Expanded(
              child: ListView(
                children: const [
                  HeroCard(
                    name: 'Grace Hopper',
                    born: '9 December 1906',
                    bio: 'Devised theory of machine-independent programming '
                        'languages.',
                    imagePath: 'assets/images/grace_hopper.jpg',
                  ),
                  HeroCard(
                    name: 'Alan Turing',
                    born: '23 June 1912',
                    bio: 'Father of theoretical computer science & '
                        'artificial intelligence.',
                    imagePath: 'assets/images/alan_turing.jpg',
                  ),
                  HeroCard(
                    name: 'Barbara Liskov',
                    born: '7 November 1939',
                    bio: 'Turing Award winner; inventor of Liskov '
                        'substitution principle.',
                    imagePath: 'assets/images/barbara_liskov.jpg',
                  ),
                  HeroCard(
                    name: 'Steve Wozniak',
                    born: '11 August 1950',
                    bio: 'Designed & developed the Apple I & Apple II '
                        'microcomputers.',
                    imagePath: 'assets/images/steve_wozniak.jpg',
                  ),
                  HeroCard(
                    name: 'Tim Berners-Lee',
                    born: '8 June 1955',
                    bio: 'Inventor of the World Wide Web.',
                    imagePath: 'assets/images/tim_berners_lee.jpg',
                  ),
                  HeroCard(
                    name: 'Bill Gates',
                    born: '28 October 1955',
                    bio: 'Co-founder of Microsoft Corporation; philanthropist.',
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