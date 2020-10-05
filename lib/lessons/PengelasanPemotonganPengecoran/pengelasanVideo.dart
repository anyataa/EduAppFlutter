import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PengelasanVideo extends StatefulWidget {
  @override
  _PengelasanVideoState createState() => _PengelasanVideoState();
}

class _PengelasanVideoState extends State<PengelasanVideo> {
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
              final url = 'https://youtu.be/6CzGP1w3nAk';
              if (await canLaunch(url)) {
                await launch(
                  url,
                  forceSafariVC: false,
                );
              }
            },
            child: Text(
              'Video Tutorial Pengelasan',
              style: TextStyle(fontSize: 15.0, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
