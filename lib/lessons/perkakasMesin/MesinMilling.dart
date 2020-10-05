import 'package:flutter/material.dart';
import 'package:flutter_app/lessons/perkakasMesin/videoMesinMilling.dart';

class MesinMilling extends StatefulWidget {
  static String id = 'MesinMilling_screen';
  @override
  _MesinMillingState createState() => _MesinMillingState();
}

class _MesinMillingState extends State<MesinMilling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mesin Milling/Frais'),
      ),
      body: ListView(children: [
        Column(
          children: [
            Image.asset('images/milling1.gif'),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Text(
                    'Proses pemesinan frais/milling adalah proses '
                    'penyayatan benda kerja dengan alat potong'
                    ' dengan mata potong jamak yang berputar. '
                    'Proses penyayatan dengan gigi potong yang banyak '
                    'yang mengitari pahat ini bisa menghasilkan proses'
                    ' pemesinan lebih cepat. Permukaan yang disayat '
                    'bisa berbentuk datar, menyudut, atau melengkung. Permukaan benda kerja bisa juga berbentuk kombinasi dari beberapa bentuk.',
                    style: TextStyle(fontSize: 17),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Pisau Mesin Milling/Frais',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset('images/pisauFrais.png'),
                  Text(
                    'Mesin frais digunakan untuk menghasilkan permukaan benda kerja secara akurat dengan gerakan utama berputar. Pemilihan dan penggunaan pisau frais harus dipraktekkan dalam upaya memperoleh hasil yang optimum. Selain pemilihan kecepatan spindel yang tepat, operator mesin harus mengetahui bagaimana kerja mesin frais pada saat menggunakan pisau frais dengan kelonggaran yang berbeda-beda.',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  VideoMilling(),
                  SizedBox(
                    height: 10,
                  ),
                  Image.network('https://i.ibb.co/HzX0ZJ8/milling2.gif')
                ],
              ),
            ),
          ],
        ),
      ]),
    );
    ;
  }
}
