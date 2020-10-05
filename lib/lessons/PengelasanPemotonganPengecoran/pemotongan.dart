import 'package:flutter/material.dart';
import 'package:flutter_app/eduapp/navigation.dart';
import 'package:flutter_app/lessons/PengelasanPemotonganPengecoran/bulkDeformation.dart';
import 'package:flutter_app/lessons/PengelasanPemotonganPengecoran/sheetMetal.dart';

class PemotonganLogam extends StatefulWidget {
  static String id = 'Pemotongan_screen';
  @override
  _PemotonganLogamState createState() => _PemotonganLogamState();
}

class _PemotonganLogamState extends State<PemotonganLogam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fabrikasi Logam'),
      ),
      body: ListView(
        children: [
          Image.asset('images/fabrikasi.gif'),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Text(
                  'Fabrikasi logam adalah proses melakukan deformasi plastis pada logam. Deformasi plastis adalah perubahan bentuk yang tidak dapat Kembali ke bentuk semula. Pada pelajaran fabrikasi logam ini kita akan mempelajari proses yang menggunakan gaya untuk melakukan deformasi plastis.',
                  style: TextStyle(fontSize: 17),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Konsep Fabrikasi Logam',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
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
                          Navigator.pushNamed(context, BulkDeformation.id);
                        },
                        child: Container(
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              ' Bulk Deformation',
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
                          Navigator.pushNamed(context, SheetMetal.id);
                        },
                        child: Container(
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              'Sheet Metal Working',
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
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }
}
