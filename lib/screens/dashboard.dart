import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:terera_starter/widgets/middleScroll.dart';
import 'package:terera_starter/widgets/topScroll.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
                                'Terera',
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
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child:
                                Container(child: Icon(Icons.settings_outlined)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 170,
                          width: 400,
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('images/ruby.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    shape: BoxShape.circle),
                                width: 120,
                                child: Container(
                                  margin: EdgeInsets.only(top: 100, left: 10),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        alignment:
                                            AlignmentDirectional.topStart,
                                        margin:
                                            EdgeInsets.only(top: 8, left: 10),
                                        child: Text(
                                          'Rubinaldo Domingos',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        alignment:
                                            AlignmentDirectional.topStart,
                                        margin:
                                            EdgeInsets.only(top: 8, left: 10),
                                        child: Text(
                                          'Free Account',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
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
