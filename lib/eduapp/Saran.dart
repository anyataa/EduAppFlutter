import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SaranScreen extends StatefulWidget {
  static String id = 'Saran_screen';
  @override
  _SaranScreenState createState() => _SaranScreenState();
}

class _SaranScreenState extends State<SaranScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Penilaian Aplikasi'),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          FlatButton(
            padding: EdgeInsets.all(0),
//                  pre test
            onPressed: () async {
              final url = 'https://forms.gle/NqMgP1zhAfc52XhM9';
              if (await canLaunch(url)) {
                await launch(
                  url,
                  forceSafariVC: false,
                );
              }
            },
            child: Container(
              height: 200,
              padding: const EdgeInsets.all(1),
              child: Card(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(
                          'images/login1.png',
                        ),
                        radius: 30.0,
                      ),
                    ),
                    Text(
                      'Penilaian Pengguna (Siswa)',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff4f73b6),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80.0),
                      child: Divider(
                        thickness: 3.0,
                        color: Color(0xff4f73b6),
                      ),
                    ),
                    Text(
                      'Klik untuk memberikan saran dan penilaian',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Color(0xff4f73b6),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FlatButton(
            padding: EdgeInsets.all(0),
//                  pre test
            onPressed: () async {
              final url = 'https://forms.gle/cQGjuoWnfy2tQCcD6';
              if (await canLaunch(url)) {
                await launch(
                  url,
                  forceSafariVC: false,
                );
              }
            },
            child: Container(
              height: 200,
              padding: const EdgeInsets.all(1),
              child: Card(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(
                          'images/login1.png',
                        ),
                        radius: 30.0,
                      ),
                    ),
                    Text(
                      'Penilaian Ahli Media',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff4f73b6),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80.0),
                      child: Divider(
                        thickness: 3.0,
                        color: Color(0xff4f73b6),
                      ),
                    ),
                    Text(
                      'Klik untuk memberikan saran dan penilaian',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Color(0xff4f73b6),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FlatButton(
            padding: EdgeInsets.all(0),
//                  pre test
            onPressed: () async {
              final url = 'https://forms.gle/VYNRLaT4WpCd3HnT6';
              if (await canLaunch(url)) {
                await launch(
                  url,
                  forceSafariVC: false,
                );
              }
            },
            child: Container(
              height: 200,
              padding: const EdgeInsets.all(1),
              child: Card(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(
                          'images/login1.png',
                        ),
                        radius: 30.0,
                      ),
                    ),
                    Text(
                      'Penilaian Ahli Materi',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff4f73b6),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80.0),
                      child: Divider(
                        thickness: 3.0,
                        color: Color(0xff4f73b6),
                      ),
                    ),
                    Text(
                      'Klik untuk memberikan saran dan penilaian',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Color(0xff4f73b6),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FlatButton(
            padding: EdgeInsets.all(0),
//                  pre test
            onPressed: () async {
              final url = 'https://forms.gle/tMW6z66J3T32iHfp8';
              if (await canLaunch(url)) {
                await launch(
                  url,
                  forceSafariVC: false,
                );
              }
            },
            child: Container(
              height: 200,
              padding: const EdgeInsets.all(1),
              child: Card(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(
                          'images/login1.png',
                        ),
                        radius: 30.0,
                      ),
                    ),
                    Text(
                      'Penilaian Ahli Bahasa',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff4f73b6),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80.0),
                      child: Divider(
                        thickness: 3.0,
                        color: Color(0xff4f73b6),
                      ),
                    ),
                    Text(
                      'Klik untuk memberikan saran dan penilaian',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Color(0xff4f73b6),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
