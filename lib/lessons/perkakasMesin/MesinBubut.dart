import 'package:flutter/material.dart';
import 'package:flutter_app/lessons/perkakasMesin/videoBubut.dart';

class MesinBubut extends StatefulWidget {
  static String id = 'MesinBubut_screen';
  @override
  _MesinBubutState createState() => _MesinBubutState();
}

class _MesinBubutState extends State<MesinBubut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mesin Bubut'),
      ),
      body: ListView(children: [
        Column(
          children: [
            Image.asset('images/bubut1.gif'),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Text(
                    'Prinsip kerja mesin bubut adalah benda kerja yang berputar,'
                    ' sedangkan pisau bubut bergerak memanjang dan melintang. '
                    'Dari kerja ini dihasilkan sayatan dan benda kerja yang umumnya simetris.',
                    style: TextStyle(fontSize: 17),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.network('https://i.ibb.co/DVp1L9m/bubut2.gif'),
                  Text(
                    'Cara Menggunakan Mesin Bubut:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    '1. Siapkan peralatan dan perlegkapan yang akan digunakan',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    '2. Cek kondisi / kesiapan mesin dan  sumber utama arus',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    '3. Atur putaran spindel yang akan digunakan sesuaikan dengan material yang  dan ditentukan melalui perhitungan atau tabel  cutting speed',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    '4. Pasang senter putar pada kepala lepas dan pasang pahat dengan ujung sayat setinggi ujung senter',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    '5. Pasang / cekam benda kerja lalu dekatkan pahat pada ujung benda kerja yang akan disayat',
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
                  VideoBubut(),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Ragam Pahat pada Proses Bubut:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),
                  Image.asset('images/bubut4.png'),
                  Text(
                    'Pahat bubut digunakan sebagai alat potong pada '
                    'mesin bubut untuk menyayat benda kerja menjadi bentuk '
                    'yang diinginkan. Pahat bubut harus disesuaikan dengan '
                    'jenis pekerjaan dan jenis bahan benda kerja yang akan '
                    'dibubut. Material dari pahat bubut harus mempunyai sifat '
                    'keras, ulet, tahan panas, dan ekonomis. Beberapa material'
                    ' pahat bubut yang paling sering digunakan adalah baja '
                    'perkakas, baja Paduan (Alloy tool steel) termasuk didalamnya HSS,'
                    ' Cemented carbide, Diamond Tips dan ceramics. ',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Pahat bubut harus digerinda untuk mengasah sisi '
                      'potong dengan tujuan supaya sisi potong mempunyai '
                      'bentuk dan lokasi yang benar terhadap tangkainya dan '
                      'juga dapat menghasilkan beberapa permukaan yang '
                      'meliputi permukaan atas, sisi dan muka. Selain itu '
                      'bentuk dari sisi potong harus menusuk benda kerja '
                      'secara efisien dalam penyayatan logam. Pahat bubut yang '
                      'digerinda akan menghasilkan beberapa permukaan. '
                      'Permukaan ini meliputi permukaan atas, sisi, dan muka.'
                      ' Permukaan ujung yang merupakan sisi potong didapatkan '
                      'dari pertemuan ketiga permukaan tersebut dan radius G.'
                      ' Permukaan-permukaan ini perlu diketahui untuk mengasah '
                      'pahat dengan sudut yang sesuai dengan pekerjaan yang '
                      'diinginkan.')
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
