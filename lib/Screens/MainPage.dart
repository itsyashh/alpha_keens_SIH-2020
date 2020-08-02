import 'package:alpha_keens/Screens/SubmitPage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:page_transition/page_transition.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool val1 = false,
      val2 = false,
      val3 = false,
      val4 = false,
      val5 = false,
      val6 = false;
  FirebaseDatabase database = new FirebaseDatabase();
  String currDate = new DateTime.now().toLocal().toString().substring(0, 10);
  @override
  Widget build(BuildContext context) {
    int park = val1 ? 1 : 0,
        trol = val2 ? 1 : 0,
        wait = val3 ? 1 : 0,
        bath = val4 ? 1 : 0,
        cafe = val5 ? 1 : 0,
        loun = val6 ? 1 : 0;
    DatabaseReference _dbRef =
        database.reference().child('resources/' + currDate);
    return Scaffold(
        backgroundColor: Colors.lightBlue[50],
        appBar: AppBar(
          title: Text("Facilities Used"),
          backgroundColor: Colors.deepPurple,
        ),
        body: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Card(
                      margin: EdgeInsets.all(8.0),
                      child: CheckboxListTile(
                          title: Text("Parking"),
                          value: val1,
                          onChanged: (newValue) {
                            setState(() {
                              val1 = newValue;
                            });
                          })),
                  Card(
                      margin: EdgeInsets.all(8.0),
                      child: CheckboxListTile(
                          title: Text("Trolley"),
                          value: val2,
                          onChanged: (newValue) {
                            setState(() {
                              val2 = newValue;
                            });
                          })),
                  Card(
                      margin: EdgeInsets.all(8.0),
                      child: CheckboxListTile(
                          title: Text("Waiting Room"),
                          value: val3,
                          onChanged: (newValue) {
                            setState(() {
                              val3 = newValue;
                            });
                          })),
                  Card(
                      margin: EdgeInsets.all(8.0),
                      child: CheckboxListTile(
                          title: Text("Bathroom"),
                          value: val4,
                          onChanged: (newValue) {
                            setState(() {
                              val4 = newValue;
                            });
                          })),
                  Card(
                      margin: EdgeInsets.all(8.0),
                      child: CheckboxListTile(
                          title: Text("Cafeteria"),
                          value: val5,
                          onChanged: (newValue) {
                            setState(() {
                              val5 = newValue;
                            });
                          })),
                  Card(
                      margin: EdgeInsets.all(8.0),
                      child: CheckboxListTile(
                          title: Text("Lounge"),
                          value: val6,
                          onChanged: (newValue) {
                            setState(() {
                              val6 = newValue;
                            });
                          })),
                  Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.all(15),
                      child: RaisedButton(
                          child: Text("Submit",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          color: Colors.deepPurple,
                          onPressed: () async {
                            await _dbRef.once().then((DataSnapshot snapshot) {
                              if (snapshot.value == null) {
                                _dbRef.set({
                                  'entry': 1,
                                  'exit': 1,
                                  'parking': park,
                                  'trolley': trol,
                                  'bathroom': bath,
                                  'waitingRoom': wait,
                                  'cafe': cafe,
                                  'lounge': loun
                                });
                              } else {
                                int a = snapshot.value['entry'] + 1,
                                    b = snapshot.value['exit'] + 1,
                                    c = snapshot.value['parking'] + park,
                                    d = snapshot.value['trolley'] + trol,
                                    e = snapshot.value['bathroom'] + bath,
                                    f = snapshot.value['waitingRoom'] + wait,
                                    g = snapshot.value['cafe'] + cafe,
                                    h = snapshot.value['lounge'] + loun;
                                _dbRef.set({
                                  'entry': a,
                                  'exit': b,
                                  'parking': c,
                                  'trolley': d,
                                  'bathroom': e,
                                  'waitingRoom': f,
                                  'cafe': g,
                                  'lounge': h
                                });
                              }
                            });
                            Navigator.pushReplacement(
                                context,
                                PageTransition(
                                    child: SubmitPage(),
                                    type: PageTransitionType.rightToLeft));
                          }))
                ])));
  }
}
