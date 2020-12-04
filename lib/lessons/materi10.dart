import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Materi10 extends StatefulWidget {
  static String id = 'Materi_kelas10';
  @override
  _Materi10State createState() => _Materi10State();
}

class _Materi10State extends State<Materi10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Materi'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlatButton(
            onPressed: () async {
              final url =
                  'https://drive.google.com/drive/folders/1hpFAx8vBAAUy4-h47iaqvrbeasLF7TUL?usp=sharing';
              if (await canLaunch(url)) {
                await launch(
                  url,
                  forceSafariVC: false,
                );
              }
            },
            child: Container(
              height: 500,
              padding: const EdgeInsets.all(1),
              child: Card(
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(
                          'images/lesson.png',
                        ),
                        radius: 150.0,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Materi dan Buku',
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
                      'Tekan untuk menuju ke materi',
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
    );
  }
}
