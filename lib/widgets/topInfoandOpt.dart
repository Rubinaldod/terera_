import 'package:flutter/material.dart';

class topInfoAndOpt extends StatelessWidget {
  const topInfoAndOpt({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: Container(child: Icon(Icons.settings_outlined)),
          ),
        ],
      ),
    );
  }
}