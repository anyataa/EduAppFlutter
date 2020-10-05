import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PengecoranVideo extends StatefulWidget {
  @override
  _PengecoranVideoState createState() => _PengecoranVideoState();
}

class _PengecoranVideoState extends State<PengecoranVideo> {
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
              final url = 'https://youtu.be/oHlNyHfgHNU';
              if (await canLaunch(url)) {
                await launch(
                  url,
                  forceSafariVC: false,
                );
              }
            },
            child: Text(
              'Video Proses Pengecoran',
              style: TextStyle(fontSize: 15.0, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
