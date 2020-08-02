import 'package:alpha_keens/Models/FeedbackModel.dart';
import 'package:alpha_keens/Screens/SubmitPage.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';

class FeedbackPage extends StatefulWidget {
  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  final _formKey = GlobalKey<FormState>();
  String name;
  String email;
  String phone;
  String rating;
  String feedback;
  String date = new DateTime.now().toLocal().toString().substring(0, 19);
  AddFeedback addobj = new AddFeedback();
  @override
  Widget build(BuildContext context) {
    print(date);
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 130)),
          Center(
              child: Text("Feedback Form",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Serif',
                      color: Colors.deepPurple))),
          SizedBox(
            height: 20,
          ),
          Container(
              child: Form(
                  key: _formKey,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(35, 35, 35, 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0)),
                          child: TextFormField(
                            // ignore: missing_return
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Enter Full Name';
                              }
                            },
                            decoration: InputDecoration(
                                icon: Icon(Icons.person),
                                hintText: 'Full Name',
                                border: InputBorder.none),
                            onChanged: (value) {
                              this.name = value;
                            },
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(35, 5, 35, 20),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.0)),
                            child: TextFormField(
                              // ignore: missing_return
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter Phone Number';
                                }
                              },
                              decoration: InputDecoration(
                                  icon: Icon(Icons.smartphone),
                                  hintText: 'Mobile Number',
                                  border: InputBorder.none),
                              onChanged: (value) {
                                this.phone = value;
                              },
                            )),
                        Container(
                            margin: EdgeInsets.fromLTRB(35, 5, 35, 20),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.0)),
                            child: TextFormField(
                              // ignore: missing_return
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter Email';
                                }
                              },
                              decoration: InputDecoration(
                                  icon: Icon(Icons.email),
                                  hintText: 'Email',
                                  border: InputBorder.none),
                              onChanged: (value) {
                                this.email = value;
                              },
                            )),
                        Container(
                            margin: EdgeInsets.fromLTRB(35, 5, 35, 20),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.0)),
                            child: TextFormField(
                              // ignore: missing_return
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter Number value';
                                }
                              },
                              decoration: InputDecoration(
                                  icon: Icon(Icons.star),
                                  hintText: 'Rates us out of 10',
                                  border: InputBorder.none),
                              onChanged: (value) {
                                this.rating = value;
                              },
                            )),
                        Container(
                            height: 100,
                            margin: EdgeInsets.fromLTRB(35, 5, 35, 0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.0)),
                            child: TextFormField(
                              // ignore: missing_return
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter message';
                                }
                              },
                              decoration: InputDecoration(
                                  icon: Icon(Icons.message),
                                  hintText: 'Your Feedback',
                                  border: InputBorder.none),
                              onChanged: (value) {
                                this.feedback = value;
                              },
                            )),
                        Card(
                          color: Colors.deepPurple,
                          margin:
                              EdgeInsets.only(top: 25, left: 35.0, right: 35.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: ListTile(
                            trailing: Icon(
                              Icons.navigate_next,
                              size: 40,
                              color: Colors.white,
                            ),
                            onTap: () {
                              addobj.addData({
                                'name': this.name,
                                'email': this.email,
                                'phone': this.phone,
                                'feedback': this.feedback,
                                'date': date,
                                'rating': this.rating
                              });
                              if (_formKey.currentState.validate()) {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        child: SubmitPage(),
                                        type: PageTransitionType.rightToLeft));
                              }
                            },
                            title: Text("Submit",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'serif',
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                        )
                      ]))),
        ],
      )),
    );
  }
}
