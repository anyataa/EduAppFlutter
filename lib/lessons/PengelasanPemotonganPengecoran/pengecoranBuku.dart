import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PengecoranBuku extends StatefulWidget {
  @override
  _PengecoranBukuState createState() => _PengecoranBukuState();
}

class _PengecoranBukuState extends State<PengecoranBuku> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
        child: Material(
          elevation: 2.0,
          color: Color(0xff4f73b6),
          borderRadius: BorderRadius.circular(5.0),
          child: MaterialButton(
            onPressed: () async {
              final url =
                  'https://drive.google.com/drive/folders/1xV_rnn2lo-1quF5x4Pp5wa1owEwEG_7v?usp=sharing';
              if (await canLaunch(url)) {
                await launch(
                  url,
                  forceSafariVC: false,
                );
              }
            },
            child: Text(
              'Buku Panduan Pengecoran Logam',
              style: TextStyle(fontSize: 15.0, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
