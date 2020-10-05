import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_app/eduapp/home.dart';

class ColorGame extends StatefulWidget {
  static String id = 'colorGames_screen';
  ColorGame({Key key}) : super(key: key);

  createState() => ColorGameState();
}

class ColorGameState extends State<ColorGame> {
  /// Map to keep track of score
  final Map<String, bool> score = {};

  /// Choices for game
  final Map choices = {
    'images/cor.png':
        'Geometri yang sesuai untuk diproses dengan pengecoran. Hal ini dikarenakan rumit dan tidak ekonomis apabila menggunakan metode machining seperti pembubutan.',
    'images/bulk.png':
        'Material dasar yang digunakan untuk proses forging, rolling, dan extrusion. Pembentukan material utama ini membutuhkan gaya yang besar pada proses pembentukannya.',
    'images/bor.png':
        'Perkakas tangan bertenaga yang kamu gunakan jika hendak membuat lubang di benda kerja.',
    'images/fabforging.gif':
        'Proses pembentukan balok logam yang menggunakan die/cetakan. Cetakan menekan benda kerja dari dua arah. Gaya dorong bekerja terhadap benda dari dua arah.',
  };

  // Random seed to shuffle order of items.
  int seed = 0;

  @override
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
      child: Container(
          alignment: Alignment.center,
          height: 150,
          width: 150,
          padding: EdgeInsets.all(1),
          child: Image.asset('${emoji}')
//        Text(
//          emoji,
//          style: TextStyle(color: Colors.black, fontSize: 50),
//        ),
          ),
    );
  }
}
