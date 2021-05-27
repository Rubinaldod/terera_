import 'dart:js';

import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:terera_starter/screens/profileScreen.dart';

class LowNavBar {
  int _index = 0;
  String action = "Home";

  FloatingNavbar buildFloatingNavbar() {
    return FloatingNavbar(
      items: [
        FloatingNavbarItem(icon: Icons.home, title: 'Home'),
        FloatingNavbarItem(
            icon: Icons.library_music_outlined, title: 'Library'),
        FloatingNavbarItem(icon: Icons.search_outlined, title: 'Search'),
        FloatingNavbarItem(
            icon: Icons.account_circle_outlined, title: 'Profile'),
      ],
      onTap: (int val) {
        switch (val) {
          case 0:
            {
              print('Karin is great');
            }
            break;

          case 1:
            {
              action = "Explore"; //statements;
            }
            break;
          case 2:
            {
              action = "Chats"; //statements;
            }
            break;
          case 3:
            {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            }
            break;
          default:
            {
              //statements;
            }
            break;
        }

        //setState(() => _index = val);
      },
      currentIndex: _index,
    );
  }
}
