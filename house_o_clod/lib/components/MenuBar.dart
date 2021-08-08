import 'package:flutter/material.dart';

class MenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Theme.of(context).backgroundColor,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 30, horizontal: 150),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => Navigator.popUntil(context,
                          ModalRoute.withName(Navigator.defaultRouteName)),
                      child: Text(
                        "House O' Clod",
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontFamily: 'Mono',
                            fontSize: 25),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Wrap(
                          children: <Widget>[
                            MaterialButton(
                              onPressed: () => Navigator.popUntil(
                                  context,
                                  ModalRoute.withName(
                                      Navigator.defaultRouteName)),
                              child: Text(
                                "HOME",
                                style: Theme.of(context).textTheme.button,
                              ),
                              splashColor: Colors.transparent,
                              hoverColor: Theme.of(context).buttonColor,
                              highlightColor: Colors.transparent,
                              height: 45,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 30),
        )
      ],
    );
  }
}
