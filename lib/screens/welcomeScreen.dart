import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  static final String id = 'welcome';

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
            Image(
              image: AssetImage('images/logo3.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Text(
                'Welcome to Terera: Bringing Happiness to Africa Through Sound! Music sharing has never been more seamless. Connect with all your favourite artists and get the latest music here!',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
