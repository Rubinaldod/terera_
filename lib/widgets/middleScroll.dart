import 'package:flutter/material.dart';

class middleScroll extends StatelessWidget {
  const middleScroll({
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
          shape: BoxShape.circle),
      width: 120,
      child: Container(
        margin: EdgeInsets.only(top: 100, left: 10),
      ),
    );
  }
}
