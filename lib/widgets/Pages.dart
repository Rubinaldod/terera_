import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:terera_starter/screens/loginScreen.dart';
import 'package:terera_starter/screens/welcomeScreen.dart';

class PageScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return PageView(
      controller: controller,
      children: <Widget>[
        Welcome(),
        LoginScreen(),
        //HomePage(),
        // Dashboard(),
        // ProfilePage(),
      ],
    );
  }
}
