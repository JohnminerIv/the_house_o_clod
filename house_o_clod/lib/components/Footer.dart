import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 30),
        ),
        Container(
          color: Theme.of(context).backgroundColor,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
                child: Column(children: [
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(bottom: 25),
                          child: Text(
                              'Copyright © www.john-the-fourth.engineer 2021 Built by John Miner'),
                        ),
                      ),
                    ],
                  ),
                ]),
              )
            ],
          ),
        ),
      ],
    );
  }
}
