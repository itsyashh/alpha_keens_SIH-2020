import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  void _openEndDrawer() {
    _scaffoldKey.currentState.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Welcome !",
            style: TextStyle(
                fontFamily: 'serif',
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        leading: Container(),
        actions: <Widget>[
          InkWell(
              child: IconButton(
                  icon: Image.asset(
                    'Assets/drawer.png',
                  ),
                  onPressed: () {
                    _openEndDrawer();
                  })),
        ],
      ),
      backgroundColor: Colors.lightBlue[50],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 50)),
            Image.asset(
              'Assets/aia.png',
              height: 75,
            ),
            Padding(padding: EdgeInsets.only(top: 15)),
            Container(
              child: Text("Airport Authority \n           of India",
                  style: TextStyle(
                      fontFamily: 'serif',
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(padding: EdgeInsets.only(top: 75)),
            Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                child: Form(
                  key: _formKey,
                  child: TextFormField(
                      // ignore: missing_return
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Enter valid PNR';
                        }
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          hintText: 'Enter your PNR Number *',
                          hoverColor: Colors.white,
                          errorStyle:
                              TextStyle(color: Colors.red, fontSize: 15))),
                )),
            SizedBox(
              height: 35,
            ),
            Card(
              color: Colors.deepPurple,
              margin: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: ListTile(
                trailing: Icon(
                  Icons.navigate_next,
                  size: 40,
                  color: Colors.white,
                ),
                onTap: () {
                  if (_formKey.currentState.validate()) {}
                },
                title: Text("Proceed",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'serif',
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.feedback),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0))),
        backgroundColor: Colors.deepPurple,
        tooltip: "Feedback",
      ),
      endDrawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.deepPurple, Colors.grey, Colors.blue]),
              ),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.teal[100],
                          image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage('Assets/aia.png'))),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Expanded(
                        child: Text(
                      "Airport Authority \n          of India",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: 'serif',
                          color: Colors.black),
                    ))
                  ],
                ),
              ),
            ),
            ListTile(
                title: Text(
                  'About us',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
                ),
                trailing: Icon(Icons.info),
                onTap: () {}),
            ListTile(
              title: Text('Notification',
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 18)),
              trailing: Icon(Icons.notifications),
              onTap: () {},
            ),
            ListTile(
                title: Text('Admin Login',
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 18)),
                trailing: Icon(Icons.lock),
                onTap: () {}),
            ListTile(
              title: Text('Feedback',
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 18)),
              trailing: Icon(Icons.feedback),
              onTap: () {},
            ),
            ListTile(
              title: Text('Developers',
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 18)),
              trailing: Icon(Icons.developer_mode),
              onTap: () {
                Navigator.of(context).pushNamed("/e");
              },
            ),
            ListTile(
              title: Text('Close',
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 18)),
              trailing: Icon(Icons.close),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
