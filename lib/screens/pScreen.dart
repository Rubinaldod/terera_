import 'package:flutter/material.dart';
import 'package:terera_starter/widgets/topInfoandOpt.dart';
import 'package:terera_starter/widgets/userInfo.dart';

class profileScreen extends StatelessWidget {
  const profileScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: Column(
              children: <Widget>[
                topInfoAndOpt(),
                userInfo(),
                SizedBox(
                  height: 15,
                ),
                TabBar(
                  tabs: [
                    Tab(text: 'Overview'),
                    Tab(text: 'Public playlist  '),
                    Tab(text: 'Followers(10)'),
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
