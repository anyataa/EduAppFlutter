import 'package:flutter/material.dart';
import 'package:flutter_app/eduapp/navigation.dart';
import 'package:flutter_app/lessons/PengelasanPemotonganPengecoran/lasOksi.dart';
import 'package:flutter_app/lessons/PengelasanPemotonganPengecoran/lasSmaw.dart';

class PengelasanLogam extends StatefulWidget {
  static String id = 'Pengelasan_screen';
  @override
  _PengelasanLogamState createState() => _PengelasanLogamState();
}

class _PengelasanLogamState extends State<PengelasanLogam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teori Pengelasan'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Image.asset('images/pengelasan.gif'),
              Text(
                'Definisi pengelasan:',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.justify,
              ),
              Text(
                'Penyambungan logam saat keaadan melting',
                style: TextStyle(
                  fontSize: 17,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Ragam jenis pengelasan:',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify,
              ),
              Text(
                'Las SMAW',
                style: TextStyle(
                  fontSize: 17,
                ),
                textAlign: TextAlign.justify,
              ),
              Text(
                'Las Oksi-Aksetilen',
                style: TextStyle(
                  fontSize: 17,
                ),
                textAlign: TextAlign.justify,
              ),
              Text(
                'Las GMAW',
                style: TextStyle(
                  fontSize: 17,
                ),
                textAlign: TextAlign.justify,
              ),
              Text(
                'Las FSW',
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
                child: Text(
                  'Pada materi pengelasan ini kita hanya akan mempelajari Pengelasan SMAW dan Pengelasan Oksi-Asetilen. Pengelasan SMAW dan Pengelasan Oksi-asetilen merupakan pengelasan yang paling umum digunakan di Teknik Mesin karena keunggulannya dapat mengelas material fero (besi) dan non-fero (bukan besi). Energi panas pada pengelasan SMAW berasal dari listrik. Maka dari itu, Las SMAW biasa disebut juga las busur listrik. Pengelasan. Sementara, energi panas Las Oksi-Asetilen berasal dari reaksi kimia.',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Penjelasan detail:',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Material(
                    elevation: 2.0,
                    color: Color(0xff4f73b6),
                    borderRadius: BorderRadius.circular(5.0),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, LasSMAW.id);
                      },
                      child: Container(
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            'Las SMAW',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Material(
                    elevation: 2.0,
                    color: Color(0xff4f73b6),
                    borderRadius: BorderRadius.circular(5.0),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, LasOksiAsetilen.id);
                      },
                      child: Container(
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            ' Las Oksi-Asetilen',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Text(
                      'Posisi Pengelasan:',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify,
                    ),
                    Image.asset('images/pengelasan3.png'),
                    Text(
                      'Berikut ragam posisi pengelasan yang akan kamu pelajari. Berlatihlah dari mulai posisi 1f ke 4f secara runtut. Mulailah dari yang paling mudah dahulu ya! Ingat sebelum kamu bekerja selalu persiapkan APD mu!',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    Text(
                      'Berikut perhatikan video tutorial cara pengelasan ya! Perhatikan cara dan gerakan tangannya agar kamu sudah paham saat praktikum.',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }
}
