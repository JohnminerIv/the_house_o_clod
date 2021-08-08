import 'DefaultPage.dart';
import 'package:flutter/material.dart';
import '../components/Components.dart';

class HomePage extends DefaultPage {
  HomePage()
      : super(
          centralComponent: BlankPage(
            page: _HomePage(),
          ),
        );
}

class _HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileCard(
            imagePath: 'assets/images/Clod.png',
            description: '''music is hard,
Starlight zone explorer,
Freaking Fag revolutionary,
Ive got peter pan syndrome cause anime,
Moon admirer aka  a lunatic, 
hopeless romantic, 
💛🚻⚠️🔄🆒️🎵🔮🌃🌌🌙♠️🌹🥀🌺🌷🌼🌻🐝 based''',
            title: 'The OG'),
        Divider(),
        ProfileCard(
            imagePath: 'assets/images/Brian.png',
            description: 'desc',
            title: 'The Business Man'),
        Divider(),
        ProfileCard(
            imagePath: 'assets/images/Eli.png',
            description: 'desc',
            title: 'The Teacher'),
        Divider(),
        ProfileCard(
            imagePath: 'assets/images/Zoe.png',
            description: 'desc',
            title: 'The Nurse'),
        Divider(),
        ProfileCard(
            imagePath: 'assets/images/Kelly.png',
            description: "The crafter who'll drop you with 50 gaps",
            title: 'Gunga'),
        Divider(),
        ProfileCard(
            imagePath: 'assets/images/Madison.png',
            description: 'desc',
            title: 'The Director'),
        Divider(),
        ProfileCard(
            imagePath: 'assets/images/Ryan.png',
            description: 'My bones hurt and I want to die',
            title: 'The Wrestler'),
        Divider(),
        ProfileCard(
            imagePath: 'assets/images/Kaiden.png',
            description: 'desc',
            title: 'The Archeologist'),
        Divider(),
        ProfileCard(
            imagePath: 'assets/images/John.png',
            description: 'desc',
            title: 'The Software Engineer'),
      ],
    );
  }
}
