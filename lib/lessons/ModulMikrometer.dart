import 'package:flutter/material.dart';
import 'package:flutter_app/eduapp/navigation.dart';
import 'simulatorMikrometer100.dart';

class ModulMikrometer extends StatefulWidget {
  static String id = 'Mikrometer_screen';
  @override
  _ModulMikrometerState createState() => _ModulMikrometerState();
}

class _ModulMikrometerState extends State<ModulMikrometer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mikrometer'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Image.asset('images/microGif.gif'),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    Text(
                      'Mikrometer merupakan alat ukur dengan tingkat'
                      ' ketelitian 1/100 dan 1/1000 dalam mm. Prinsip satuan yang digunakan pada pengukuran '
                      'mikrometer sama dengan jangka sorong, yaitu menggunakan satuan milimeter(mm).',
                      style: TextStyle(fontSize: 15.0),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Standar satuan pengukuran : milimeter',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Lantas, kapan mikrometer harus digunakan?',
                      style: TextStyle(
                        fontSize: 17.0,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Mikrometer harus digunakan saat tingkat presisi yang dibutuhkan pada pengukuran amat tinggi. '
                      'Pada tingkat ketelitian dalam mm membutuhkan 2 angka dibelakang koma'
                      ' maka dibutuhkan mikrometer. Kenapa bukan penggaris atau alat ukur lainnya? '
                      'Jawabannya adalah karena tingkat ketelitian penggaris tidak mencapai 0.001 mm.'
                      ' Cobalah kamu ambil penggaris dan perhatikan tingkat ketelitiannya.',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Ingat : Mikrometer digunakaan saat membutuhkan ketelitian pengukurang yang tinggi',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Image.asset('images/BagianMikrometer.png'),
                    Text(
                      'Bagian - Bagian pada Mikrometer',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Terdapat dua bagian utama pada mikrometer yang terlibat dan penting'
                      ' pada proses pengukuran, yaitu:',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                    Text(
                      '1. Lengan utama : Menunjukan skala utama',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '2. Lengan putar : Menunjukan skala nonius',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Sekarang, jika kalian telah membaca modul ini maka kalian telah mengetahui jawaban dari:',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                    Text(
                      '1. Apa itu mikrometer?',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                    Text(
                      '2. Kapan kalian harus menggunakan mikrometer?',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                    Text(
                      '3. Apa saja bagian pada mikrometer?',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Selanjutnya kalian akan belajar mengenai cara menggunakan mikrometer. Untuk mengetahui'
                      ' cara penggunaan mikrometer 1/100 dan 1/1000 klik pada tombol di bawah ya!',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                    SimulatorMikrometer100()
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }
}
