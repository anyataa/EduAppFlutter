import 'package:flutter/material.dart';
import 'package:flutter_app/lessons/ModulMikrometer.dart';

import 'package:flutter_app/lessons/modulJangka.dart';

class LessonContentScreen extends StatefulWidget {
  static String id = 'lessonContent_screen';
  @override
  _LessonContentScreenState createState() => _LessonContentScreenState();
}

class _LessonContentScreenState extends State<LessonContentScreen> {
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      ''
          'Jangka Sorong / Vernier Caliper',
      'Mikrometer',
      'Alat Ukur Dasar'
    ];
    final List<String> image = <String>[
      'images/jangkaGif.gif',
      'images/microGif.gif',
      'images/perkakasGif.gif'
    ];
    final List<String> button = <String>[
      JangkaSorong.id,
      ModulMikrometer.id,
      'images/tools.png'
    ];
    final List<String> description = <String>[
      'Mempelajari bagian - bagian dari jangka sorong, ragam fungsi jangka sorong untuk mengukur,'
          ' dan cara  menggunakan jangka sorong',
      'Memperlajari cara menggunakan mikrometer ',
      'Mengetahui ragam perkakas tangan yang biasa digunakan'
          ' pada Pekerjaan Dasar Teknik Mesin, fungsi, dan cara menggunakannya'
    ];
    final List<int> colorCodes = <int>[600, 500, 100];
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson: PDTM'),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return FlatButton(
              padding: EdgeInsets.all(0),
              onPressed: () {
                Navigator.pushNamed(context, button[index]);
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                height: 300,
                width: double.maxFinite,
//                color: Colors.amber[colorCodes[index]],
                child: Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Image.asset('${image[index]}'),
                      ListTile(
                        title: Text('${entries[index]}'),
                        subtitle: Text('${description[index]} '),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
