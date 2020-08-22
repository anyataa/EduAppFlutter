import 'package:flutter/material.dart';
import 'package:flutter_app/eduapp/gameSimulation1.dart';
import 'package:flutter_app/eduapp/games.dart';
import 'package:flutter_app/eduapp/lessons.dart';
import 'package:flutter_app/eduapp/login.dart';
import 'package:flutter_app/eduapp/register.dart';
import 'package:flutter_app/eduapp/welcome.dart';
import 'package:flutter_app/eduapp/home.dart';
import 'package:flutter_app/eduapp/lessonContent.dart';
import 'package:flutter_app/eduapp/game1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegisterScreen.id: (context) => RegisterScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        LessonsScreen.id: (context) => LessonsScreen(),
        LessonContentScreen.id: (context) => LessonContentScreen(),
        GamesScreen.id: (context) => GamesScreen(),
        ColorGame.id: (context) => ColorGame(),
      },
      home: WelcomeScreen(),
    );
  }
}
