import 'package:flutter/material.dart';
import 'package:flutter_app/lessons/simulatorJangka.dart';

class JangkaDiameterDalam extends StatefulWidget {
  static String id = 'DiameterDalam_screen';
  @override
  _JangkaDiameterDalamState createState() => _JangkaDiameterDalamState();
}

class _JangkaDiameterDalamState extends State<JangkaDiameterDalam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jangka Sorong: Diameter Luar'),
      ),
      body: ListView(children: [
        Column(
          children: [
            Image.asset('images/DiameterDalam.png'),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  Text(
                    'Berdasarkan pada prinsip pengukuran dengan '
                    'jangka sorong pada Modul Diameter Dalam, dapatkah kalian mengetahui ukuran '
                    'dari benda berwarna biru?',
                    style: TextStyle(fontSize: 15.0),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Ingat ya, dalam pengukuran di Teknik Mesin selalu gunakan satuan milimeter(mm). '
                    'Sehingga hasil pengukuran benda biru adalah  1,3 mm. Apakah hasil ini sama dengan tebakan kalian? '
                    'Jika belum, berlatihlah dengan simulator jangka sorong yang sudah disediakan. Jika tebakan kalian benar,'
                    ' selamat dan terus berlatih juga agar semakin terampil.',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            simulatorJangkaSorong(),
          ],
        ),
      ]),
    );
  }
}
