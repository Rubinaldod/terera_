import 'package:flutter/material.dart';

class userInfo extends StatelessWidget {
  const userInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Container(
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                ),
                image: DecorationImage(
                  image: AssetImage('images/ruby.jpg'),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle),
            width: 100,
            child: Container(
              margin: EdgeInsets.only(top: 100, left: 0),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, top: 28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Rubinaldo Domingos',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 2,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Free account',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Upgrade',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: Icon(
                  Icons.share,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}