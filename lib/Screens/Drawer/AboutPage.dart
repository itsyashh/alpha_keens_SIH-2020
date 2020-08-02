import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About us"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Image.asset(
                    "Assets/aia.png",
                    height: 150,
                    width: 150,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    'The Airports Authority of India or AAI is a statutory'
                    'body (created through the Airports Authority of India Act, 1994)'
                    'working under the Ministry of Civil Aviation, '
                    'Government of India is responsible for creating, upgrading,'
                    'maintaining and managing civil aviation infrastructure in India.'
                    'It provides Communication Navigation Surveillance / Air Traffic'
                    'Management (CNS/ATM) services over Indian airspace and adjoining'
                    'oceanic areas. With the mission to be the foundation of an enduring'
                    'Indian aviation network, providing high quality, safe and customer'
                    'oriented airport & air navigation services, AAI is currently managing'
                    'a total of 137[1] Airports, including 23[1] International Airports, 10'
                    'Customs Airports, 81 Domestic Airports and 23 Civil enclaves at Defense'
                    'Airfields. AAI also has ground installations at all airports and 25'
                    'other locations to ensure safety of aircraft operations. AAI covers'
                    'all major air-routes over Indian landmass via 29 Radar installations'
                    'at 11 locations along with 700 VOR/DVOR installations co-located with'
                    'Distance Measuring Equipment (DME). 52 runways are provided with'
                    'Instrument landing system (ILS) installations with Night Landing'
                    'Facilities at most of these airports and Automatic Message Switching System at 15 Airports.',
                    style: TextStyle(
                      fontFamily: 'serif',
                      fontSize: 17,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, left: 15),
                  child: Text(
                    "CORPORATE ADDRESS",
                    style: TextStyle(
                        fontFamily: 'serif',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, left: 15),
                  child: Text(
                    "Airports Authority of India,\nRajiv Gandhi Bhawan,\nSafdarjung Airport,\nNew Delhi-110003Ph : 91-11-24632950",
                    style: TextStyle(
                      fontFamily: 'serif',
                      fontSize: 17,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
