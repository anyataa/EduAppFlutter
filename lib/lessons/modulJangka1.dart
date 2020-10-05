import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/lessons/simulatorJangka.dart';

class JangkaDiameterLuar extends StatefulWidget {
  static String id = "DiameterLuar_screen";
  @override
  _JangkaDiameterLuarState createState() => _JangkaDiameterLuarState();
}

class _JangkaDiameterLuarState extends State<JangkaDiameterLuar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jangka Sorong: Diameter Dalam'),
      ),
      body: ListView(children: [
        Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Perhatikan gambar jangka sorong di bawah ini',
              style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
            ),
            Image.asset('images/diameterLuar.png'),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  Text(
                    'Pengukuran diameter dalam dilakukan dengan meletakan benda yang hendak diukur di bagian atas dari jangka sorong seperti terlihat pada gambar di atas.',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Perhatikan garis merah pada gambar.         ',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Garis merah tersebut merupakan garis skala nonius dan garis skala utama yang sejajar. Garis tersebut menunjukan nilai skala nonius yang kalian harus ambil.',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  simulatorJangkaSorong(),
                  Text(
                    'Klik tombol untuk menggunakan simulator',
                    style: TextStyle(
                      fontSize: 13.0,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Berlatih adalah kunci agar terampil. Berlatihlah dengan simulator jangka '
                    'sorong yang sudah disediakan ya! ',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
