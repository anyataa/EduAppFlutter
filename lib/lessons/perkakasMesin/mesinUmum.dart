import 'package:flutter/material.dart';
import 'package:flutter_app/eduapp/navigation.dart';
import 'package:flutter_app/lessons/perkakasMesin/MesinBor.dart';
import 'package:flutter_app/lessons/perkakasMesin/MesinBubut.dart';
import 'package:flutter_app/lessons/perkakasMesin/MesinGerinda.dart';
import 'package:flutter_app/lessons/perkakasMesin/MesinMilling.dart';

class MesinUmum extends StatefulWidget {
  static String id = 'MesinUmum_screen';
  @override
  _MesinUmumState createState() => _MesinUmumState();
}

class _MesinUmumState extends State<MesinUmum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mesin Umum'),
      ),
      body: ListView(children: [
        Column(
          children: [
            Image.asset('images/mesinUmum.gif'),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Text(
                    'Mesin adalah alat mekanik atau elektrik yang mengirim atau '
                    'mengubah energi untuk menghasilkan produk tertentu, atau bahasa sederhananya '
                    'adalah alat untuk membantu mempermudah pekerjaan manusia',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    'Pada kegiatan produksi di teknik mesin terdapat mesin-mesin yang sering digunakan. '
                    'Mesin umum adalah istilah bagi mesin yang sering digunakan di ranah teknik mesin tersebut. '
                    'Tekan tombol berikut untuk mempelajari ragam mesin umum secara lebih detail.',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Ragam jenis mesin umum:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Material(
                      elevation: 2.0,
                      color: Color(0xff4f73b6),
                      borderRadius: BorderRadius.circular(5.0),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, MesinBubut.id);
                        },
                        child: Container(
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              ' Mesin Bubut',
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
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Material(
                      elevation: 2.0,
                      color: Color(0xff4f73b6),
                      borderRadius: BorderRadius.circular(5.0),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, MesinMilling.id);
                        },
                        child: Container(
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              ' Mesin Milling/Frais',
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
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Material(
                      elevation: 2.0,
                      color: Color(0xff4f73b6),
                      borderRadius: BorderRadius.circular(5.0),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, MesinBor.id);
                        },
                        child: Container(
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              ' Mesin Bor',
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
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Material(
                      elevation: 2.0,
                      color: Color(0xff4f73b6),
                      borderRadius: BorderRadius.circular(5.0),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, MesinGerinda.id);
                        },
                        child: Container(
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              ' Mesin Gerinda',
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
