import 'dart:async';
import 'package:alpha_keens/Screens/HomePage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomePage(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'Assets/aia.png',
            height: 75,
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          Container(
            child: Text("Airports Authority \n           of India",
                style: TextStyle(
                    fontFamily: 'serif',
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
          )
        ],
      )),
    );
  }
}
