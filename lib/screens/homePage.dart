import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:terera_starter/widgets/middleScroll.dart';
import 'package:terera_starter/widgets/topScroll.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Center(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 4,
                            child: Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text(
                                'Logo',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                                child: Icon(
                              Icons.compass_calibration_sharp,
                              size: 25,
                            )),
                          ),
                          Expanded(
                            flex: 1,
                            child:
                                Container(child: Icon(Icons.settings_outlined)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Container(
                        alignment: AlignmentDirectional.topStart,
                        margin: EdgeInsets.only(top: 8, left: 10),
                        child: Text(
                          'Popular',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 23,
                          ),
                        ),
                      ),
                      height: 40,
                    ),
                    Container(
                      height: 170,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            topScroll(),
                            topScroll(),
                            topScroll(),
                            topScroll(),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 170,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Color(0xFF00A4ED),
                                  borderRadius: BorderRadius.circular(30)),
                              child: GestureDetector(
                                onTap: () {},
                                child: Center(
                                    child: Text(
                                  'Explore',
                                  style:
                                      TextStyle(letterSpacing: 1, fontSize: 14),
                                )),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 170,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Center(
                                      child: Text(
                                    'UPGRADE TO PREMIUM',
                                    style: TextStyle(
                                      letterSpacing: 1,
                                      fontSize: 12,
                                    ),
                                  )),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Container(
                        alignment: AlignmentDirectional.topStart,
                        margin: EdgeInsets.only(top: 8, left: 10),
                        child: Text(
                          'Recently played',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 23,
                          ),
                        ),
                      ),
                      height: 40,
                    ),
                    Container(
                      height: 140,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            middleScroll(),
                            middleScroll(),
                            middleScroll(),
                            middleScroll(),
                            middleScroll(),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Container(
                        alignment: AlignmentDirectional.topStart,
                        margin: EdgeInsets.only(top: 8, left: 10),
                        child: Text(
                          '2020 wrapped',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 23,
                          ),
                        ),
                      ),
                      height: 40,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 170,
                          width: 400,
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                width: 90,
                                height: 170,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/nasty_C.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                width: 90,
                                height: 170,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/nasty_C.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 40),
                                width: 90,
                                height: 170,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/nasty_C.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}