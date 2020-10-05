import 'package:flutter/material.dart';
import 'package:flutter_app/lessons/PengelasanPemotonganPengecoran/bulkDeformationCard.dart';

class BulkDeformation extends StatefulWidget {
  static String id = 'Bulk_screen';
  @override
  _BulkDeformationState createState() => _BulkDeformationState();
}

class _BulkDeformationState extends State<BulkDeformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mata Pelajaran: PDTM'),
      ),
      body: ListView(children: [
        Image.asset('images/bulk.png'),
        Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Ciri utama dari Bulk Deformation adalah material utamanya berbentuk seperti balok. Pada Bulk Deformation terjadi deformasi plastis di semua bagian balok. Bulk Deformation diklasifikasikan menjadi tiga berdasarkan pada arah gaya yang dilakukan untuk membentukanya, yaitu rolling extrusion, dan forging. Berikut penjelasan dari masing masing proses.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(height: 500, child: BulkDeformationCard()),
          ],
        ),
      ]),
    );
  }
}
