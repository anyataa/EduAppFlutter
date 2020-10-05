import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoBor extends StatefulWidget {
  @override
  _VideoBorState createState() => _VideoBorState();
}

class _VideoBorState extends State<VideoBor> {
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
            final url = 'https://youtu.be/A5u3U1gNlys';
            if (await canLaunch(url)) {
              await launch(
                url,
                forceSafariVC: false,
              );
            }
          },
          child: Text(
            'Video Tutorial Penggunaan Mesin Bor',
            style: TextStyle(fontSize: 15.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
