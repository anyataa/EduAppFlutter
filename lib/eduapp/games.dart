import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/eduapp/game1.dart';
import 'package:flutter_app/eduapp/gameSimulation1.dart';

class GamesScreen extends StatefulWidget {
  static String id = 'games_screen';
  @override
  _GamesScreenState createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen> {
  final List<String> games = <String>[
    'Match us!',
    'Simulation',
    'Fisika',
    'Matematika'
  ];
  final List<int> colorCodes = <int>[200, 300, 100, 200];
  final List<String> goTo = <String>[
    ColorGame.id,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Games'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: Image.asset('images/lessonScreen.png')),
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
                      color: Colors.blue[colorCodes[index]],
                      child: Center(
                        child: Text(
                          games[index],
                          style: TextStyle(color: Colors.black),
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
