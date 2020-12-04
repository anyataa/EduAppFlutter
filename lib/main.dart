import 'package:flutter/material.dart';
import 'package:flutter_app/eduapp/Saran.dart';
import 'package:flutter_app/eduapp/aboutThisApp.dart';
import 'package:flutter_app/games/game2.dart';
import 'package:flutter_app/games/game3.dart';
import 'package:flutter_app/games/game4.dart';

import 'package:flutter_app/games/games.dart';
import 'package:flutter_app/lessons/K3L/K3L%20self%20regulatory.dart';
import 'package:flutter_app/lessons/K3L/K3L.dart';
import 'package:flutter_app/lessons/PengelasanPemotonganPengecoran/bulkDeformation.dart';
import 'package:flutter_app/lessons/PengelasanPemotonganPengecoran/lasOksi.dart';
import 'package:flutter_app/lessons/PengelasanPemotonganPengecoran/lasSmaw.dart';
import 'package:flutter_app/lessons/PengelasanPemotonganPengecoran/pemotongan.dart';
import 'package:flutter_app/lessons/PengelasanPemotonganPengecoran/pengecoran.dart';
import 'package:flutter_app/lessons/PengelasanPemotonganPengecoran/pengelasan.dart';
import 'package:flutter_app/lessons/PengelasanPemotonganPengecoran/sheetMetal.dart';
import 'package:flutter_app/eduapp/Penilaian.dart';
import 'package:flutter_app/lessons/Feedback.dart';
import 'package:flutter_app/lessons/lessonView.dart';
import 'package:flutter_app/lessons/ModulJangka2.dart';
import 'package:flutter_app/lessons/ModulJangka3.dart';
import 'package:flutter_app/lessons/ModulMikrometer.dart';
import 'package:flutter_app/lessons/lessons.dart';
import 'package:flutter_app/eduapp/login.dart';
import 'package:flutter_app/lessons/materi10.dart';
import 'package:flutter_app/lessons/modulJangka.dart';
import 'package:flutter_app/eduapp/register.dart';
import 'package:flutter_app/eduapp/welcome.dart';
import 'package:flutter_app/eduapp/home.dart';
import 'package:flutter_app/lessons/lessonContent.dart';
import 'package:flutter_app/games/game1.dart';
import 'package:flutter_app/lessons/modulJangka1.dart';
import 'package:flutter_app/lessons/perkakasMesin/MesinBor.dart';
import 'package:flutter_app/lessons/perkakasMesin/MesinBubut.dart';
import 'package:flutter_app/lessons/perkakasMesin/MesinGerinda.dart';
import 'package:flutter_app/lessons/perkakasMesin/MesinMilling.dart';
import 'package:flutter_app/lessons/perkakasMesin/mesinUmum.dart';
import 'package:flutter_app/lessons/perkakasMesin/perkakasBertenaga.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color(0xff4f73b6)),
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
        ColorGame.id: (context) => ColorGame(),
        JangkaSorong.id: (context) => JangkaSorong(),
        JangkaDiameterDalam.id: (context) => JangkaDiameterDalam(),
        JangkaDiameterLuar.id: (context) => JangkaDiameterLuar(),
        JangkaKedalaman.id: (context) => JangkaKedalaman(),
        ModulMikrometer.id: (context) => ModulMikrometer(),
        KompetensiView.id: (context) => KompetensiView(),
        PerkakasBertenaga.id: (context) => PerkakasBertenaga(),
        MesinUmum.id: (context) => MesinUmum(),
        KeseehatanDanKeselamatan.id: (context) => KeseehatanDanKeselamatan(),
        MesinBubut.id: (context) => MesinBubut(),
        MesinBor.id: (context) => MesinBor(),
        MesinMilling.id: (context) => MesinMilling(),
        MesinGerinda.id: (context) => MesinGerinda(),
        PengecoranLogam.id: (context) => PengecoranLogam(),
        PengelasanLogam.id: (context) => PengelasanLogam(),
        PemotonganLogam.id: (context) => PemotonganLogam(),
        LasOksiAsetilen.id: (context) => LasOksiAsetilen(),
        LasSMAW.id: (context) => LasSMAW(),
        BulkDeformation.id: (context) => BulkDeformation(),
        SheetMetal.id: (context) => SheetMetal(),
        PetenjukScreen.id: (context) => PetenjukScreen(),
        PenilaianScreen.id: (context) => PenilaianScreen(),
        GameSet2.id: (context) => GameSet2(),
        GameSet3.id: (context) => GameSet3(),
        GameSet4.id: (context) => GameSet4(),
        SaranScreen.id: (context) => SaranScreen(),
        AboutThisApp.id: (context) => AboutThisApp(),
        Materi10.id: (context) => Materi10(),
        K3LRegulatory.id: (context) => K3LRegulatory()
      },
      home: WelcomeScreen(),
    );
  }
}
