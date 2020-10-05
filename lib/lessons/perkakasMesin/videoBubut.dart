import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoBubut extends StatefulWidget {
  @override
  _VideoBubutState createState() => _VideoBubutState();
}

class _VideoBubutState extends State<VideoBubut> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
      child: Material(
        elevation: 2.0,
        color: Color(0xff4f73b6),
        borderRadius: BorderRadius.circular(5.0),
        child: MaterialButton(
          onPressed: () async {
            final url = 'https://youtu.be/6Xn3dUcOamQ';
            if (await canLaunch(url)) {
              await launch(
                url,
                forceSafariVC: false,
              );
            }
          },
          child: Text(
            'Video Tutorial Penggunaan Mesin Bubut',
            style: TextStyle(fontSize: 15.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
