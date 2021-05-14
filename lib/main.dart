import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:terera_starter/screens/dashboard.dart';
// import 'screens/homePage.dart';
// import 'screens/loginScreen.dart';
// import 'screens/welcomeScreen.dart';
import 'package:terera_starter/widgets/Pages.dart';

void main() {
  runApp(Terera());
}

class Terera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
      ),
      home: PageScroll(),
    );
  }
}
