import 'package:flutter/material.dart';
import 'package:terera_starter/widgets/topInfoandOpt.dart';
import 'package:terera_starter/widgets/userInfo.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: Column(
              children: <Widget>[
                TopInfoAndOpt(),
                UserInfo(),
                SizedBox(
                  height: 15,
                ),
                TabBar(
                  isScrollable: true,
                  tabs: [
                    Tab(text: 'Overview'),
                    Tab(text: 'Public playlists'),
                    Tab(text: 'Followers'),
                    Tab(text: 'Following'),
                    Tab(text: 'My playlist'),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Icon(
                        Icons.directions_car,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.directions_transit,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.directions_bike,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.directions_car,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.directions_transit,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
