import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:terera_starter/widgets/topInfoandOpt.dart';
import 'package:flutter/src/material/tab_controller.dart';
import 'package:terera_starter/widgets/userInfo.dart';

import 'pScreen.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: profileScreen(),
    );
  }
}
