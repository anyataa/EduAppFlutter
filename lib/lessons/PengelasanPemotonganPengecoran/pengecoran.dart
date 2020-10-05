import 'package:flutter/material.dart';
import 'package:flutter_app/eduapp/navigation.dart';
import 'package:flutter_app/lessons/PengelasanPemotonganPengecoran/pengecoranBuku.dart';
import 'package:flutter_app/lessons/PengelasanPemotonganPengecoran/pengecoranCetakan.dart';
import 'package:flutter_app/lessons/PengelasanPemotonganPengecoran/pengecoranVideo.dart';

class PengecoranLogam extends StatefulWidget {
  static String id = 'Pengecoran_screen';
  @override
  _PengecoranLogamState createState() => _PengecoranLogamState();
}

class _PengecoranLogamState extends State<PengecoranLogam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teori Pengecoran'),
      ),
      body: ListView(
        children: [
          Image.asset('images/pengecoran.gif'),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Text(
                  'Konsep Pengecoran',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  'proses pembuatan benda dengan mencairkan logam dan menuangkan ke dalam rongga cetakan. Proses ini dapat digunakan untuk membuat benda-benda dengan bentuk rumit. ',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Kenapa menggunakan pengecoran? Kapan harus memilih pengecoran? perhatikan studi kasus ini!',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
                Image.asset('images/cor.png'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Benda dengan banyak detail geometri akan  sangat sulit dan sangat mahal jika dibuat dengan metode lain seperti pembubutan tapi dapat diproduksi masal secara ekonomis menggunakan teknik pengecoran yang tepat. Bayangkan berapa banyak waste jika pembuatan bentuk seperti gambar di atas yang memiliki banyak variasi detail geometri dengan proses bor atau bubut? Maka dari itu kalian harus jeli dalam memilih proses produksi yang tepat menyesuaikan dengan geometri benda yang hendak kalian buat.',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Cetakan untuk Pengecoran Logam',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  'Pada proses pengecoran kalian membutuhkan cetakan/mold. Cetakan terdiri atas dua bagian utama yang membentuk bagian dalam dan bagian luar. Pengecoran logam biasa menggunakan cetakan pasir atau sand mold. Berikut kalian akan mempelajari proses membuat cetakan pada pengecoran.',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset('images/cetakan.gif'),
                Text(
                  '',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Text(
                        'Terdapat dua bagian pada cetakan cor, yaitu pola (cope) dan inti (core). Pola bertujuan untuk membentuk geometri bagian dalam. Inti bertujuan untuk membentuk geometri bagian dalam.',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Image.asset('images/Molding.png'),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Sekarang kalian sudah tahu bahwa pada proses pengecoran logam kalian membutuhkan cetakan. Ayo kita pelajari langkah membuat cetakan dalam pengecoran ya!',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      PengecoranCetakanVideo(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Text(
                        'Logam untuk Pengecoran',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.justify,
                      ),
                      Image.asset('images/pengecoran3.gif'),
                      Text(
                        'Terdapat berbagai jenis logam yang dapat dicor. Pada proses pengecoran, logam akan dicairkan menggunakan mesin tanur seperti pada gambar di atas. Penggunaan mesin tanur harus dibekali dengan pengetahuan titik cair dari logam yang akan kamu cor. Berikut tabel mengenai titik cair dari beragam logam. Jika logam yang hendak kamu cairkan tidak ada di sini kamu dapat mencarinya di website resmi organisasi material seperti ASTM.',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Perhatikan gambar. Berapakah temperatur yang harus kamu pasang di mesin tanur untuk mencaikan logam Alumunium? 660 derajat Celcius adalah jawabannya. Cobalah tentukan temperatur yang dibutuhkan berdasarkan gambar di bawah. Berapa temperatur leleh untuk Tungsten, Besi, dan Mangan?',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Image.asset('images/cor2.png'),
                      Text(
                        'Logam yang sudah dicairkan di mesin tanur lalu akan dituang ke bucket. Bucket akan digunakan untuk menuang cairan logam ke cetakan. Perhatikan gambar proses penuangan logam cair dari bucket berikut.',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Image.asset('images/pengecoran2.gif'),
                      PengecoranVideo(),
                      Text(
                        'Kamu tertarik mengetahui sifat mekanik dari hasil pengecoran. Sifat mekanik meliputi kekerasan, keuletan, dan kemampuan untuk diproses dengan mesin? Ayo pelajari lebih dalam. Klik link buku panduan untuk mempelajari Teknik Pengecoran. ',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      PengecoranBuku(),
                      SizedBox(
                        height: 60,
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }
}
