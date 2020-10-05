import 'package:flutter/material.dart';
import 'package:flutter_app/lessons/PengelasanPemotonganPengecoran/sheetMetalCard.dart';

class SheetMetal extends StatefulWidget {
  static String id = 'Sheet_screen';
  @override
  _SheetMetalState createState() => _SheetMetalState();
}

class _SheetMetalState extends State<SheetMetal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mata Pelajaran: PDTM'),
      ),
      body: ListView(children: [
        Image.asset('images/deepdrawing.png'),
        Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Sheet metal forming adalah proses pembentukan pelat menjadi bentuk yang kompleks dan memiliki kontur. Coba kamu perhatikan sink untuk mencuci piring pada gambar. Gambar tersebut merupakan hasil dari sheet metal forming. Proses sheet metal forming yang akan kita pelajari pada materi ini akan meliputi deep drawing dan bending process.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              height: 500,
              child: SheetMetalCard(),
            )
          ],
        ),
      ]),
    );
  }
}
