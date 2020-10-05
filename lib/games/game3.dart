import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_app/eduapp/home.dart';

class GameSet3 extends StatefulWidget {
  static String id = 'Gameset3_screen';
  GameSet3({Key key}) : super(key: key);
  @override
  _GameSet3State createState() => _GameSet3State();
}

class _GameSet3State extends State<GameSet3> {
  @override
  final Map<String, bool> score = {};

  /// Choices for game
  final Map choices = {
    'images/fabrolling.gif':
        'Proses pembentukan balok logam. Pembentukan ini digunakan untuk menipiskan balok logam. Proses fabrikasi dilakukan dengan dua silinder yang memutar di antara balok.',
    'images/pengecoran3.gif':
        'Pada proses ini dibutuhkan mesin tanur. Tujuan dari proses ini adalah untuk mencairkan logam. Pencairan logam dilakukan untuk proses penuangan logam ke cetakan saat pengecoran.',
    'images/bubut1.gif':
        'Mesin yang digunakan untuk proses machining. Prinsip kerja mesin ini adalah dengan merotasikan benda kerja. Benda kerja untuk mesin ini harus berbentuk silinder.',
    'images/milling1.gif':
        'Mesin ini dapat digunakan untuk benda kerja yang tidak berbentuk silinder. Prinsip mesin ini adalah pahat yang berotasi. Benda kerja bergerak dapat bergerak ke depan, belakang, kanan, dan kiri.',
  };
  int seed = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Score ${score.length} / 4'),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 30.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: choices.keys.map((emoji) {
                        return Draggable<String>(
                          data: emoji,
                          child:
                              Emoji(emoji: score[emoji] == true ? '✅' : emoji),
                          feedback: Emoji(emoji: emoji),
                          childWhenDragging: Emoji(emoji: '📍'),
                        );
                      }).toList()),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: choices.keys
                        .map((emoji) => _buildDragTarget(emoji))
                        .toList()
                          ..shuffle(Random(seed)),
                  ),
                ]),
          ),
        ],
      ),
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(
              iconData: Icons.home,
              title: "Home",
              onclick: () {
                Navigator.pushNamed(context, HomeScreen.id);
              }),
          TabData(iconData: Icons.library_books, title: "Lessons"),
          TabData(
              iconData: Icons.refresh,
              title: "Play again",
              onclick: () {
                setState(() {
                  score.clear();
                  seed++;
                });
              })
        ],
        onTabChangedListener: (position) {
          setState(() {
            var currentPage = position;
          });
        },
      ),
    );
  }

  Widget _buildDragTarget(emoji) {
    return DragTarget<String>(
      builder: (BuildContext context, List<String> incoming, List rejected) {
        if (score[emoji] == true) {
          return Column(
            children: [
              Container(
                color: Color(0xff4f73b6),
                child: Text('⭐️️', style: TextStyle(fontSize: 50)),
                alignment: Alignment.center,
                height: 150,
                width: 200,
              ),
              SizedBox(
                height: 20,
              )
            ],
          );
        } else {
          return Column(
            children: [
              Container(
                height: 170,
                width: 200,
                child: Card(
                  elevation: 5,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      choices[emoji],
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          );
        }
      },
      onWillAccept: (data) => data == emoji,
      onAccept: (data) {
        setState(() {
          score[emoji] = true;
        });
      },
      onLeave: (data) {},
    );
  }
}

class Emoji extends StatelessWidget {
  Emoji({Key key, this.emoji}) : super(key: key);

  final String emoji;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Column(
        children: [
          Container(
              alignment: Alignment.center,
              height: 150,
              width: 150,
              padding: EdgeInsets.all(1),
              child: Image.asset('${emoji}')
//
              ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
