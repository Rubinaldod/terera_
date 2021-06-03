import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:terera_starter/screens/profileScren.dart';
import 'file:///C:/Users/user/Documents/projcts/terera_starter/lib/screens/body.dart';
import 'package:terera_starter/widgets/middleScroll.dart';
import 'package:terera_starter/widgets/topScroll.dart';

import 'pScreen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  List<Widget> PageList = <Widget>[
    Body(),
    profileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Scaffold(
          extendBody: true,
          backgroundColor: Colors.transparent,
          body: PageList[pageIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: pageIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (value) {
              setState(() {
                pageIndex = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined), label: "Profle"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.library_music_outlined), label: "Library"),
            ],
          ),
        ),
      ),
    );
  }
}
