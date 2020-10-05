import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PenilaianScreen extends StatefulWidget {
  static String id = 'Penilaian';
  @override
  _PenilaianScreenState createState() => _PenilaianScreenState();
}

class _PenilaianScreenState extends State<PenilaianScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tugas'),
      ),
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            sliver: SliverGrid.count(
              crossAxisCount: 1,
              children: <Widget>[
                FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 0),
//                  pre test
                  onPressed: () async {
                    final url = 'https://forms.gle/HZXmGrnT3rZnFjy77';
                    if (await canLaunch(url)) {
                      await launch(
                        url,
                        forceSafariVC: false,
                      );
                    }
                  },
                  child: Container(
                    height: 300,
                    padding: const EdgeInsets.all(1),
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(
                                'images/login1.png',
                              ),
                              radius: 60.0,
                            ),
                          ),
                          Text(
                            'Mulai Pre-Test',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4f73b6),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 80.0),
                            child: Divider(
                              thickness: 3.0,
                              color: Color(0xff4f73b6),
                            ),
                          ),
                          Text(
                            'Klik untuk mulai',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
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
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            sliver: SliverGrid.count(
              crossAxisCount: 1,
              children: <Widget>[
                FlatButton(
                  onPressed: () async {
                    final url = 'https://forms.gle/YqGwUBw52CaoLx1r8';
                    if (await canLaunch(url)) {
                      await launch(
                        url,
                        forceSafariVC: false,
                      );
                    }
                  },
                  child: Container(
                    height: 300,
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
                              radius: 60.0,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Mulai Post-Test',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4f73b6),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 80.0),
                            child: Divider(
                              thickness: 3.0,
                              color: Color(0xff4f73b6),
                            ),
                          ),
                          Text(
                            'Klik untuk mulai',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
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
          ),
        ],
      ),
    );
  }
}
