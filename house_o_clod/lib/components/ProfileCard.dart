import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  ProfileCard({
    Key? key,
    required String this.imagePath,
    required String this.description,
    required String this.title,
  }) : super(key: key);
  final String imagePath;
  final String description;
  final String title;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    if (screenSize.width <= 450) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Image.network(
                  imagePath,
                  width: 150,
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        title,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      margin: EdgeInsets.only(bottom: 10),
                    ),
                    Container(
                      child: Text(description),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      );
    }
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          child: Image.network(
            imagePath,
            width: 150,
          ),
          margin: EdgeInsets.only(right: 50, top: 10, bottom: 10),
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.headline6,
                ),
                margin: EdgeInsets.only(bottom: 10),
              ),
              Container(
                child: Text(description),
              ),
            ],
          ),
        )
      ],
    );
  }
}
