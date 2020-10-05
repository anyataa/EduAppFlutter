import 'package:flutter/material.dart';
import 'package:flutter_app/lessons/K3L/K3L.dart';
import 'package:flutter_app/lessons/PengelasanPemotonganPengecoran/pemotongan.dart';
import 'package:flutter_app/lessons/PengelasanPemotonganPengecoran/pengecoran.dart';
import 'package:flutter_app/lessons/PengelasanPemotonganPengecoran/pengelasan.dart';
import 'package:flutter_app/lessons/lessonContent.dart';
import 'package:flutter_app/lessons/perkakasMesin/MesinGerinda.dart';
import 'package:flutter_app/lessons/perkakasMesin/mesinUmum.dart';
import 'package:flutter_app/lessons/perkakasMesin/perkakasBertenaga.dart';

class KompetensiView extends StatefulWidget {
  static String id = 'lessonViewKompetensi';
  @override
  _KompetensiViewState createState() => _KompetensiViewState();
}

class _KompetensiViewState extends State<KompetensiView> {
  final List<String> entries = <String>[
    'Kesehatan,Keselamatan Kerja dan Lingkungan(K3L)',
    'Alat Ukur Dasar dan Alat Ukur Presisi',
    'Perkakas Bertenaga dengan Operasi Genggam',
    'Pengoperasian Mesin Umum',
    'Pengoperasian Mesin Gerinda',
    'Teori Pengelasan',
    'Proses Pembentukan dan Fabrikasi Logam',
    'Teori Pengecoran',
  ];
  final List<String> image = <String>[
    'images/k3.gif',
    'images/microGif.gif',
    'images/perkakasGif.gif',
    'images/mesinUmum.gif',
    'images/gerindra.gif',
    'images/pengelasan.gif',
    'images/fabrikasi.gif',
    'images/pengecoran.gif'
  ];
  final List<String> button = <String>[
    KeseehatanDanKeselamatan.id,
    LessonContentScreen.id,
    PerkakasBertenaga.id,
    MesinUmum.id,
    MesinGerinda.id,
    PengelasanLogam.id,
    PemotonganLogam.id,
    PengecoranLogam.id
  ];
  final List<String> kd1 = <String>[
    '3.1 Memahami persyaratan keselamatan, kesehatan kerja dan lingkungan (K3L)',
    '3.2 Memahami konsep penggunaan alat ukur pembanding dan atau alat ukur dasar',
    '3.4 Menganalisis strategi penggunaan perkakas bertenaga/operasi digenggam  ',
    '3.6 Menerapkan prosedur pengoperasian mesin umum',
    '3.7 Menerapkan prosedur pengoperasian mesin gerinda alat potong',
    '3.8 Menerapkan proses pengelasan',
    '3.9 Menerapkan teknik pengerjaan pembentukan dan fabrikasi logam',
    '3.10 Menerapkan teknik pengecoran logam'
  ];
  final List<String> kd2 = <String>[
    '',
    '3.3 Memahami alat ukur Mekanik Presisi',
    '3.5 Mengevaluasi hasil penggunaan perkakas tangan',
    '',
    '',
    '',
    '',
    ''
  ];
  final List<String> tujuan = <String>[
    'Memahami pentingnya prosedur K3, menganalisis ragam resiko kerja yang dapat terjadi jika tidak menerapkan K3L, dan mengetahui ragam APD yang wajib digunakan',
    'Mengetahui bagian dari alat ukur, memutuskan pemilihan alat ukur yang tepat untuk pengukuran, mengukur dengan alat ukur dasar dan presisi.',
    'Mengetahui ragam perkakas bertenaga dengan operasi digenggam, mengetahui prosedur yang tepat untuk menggunakan perkakas bertenaga dengan operasi digenggam, dan mengetahui fungsi dari tiap perkakas.',
    'Mengetahui ragam mesin umum, mengetahui fungsi dari masing-masng mesin umum, dan mengetahui prosedur pengoperasian mesin umum yang tepat.',
    'Mengetahui fungsi mesin gerinda , menganalisis kapan perlu menggunakan mesin gerinda untuk proses kerja, dan menerapkan prosedur pengoperasian mesin gerinda yang tepat.',
    'Menerapkan prosedur pengelasan yang tepat, Memutuskan tipe pengelasan yang tepat berdasarkan material dan ketebalan plat, Menyimpulkan pemilihan elektroda dan tekanan pada pengelasan GMAW dan pengelasan OAW.',
    'Mengidentifikasi karakteristik geometri dari hasil ragam proses fabrikasi logam, memutuskan proses yang sesuai untuk geometri yang hendak dibentuk, dan merinci perbedaan ragam proses fabrikasi logam.',
    'Menerapkan prosedur pengecoran yang tepat, mengidentifikasi kapan harus menggunakan proses pengecoran, dan memutuskan suhu yang dibutuhkan dalam proses pengecoran berdasarkan  material yang dicor.'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mata Pelajaran: PDTM'),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return FlatButton(
              padding: EdgeInsets.all(0),
              onPressed: () {
                Navigator.pushNamed(context, button[index]);
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                height: 600,
                width: 400,
//                color: Colors.amber[colorCodes[index]],
                child: Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Image.asset('${image[index]}'),
                      ListTile(
                        title: Text(
                          '${entries[index]}',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4f73b6)),
                        ),
                        subtitle: Column(
                          children: [
                            SizedBox(height: 30),
                            Text(
                              '${kd1[index]} ',
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              '${kd2[index]} ',
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Divider(
                                thickness: 1.0,
                                color: Color(0xff4f73b6),
                              ),
                            ),
                            Text(
                              'Setelah mempelajari materi ini kamu akan mampu',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff4f73b6)),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              '${tujuan[index]} ',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
