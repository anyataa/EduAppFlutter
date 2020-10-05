import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter_app/games/games.dart';
import 'package:flutter_app/eduapp/home.dart';
import 'package:flutter_app/eduapp/navigation.dart';
import 'package:flutter_app/eduapp/Penilaian.dart';
import 'package:flutter_app/lessons/lessonView.dart';

class KeseehatanDanKeselamatan extends StatefulWidget {
  static String id = 'KesehatanDanKeselamatan_screen';
  @override
  _KeseehatanDanKeselamatanState createState() =>
      _KeseehatanDanKeselamatanState();
}

class _KeseehatanDanKeselamatanState extends State<KeseehatanDanKeselamatan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('K3L'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          children: [
            Column(
              children: [
                Image.asset('images/k3.gif'),
                Text(
                  'Keselamatan dan Kesehatan merupakan Hak Asasi Manusia',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Penerapan prosedur K3L pada saat melakukan kerja amatlah penting. '
                  'K3L pada hakikatnya bertujuan untuk melindungi kita dari segala resiko kerja '
                  'yang mungkin terjadi di lingkungan kerja kita. Ingat dengan menerapkan K3L berarti kita melindungi'
                  ' diri kita dan juga orang lain yang bekerja bersama kita.',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  'Tahukan kamu perbedaan antara profesional dan amatir '
                  'dalam melakukan kerja? Perbedaan keduanya terletak pada'
                  ' kemampuan menerapkan prosedur yang berlaku. Maka dari itu, '
                  'agar kamu memiliki kompetensi seperti profesional mulailah '
                  'terapkan prosedur K3L dari sekarang saat sedang berkegiatan '
                  'praktikum.',
                  style: TextStyle(
                    fontSize: 17,
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
                          'Kecelakaan Kerja',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Image.network(
                          'https://i.ibb.co/zPtz95W/work.gif',
                        ),
                        Text(
                          'PERHATIKAN GAMBAR DI ATAS',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Menurutmu apa yang akan terjadi jika pekerja  tidak menerapkan prosedur K3L seperti menggunakan tali pengaman  saat kejadian tersebut terjadi?',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Definisi Kecelakaan Kerja:',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Kejadian tidak terduga yang terjadi '
                          'akibat suatu hal yang tidak diharapkan sehingga menimbulkan kerugian '
                          'material dan penderitaan bagi yang mengalaminya maupun lingkungan sekitarnya.',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Kerugian akibat kecelakaan kerja (5K):',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '1. Kerusakan, kerusakan pada kecelakaan kerja biasa dialami oleh mesin atau alat produksi.',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          '2. Kekacauan, kekacauan organisasi biasa terjadi saat terjadi kecelakaan kerja karena panik.',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          '3. Kesedihan, kesedihan terjadi akibat timbul kerugian material, psikis, dan fisik yang ditimbulkan dari kecelakaan kerja.',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          '4. Kecacatan, kecacatan biasa terjadi pada pekerja yang tidak menerapkan prosedur K3L atau bisa juga dialami oleh rekan kerja dari pekerja yang melakukan kelalaian dalam penerapan  K3L.',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          '5. Kematian, kerugian terbesar pada kecelakaan kerja akibat kelalaian yang fatal adalah kematian dari pekerja. ',
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
                          'Pencegahan Kecelakaan Kerja',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Image.network(
                          'https://thumbs.gfycat.com/SphericalGrandIndianringneckparakeet-small.gif',
                        ),
                        Text(
                          'PERHATIKAN GAMBAR DI ATAS',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Apa yang dilakukan oleh pekerja di atas sebelum memulai bekerja? '
                          'Apa yang ia perhatikan terlebih dahulu? Apa yang ia gunakan sebelum bekerja?',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Usaha pencegahan:',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '1. Selalu disiplin dalam menerapkan prosedur K3L.       ',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          '2. Selalu menerapkan standarisasi kerja yang ada.       ',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          '3. Menggunakan APD pada setiap kegiatan kerja.          ',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          '4. Memperhatikan sekitar dan selalu fokus dalam melakukan suatu pekerjaan.',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          '5. Tidak bercanda dan melakukan hal yang beresiko lainnya di lingkungan kerja.',
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
                          'Gunakan APD sebagai bentuk penerapan K3L',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Image.network('https://i.ibb.co/r5LDRf9/ppe.jpg'),
                        Text(
                          'Alat Perlindungan Diri (APD):',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Alat yang melindungi bagian tubuh manusia dari resiko kerja.',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Ragam APD yang harus digunakan:',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          '1. Pelindung kepala dan muka, seperti helm.',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          '2. Pelindung mata, seperti kaca mata safety.',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          '3. Pelindung alat pernapasan, seperti masker.',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          '4. Pelindung telinga, seperti noise cancelling buds).',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          '5. Pelindung tangan, seperti sarung tangan kerja. ',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          '6. Pelindung kaki, seperti sepatu safety.',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }
}
