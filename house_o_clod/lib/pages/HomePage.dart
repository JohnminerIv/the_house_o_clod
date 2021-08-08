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
            description: 'description',
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
            description: 'desc',
            title: 'The Server'),
        Divider(),
        ProfileCard(
            imagePath: 'assets/images/Madison.png',
            description: 'desc',
            title: 'The Director'),
        Divider(),
        ProfileCard(
            imagePath: 'assets/images/Ryan.png',
            description: 'desc',
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
