import 'package:flutter/material.dart';

class DeveloperPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Developers"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20),
                    image:
                        DecorationImage(image: AssetImage("Assets/yash.jpg"))),
              ),
              Container(
                child: Text(
                  "Mobile Application Developer\n             (Team Leader)",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("Assets/monika.jpeg"))),
              ),
              Container(
                child: Text(
                  "Mobile Application Developer",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("Assets/akash.jpeg"))),
              ),
              Container(
                child: Text(
                  "Web Developer",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("Assets/sanket.jpeg"))),
              ),
              Container(
                child: Text(
                  "Web Developer",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("Assets/vinay.jpeg"))),
              ),
              Container(
                child: Text(
                  "Hardware Support",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("Assets/naresh.jpeg"))),
              ),
              Container(
                  child: Text(
                "Harware Support",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
