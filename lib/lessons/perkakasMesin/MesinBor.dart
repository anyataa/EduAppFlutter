import 'package:flutter/material.dart';
import 'package:flutter_app/lessons/perkakasMesin/videoBubut.dart';
import 'package:flutter_app/lessons/perkakasMesin/videoMesinBor.dart';

class MesinBor extends StatefulWidget {
  static String id = ' MesinBor_screen';
  @override
  _MesinBorState createState() => _MesinBorState();
}

class _MesinBorState extends State<MesinBor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mesin Bor'),
      ),
      body: ListView(children: [
        Column(
          children: [
            Image.asset('images/bor1.gif'),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Text(
                    'Mesin bor adalah suatu jenis mesin gerakanya memutarkan '
                    'alat pemotong yang arah pemakanan mata bor hanya '
                    'pada sumbu mesin tersebut (pengerjaan pelubangan).  Pengeboran adalah operasi menghasilkan'
                    ' lubang berbentuk bulat dalam lembaran-kerja dengan'
                    ' menggunakan pemotong berputar yang disebut bor dan '
                    'memiliki fungsi untuk Membuat lubang, membuat lubang bertingkat, dan membesarkan lubang ',
                    style: TextStyle(fontSize: 17),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.network('https://i.ibb.co/j8PwWX9/bor2.gif'),
                  Text(
                    'Cara Menggunakan Mesin Bor:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    '1. Memilih mata bor (drill) yang sesuai dengan diameter lubang yang diinginkan',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    '2. Penyesuaian pemegangnya dan pastikan bahwa  cekam terpasang',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    '3. Pastikan lokasi lubang yang akan dibor dengan menggunakan Penggores (scriber), penitik (punch) dan, penggaris siku dan alat bantu lainnya.',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    '4. Jika sudah mesin sudah dipastikan  menyala maka mulailah mengebor benda kerja',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    '6. Hidupkan mesin dengan tombol / saklar  pengendali dan Lakukan penyayatan',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  VideoBor(),
                  SizedBox(
                    height: 40,
                  ),
                  Image.network('https://i.ibb.co/jHc0KTN/bor.gif'),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
