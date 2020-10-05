import 'package:flutter/material.dart';
import 'package:flutter_app/eduapp/navigation.dart';
import 'package:flutter_app/lessons/perkakasMesin/videoMesinGerinda.dart';

class MesinGerinda extends StatefulWidget {
  static String id = 'MesinGerinda_screen';
  @override
  _MesinGerindaState createState() => _MesinGerindaState();
}

class _MesinGerindaState extends State<MesinGerinda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mesin Gerinda'),
      ),
      body: ListView(children: [
        Column(
          children: [
            Image.asset('images/gerindra.gif'),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Text(
                    'Fungsi Mesin Gerinda',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    '1. Memotong benda kerja yang  tidak  terlalu tebal.',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '2. Memotong semua jenis material dengan menyesuaikan mata gerinda.',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '3. Menghilangkan maupun menghaluskan sisi tajam pada benda kerja.',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '4.Mengasah alat potong dan pahat agar tetap tajam.',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '5. Meratakan dan menghaluskan permukaan benda kerja.',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '6. Membentuk profil seperti lengkungan pada benda kerja.',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Kapan harus menggunakan Mesin Gerinda untuk proses finishing?',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Mesin gerinda digunakan pada '
                    'proses finishing dengan tingkat ketelitian tinggi. Berbeda dengan mesin ketam tangan '
                    'yang memiliki kemampuan kehalusan finishing terbatas. Mesin gerinda mampu mencapai kehalusan finishing'
                    ' permukaan N5',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      VideoMesinGerinda(),
                      Text(
                        'Cara Menggunakan Mesin Gerinda:',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        '1. Hidupkan lampu sebagai penerangan dan pastikan menggunakan APD.',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '2. pastikan mesin serta batu gerinda sudah dalam keadaan yang baik di gunakan. Pastikan kaca pelindung sudah terpasang pada mesin gerinda.',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        ' 3. Sesuaikanlah jarak antara batu gerinda dan landasan tekan tombol start pada mesin tunggu sampai putaran mesin berjalan dengan normal.',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '4. Pakailah alat pelindung muka atau facial selama melakukan pekerjaan jangan lupa menggunakan vice grip untuk memegang benda-benda yang kecil.',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '5. Tekanlah tombol stop setelah selesai melakukan pekerjaan menggerinda tunggulah hingga mesin benar-benar berhenti berputar.',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ]),
      bottomNavigationBar: NavigationBar(),
    );
  }
}
