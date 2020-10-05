import 'package:flutter/material.dart';

class LasSMAW extends StatefulWidget {
  static String id = 'lasOksi_screen';
  @override
  _LasSMAWState createState() => _LasSMAWState();
}

class _LasSMAWState extends State<LasSMAW> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Las SMAW'),
      ),
      body: ListView(
        children: [
          Image.asset('images/pengelasan.png'),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text(
                  'Definisi:',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  'sebuah proses penyambungan logam yang menggunakan energi panas untuk mencairkan benda kerja dan elektroda (bahan pengisi). Energi panas pada proses pengelasan SMAW dihasilkan karena adanya lompatan ion (katoda dan anoda) listrik yang terjadi pada ujung elektroda dan permukaan material.',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  'Pemilihan elektroda didasarkan pada ketebalan plat yang hendak di las, posisi pengelasan, kekuatan sambungan, dan jenis material logam yang hendak di las. Berikut cara membaca kode pada elektroda agar kamu dapat memilih elektroda yang sesuai untuk proses pengelasanmu. Jangan lupa untuk memilih besar arus yang sesuai pada proses pengelasan.',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.justify,
                ),
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
                  'Pemilihan Elektroda:',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
                Image.asset('images/pengelasan2.png'),
                Text(
                  'Salah satu prosedur utama yang harus kalian lakukan sebelum pengelasan adalah pemilihan elektroda. Elektroda adalah bahan tambahan berbentuk silinder panjang yang berguna untuk mengisi sambungan dan menyalakan panas busur listrik yang berasal dari mesin las.',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  'Pemilihan elektroda didasarkan pada ketebalan plat yang hendak di las, posisi pengelasan, kekuatan sambungan, dan jenis material logam yang hendak di las. Berikut cara membaca kode pada elektroda agar kamu dapat memilih elektroda yang sesuai untuk proses pengelasanmu. Jangan lupa untuk memilih besar arus yang sesuai pada proses pengelasan.',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Text(
                'Peralatan untuk Pengelasan SMAW:',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify,
              ),
              Text(
                '1. APD (Alat Perlindungan Diri)',
                style: TextStyle(
                  fontSize: 17,
                ),
                textAlign: TextAlign.justify,
              ),
              Text(
                '2. Mesin Las',
                style: TextStyle(
                  fontSize: 17,
                ),
                textAlign: TextAlign.justify,
              ),
              Text(
                '3. Elektroda',
                style: TextStyle(
                  fontSize: 17,
                ),
                textAlign: TextAlign.justify,
              ),
              Text(
                '4. Palu Terak',
                style: TextStyle(
                  fontSize: 17,
                ),
                textAlign: TextAlign.justify,
              ),
              Text(
                '5. Tang Penjepit',
                style: TextStyle(
                  fontSize: 17,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
