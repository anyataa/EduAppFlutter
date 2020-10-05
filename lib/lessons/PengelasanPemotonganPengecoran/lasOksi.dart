import 'package:flutter/material.dart';

class LasOksiAsetilen extends StatefulWidget {
  static String id = 'LasOksi_screen';
  @override
  _LasOksiAsetilenState createState() => _LasOksiAsetilenState();
}

class _LasOksiAsetilenState extends State<LasOksiAsetilen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Las Oxigen Acetyline (OAW)'),
      ),
      body: ListView(
        children: [
          Image.asset('images/oksi1.png'),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Text(
                  'Suatu proses pengelasan gas yang menggunakan sumber panas nyala api melalui pembakaran gas oksigen dan gas asetilen untuk mencairkan logam dan bahan tambah. Dalam pengelasan OAW ini biasanya digunakan hanya untuk plat plat tipis, hal ini dikarenakan sambungan las OAW ini mempunyai kekuatan yang rendah dibandingkan las busur listrik.',
                  style: TextStyle(fontSize: 17),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Pada pengelasan OAW kamu harus memperhatikan beberapa hal. Ketebalan plat memiliki standar tekanan yang berbeda untuk proses pemotongan maupun pengelasan. Perhatukan tabel di bawah  untuk mengetahui spesifikasi ketebalan plat dan tekanan untuk pengelasan OAW.',
                  style: TextStyle(fontSize: 17),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Tabel hubungan ketebalan plat dan spesifikasi tekanan gas untuk pemotongan',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Image.asset('images/oksi2.png'),
                Text(
                  'Saat praktikum dan kamu lupa standar spesifikasi las OAW untuk ketebalan plat mu selalu merujuk kepada tabel ini. Sekarang kamu sudah dapat menentukan spesifikasi untuk pengelasan OAW. Hebat!',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  'Tontonlah video tutorial pengelasan OAW sebelum kamu praktikum agar lebih handal seperti profesional. Kamu juga harus selalu ingat untuk menggunakan APD. Berlatihlah karena itu adalah kunci keberhasilan.',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
