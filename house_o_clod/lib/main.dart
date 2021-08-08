import 'dart:html';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter/material.dart';

import 'pages/Pages.dart';
import 'routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "House O' Clod",
      initialRoute: Routes.home,
      onGenerateRoute: (RouteSettings settings) {
        return Routes.fadeThrough(settings, (context) {
          switch (settings.name) {
            case Routes.home:
              return HomePage();
            default:
              return PageNotFoundPage(pagename: settings.name);
          }
        });
      },
      builder: (context, widget) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, widget!),
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(450, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
          background: Container(color: Color(0xFFF5F5F5))),
      theme: ThemeData(
        primarySwatch: Colors.green,
        shadowColor: Colors.grey.shade700,
        accentColor: Colors.blue.shade200,
        buttonColor: Colors.pink,
        accentColorBrightness: Brightness.light,
      ),
    );
  }
}
