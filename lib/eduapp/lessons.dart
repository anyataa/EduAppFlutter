import 'package:flutter/material.dart';
import 'package:flutter_app/eduapp/lessonContent.dart';

class LessonsScreen extends StatefulWidget {
  static String id = 'lessons_screen';
  @override
  _LessonsScreenState createState() => _LessonsScreenState();
}

class _LessonsScreenState extends State<LessonsScreen> {
  @override
  Widget build(BuildContext context) {
    final List<String> mapel = <String>[
      'Dasar Dasar Otomotif',
      'Pekerjaan Dasar Teknik Mesin',
      'Mekanika Teknik',
      'Fisika',
      'Matematika'
    ];
    final List<int> colorCodes = <int>[200, 300, 100, 200, 300];
    return Scaffold(
      appBar: AppBar(
        title: Text('back to home'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: Image.asset('images/lesson.png')),
          Expanded(
            flex: 2,
            child: Container(
              child: ListView.separated(
                addAutomaticKeepAlives: false,
                padding: const EdgeInsets.all(8),
                itemCount: mapel.length,
                itemBuilder: (BuildContext context, int index) {
                  return FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, LessonContentScreen.id);
                    },
                    padding: EdgeInsets.symmetric(horizontal: 2),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(9.0),
                        ),
                        color: Color(0xff4f73b6),
                      ),
                      height: 75,
                      child: Center(
                        child: Text(
                          mapel[index],
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
