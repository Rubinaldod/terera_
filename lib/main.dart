import 'package:flutter/material.dart';

import 'screens/loginScreen.dart';

void main() {
  runApp(Tereta());
}

class Tereta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}
