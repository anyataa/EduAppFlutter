import 'package:flutter/material.dart';
import 'package:flutter_app/eduapp/navigation.dart';

class PerkakasBertenaga extends StatefulWidget {
  static String id = 'Perkakas_screen';
  @override
  _PerkakasBertenagaState createState() => _PerkakasBertenagaState();
}

class _PerkakasBertenagaState extends State<PerkakasBertenaga> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perkakas Bertenaga'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          children: [
            Column(
              children: [
                Image.asset('images/perkakasGif.gif'),
                Text(
                  'Pengoperasian perkakas genggam bertenaga'
                  ' mempunyai peranan sangat penting  dalam proses manufaktur logam. Perkakas tangan'
                  ' bertenaga biasa digunanakan pada proses pembuatan cetakan kayu pada pengecoran logam.'
                  'Perkakas genggam bertenaga dapat diartikan sebagai segala jenis perkakas'
                  ' yang sumber tenaga utamanya bukan dari penggunanya melainkan dari mesin dan '
                  'dioperasikan dengan cara digenggam oleh tangan pengguna.'
                  ' Terdapat beberapa jenis perkakas genggam bertenaga yang umum, yaitu '
                  'gergaji pita, bor tangan, dan ketam tangan. Berikut penjelasan dan cara penggunaan '
                  'dari masing - masing perkakas tangan bertenaga tersebut.',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          'Gergaji Pita',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Image.asset('images/jigsaw.png'),
                        Text(
                          'Fungsi:',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Melakukan pemotongan lurus pada benda kerja',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          'Cara penggunaan:',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '1. Pastikan colokan/steker gergaji pita tidak terhubung dengan stop'
                          ' kontak agar tidak terjadi hal yang tidak diinginkan.',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          '2. Gunakan kacamata dan APD saat menggunakan '
                          'gergaji pita, agar terhindar dari kecelakaan saat bekerja.',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          '3. Pasanglah mata gergaji dan kencangkan bautnya m'
                          'enggunakan kunci L yang  tersedia '
                          ' untuk gergaji pita tersebut.',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          '4. Pastikan saklar/switch pada gergaji pita pada posisi off sebelum memasang steker pada stop kontak.',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          '5. Nyalakan mesin dengan menekan atau menarik saklar. Umunya pada tipe terentu terdapat saklar untuk mengatur'
                          ' kecepatan gergaji tangan. Untuk mendapatkan kecepatan yang dibutuhkan, putarlah saklar.',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          'Ketam Tangan',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Image.asset('images/ketam.png'),
                        Text(
                          'Fungsi:',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Meratakan permukaan pada kayu, mengetam miring, mengetam lurus, '
                          'dan mengetam siku',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Cara penggunaan:',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '1. Pastikan permukaan benda kerja lurus pada meja kerja.',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          '2. Siapkan mesin ketam, dan atur pemakaian pisau ke angka 0.8mm - 1.6mm',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          '3. Atur tudung pengaman dan pastikan colokan belum terhubung',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          '4. Jika tudung sudah siap maka pasang saklar dan nyalakan mesin.',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          '5. Jalankan ketam tangan dengan posisi tangan kiri menekan ketam dan tangan kanan mendorong. '
                          'Pada setiap sekitar 20cm posisi tangan kanan dan tangan kiri boleh bergantian jika terasa pegal.',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          'Bor Tangan',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Image.asset('images/bor.png'),
                        Text(
                          'Fungsi:',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Melubangi benda kerja',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Cara penggunaan:',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '1. Pastikan bor dalam keadaan mati dan tidak terpasang ke saklar.',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          '2. Pasang mata bor yang sesuai dan kencangkan dengan kunci cekam yang disediakan.'
                          ' Pastikan terpasang kencang',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          '3. Pastikan benda kerja yang hendak dibor terpasang pada penjepit.',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          '4. Pasang bor ke saklar dan nyalakan mesin. Pilih kecepatan yang sesuai.',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          '5. Pastikan posisi bor tegak lurus dengan benda kerja. Pegang bor dengan erat'
                          ' dan mantap lalu mulai lah melubangi bagian yang sudah ditandai dengan bor.',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }
}
