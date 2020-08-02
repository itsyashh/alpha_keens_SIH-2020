import 'dart:async';
import 'package:alpha_keens/Screens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SubmitPage extends StatefulWidget {
  @override
  _SubmitPageState createState() => _SubmitPageState();
}

class _SubmitPageState extends State<SubmitPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
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
          SpinKitFadingCube(
            color: Colors.deepPurple,
            size: 50,
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            child: Text("Submitting....",
                style: TextStyle(fontSize: 20, color: Colors.deepPurple)),
          )
        ],
      )),
    );
  }
}
