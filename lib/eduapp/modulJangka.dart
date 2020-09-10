import 'package:flutter/material.dart';

class JangkaSorong extends StatefulWidget {
  static String id = 'jangkaSorong_screen';
  @override
  _JangkaSorongState createState() => _JangkaSorongState();
}

class _JangkaSorongState extends State<JangkaSorong> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Jangka Sorong'),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Image.asset('images/jangkaGif.gif'),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Standar Satuan dalam mm',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Teknik Mesin memiliki standar satuan ukuran mm (milimeter) '
                        'berdasarkan  Standar ISO 128-20:1996. Standar ukuran ini '
                        'berlaku pula pada Teknik Fabrikasi Logam dan Manufaktur. '
                        'Berdasarkan pada hal ini maka pengukuran jangka sorong/vernier caliper  '
                        'akan dipelajari dengan '
                        'satuan mm.',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Card(
                      child: Container(
                          height: 400,
                          width: double.infinity,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                'Bagian pada Jangka Sorong ',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Image.asset('images/skala.png'),
                              Text('Skala  utama : Skala dengan '),
                              Text('Skala nonius : Skala dengan ')
                            ],
                          ))),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      Text(
                        'Jangka sorong memiliki fungsi untuk mengukur:',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Material(
                          elevation: 2.0,
                          color: Color(0xff4f73b6),
                          borderRadius: BorderRadius.circular(5.0),
                          child: MaterialButton(
                            onPressed: () {},
                            child: Container(
                              width: 130.0,
                              child: Text(
                                'Diameter Luar',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
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
                            onPressed: () {},
                            child: Container(
                              width: 130,
                              child: Text(
                                'Diameter Dalam',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
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
                            onPressed: () {},
                            child: Container(
                              width: 130,
                              child: Text(
                                'Kedalaman',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
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
          ],
        ));
  }
}
