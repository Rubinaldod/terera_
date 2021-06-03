import 'package:flutter/material.dart';

import 'homePage.dart';

class LoginScreen extends StatefulWidget {
  static final id = 'login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        leading: Expanded(
          child: Image(
            image: AssetImage('images/icon2.png'),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40.0),
              child: Text(
                'Login using your @sign credential...',
                style: TextStyle(
                  fontSize: 20.0,
                ),
                //textAlign: TextAlign.center,
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: '@sign...',
                    labelStyle: TextStyle(fontSize: 18.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
