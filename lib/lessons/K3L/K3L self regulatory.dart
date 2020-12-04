import 'package:flutter/material.dart';

class K3LRegulatory extends StatelessWidget {
  static String id = 'SelfRegulatoryK3L';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bandingkan jawaban'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 60.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[],
              ),
              SizedBox(
                height: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Text('Jawaban yang benar'),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              _buildTextFieldTrue(),
              SizedBox(
                height: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Text('Jawabanmu'),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              _buildTextField(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildTextField() {
  final maxLines = 5;

  return Container(
    margin: EdgeInsets.all(12),
    height: maxLines * 24.0,
    child: TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText:
            "Ya, sama. APD pada setiap kegiatan kerja baik pengecoran atau pengelasan atau lainnya akan sama.",
        fillColor: Colors.grey[300],
        filled: true,
        enabled: false,
      ),
    ),
  );
}

Widget _buildTextFieldTrue() {
  final maxLines = 6;

  return Container(
    margin: EdgeInsets.all(12),
    height: maxLines * 24.0,
    child: TextField(
      style: TextStyle(color: Colors.black),
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText:
            "Tidak, APD yang digunakan pada setiap kegiatan kerja tidak sama. Hal ini dikarenakan setiap kerja memiliki karakteristik proses dan resiko yang berbeda sehingga membutuhkan APD yang berbeda - beda.",
        fillColor: Colors.blue[100],
        filled: true,
        enabled: false,
      ),
    ),
  );
}
