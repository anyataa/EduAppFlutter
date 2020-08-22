import 'package:flutter/material.dart';

class LessonContentScreen extends StatefulWidget {
  static String id = 'lessonContent_screen';
  @override
  _LessonContentScreenState createState() => _LessonContentScreenState();
}

class _LessonContentScreenState extends State<LessonContentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson'),
      ),
    );
  }
}
