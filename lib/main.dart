import 'package:alpha_keens/Screens/Drawer/AboutPage.dart';
import 'package:alpha_keens/Screens/Drawer/DeveloperPage.dart';
import 'package:alpha_keens/Screens/Drawer/Feedback.dart';
import 'package:alpha_keens/Screens/Drawer/NotificationPage.dart';
import 'package:alpha_keens/Screens/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SplashScreen(),
        routes: <String, WidgetBuilder>{
          "/a": (BuildContext context) => FeedbackPage(),
          "/c": (BuildContext context) => AboutPage(),
          "/d": (BuildContext context) => NotificationPage(),
          "/e": (BuildContext context) => DeveloperPage(),
        });
  }
}
