import 'package:flutter/material.dart';

import 'screens/loginScreen.dart';
import 'screens/welcomeScreen.dart';

void main() {
  runApp(Terera());
}

class Terera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Terera Start App',
      theme: ThemeData.dark(),
      initialRoute: LoginScreen.id,
      routes: {
        Welcome.id: (context) => Welcome(),
        LoginScreen.id: (context) => LoginScreen(),
      },
    );
  }
}
