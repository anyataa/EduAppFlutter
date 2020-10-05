import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/games/game1.dart';
import 'package:flutter_app/games/game2.dart';
import 'package:flutter_app/games/game3.dart';
import 'package:flutter_app/games/game4.dart';

class GamesScreen extends StatefulWidget {
  static String id = 'games_screen';
  @override
  _GamesScreenState createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen> {
  @override
  final List<String> games = <String>[
    'Set Permaian PDTM 1: Pengecoran, Fabrikasi Logam, dan Perkakas Tangan',
    'Set Permainan PDTM 2: Pengecoran, Fabrikasi Logam, dan Alat Ukur',
    'Set Permainan PDTM 3: Fabrikasi Logam, Pengecoran, dan Mesin Umum',
    'Set Permaian PDTM 4: Pengelasan, Fabrikasi Logam, dan Alat Ukur'
  ];
  final List<int> colorCodes = <int>[200, 300, 400, 500];
  final List<String> goTo = <String>[
    ColorGame.id,
    GameSet2.id,
    GameSet3.id,
    GameSet4.id
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Permainan'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: Image.asset('images/games.png')),
          Expanded(
            flex: 2,
            child: Container(
              child: ListView.separated(
                addAutomaticKeepAlives: false,
                padding: const EdgeInsets.all(8),
                itemCount: games.length,
                itemBuilder: (BuildContext context, int index) {
                  return FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, goTo[index]);
                    },
                    padding: EdgeInsets.symmetric(horizontal: 2),
                    child: Container(
                      height: 100,
                      color: Color(0xff4f73b6),
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            games[index],
                            style: TextStyle(color: Colors.white, fontSize: 17),
                            textAlign: TextAlign.center,
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
