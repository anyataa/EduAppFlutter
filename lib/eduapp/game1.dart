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
    '🏍': 'Colors.green',
    '🚙': 'Colors.yellow',
    '🚍': 'Colors.red',
    '⚙️': 'Colors.purple',
    '⛏': 'Colors.brown',
    '🔧': 'Colors.orange'
  };

  // Random seed to shuffle order of items.
  int seed = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Score ${score.length} / 6'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 30.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: choices.keys.map((emoji) {
                return Draggable<String>(
                  data: emoji,
                  child: Emoji(emoji: score[emoji] == true ? '✅' : emoji),
                  feedback: Emoji(emoji: emoji),
                  childWhenDragging: Emoji(emoji: '📍'),
                );
              }).toList()),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
                choices.keys.map((emoji) => _buildDragTarget(emoji)).toList()
                  ..shuffle(Random(seed)),
          ),
        ]),
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
          return Container(
            color: Colors.blue,
            child: Text('⭐️️', style: TextStyle(fontSize: 50)),
            alignment: Alignment.center,
            height: 80,
            width: 200,
          );
        } else {
          return Container(
            height: 70,
            width: 200,
            child: Card(
              elevation: 10,
              child: Text(
                choices[emoji],
                style: TextStyle(color: Colors.white),
              ),
            ),
            color: Colors.blue,
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
        height: 80,
        padding: EdgeInsets.all(1),
        child: Text(
          emoji,
          style: TextStyle(color: Colors.black, fontSize: 50),
        ),
      ),
    );
  }
}
