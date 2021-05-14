import 'package:flutter/material.dart';

class topScroll extends StatelessWidget {
  const topScroll({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/nasty_C.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20)),
      width: 150,
      child: Container(
        margin: EdgeInsets.only(top: 100, left: 10),
        child: Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'DARK',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Released Jan 29',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
