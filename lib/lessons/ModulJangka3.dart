import 'package:flutter/material.dart';
import 'package:flutter_app/lessons/simulatorJangka.dart';

class JangkaKedalaman extends StatefulWidget {
  static String id = 'Kedalaman_screen';
  @override
  _JangkaKedalamanState createState() => _JangkaKedalamanState();
}

class _JangkaKedalamanState extends State<JangkaKedalaman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jangka Sorong: Kedalaman'),
      ),
      body: ListView(
        children: [
          Column(children: [
            SizedBox(
              height: 20.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'Tahukah kamu bagian ujung jangka sorong dapat digunakan '
                'untuk mengukur kedalaman benda?',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
            ),
            Image.asset('images/Kedalaman.png'),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                  'Pada pengukuran kedalaman digunakan bagian ujung dari jangka sorong. '
                  'Bagian ini dapat ditarik dan hasil pengukuran dilihat di bagian kepala jangka sorong. '
                  'Cara membaca hasil pengukuran kedalaman sama dengan cara membaca pengukuran pada diameter.'),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text('Perhatikan  gambar di atas yang sudah diperbesar berikut'),
            Image.asset('images/KedalamanZoom.png'),
            Text('Berapakah hasil pengukuran kedalaman di atas?'),
            Text(
              '4 mm  +  0,2 mm  =  4,2 mm',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                  'Sekarang kalian sudah mengetahui cara mengukur kedalaman dengan jangka sorong. '
                  'Selanjutnya, berlatihlah untuk mengingkatkan kemampuan kalian dengan simulator jangka sorong yang sudah '
                  'disediakan berikut ini ya!'),
            ),
            simulatorJangkaSorong()
          ])
        ],
      ),
    );
  }
}
