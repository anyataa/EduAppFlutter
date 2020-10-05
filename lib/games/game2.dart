import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_app/eduapp/home.dart';

class GameSet2 extends StatefulWidget {
  static String id = 'gameset2_screen';
  GameSet2({Key key}) : super(key: key);
  @override
  _GameSet2State createState() => _GameSet2State();
}

class _GameSet2State extends State<GameSet2> {
  @override
  final Map<String, bool> score = {};

  /// Choices for game
  final Map choices = {
    'images/cetakan.gif':
        'Proses awal yang harus dilakukan sebelum pengecoran. Pada tahap ini kamu akan menyesuaikan bentuk geometri yang hendak dibentuk dengan inti dan pola. Bahan utama yang kamu buthkan pada tahap  ini adalah pasir.',
    'images/fabdeepdrawing.gif':
        'Proses pembentukan pelat logam. Pembentukan ini dapat digunakan untuk membentuk sink cuci piring. Karakteristik hasil pembentukan ini adalah bertambahnya volume pelat.',
    'images/microGif.gif':
        'Alat ukur yang digunakan untuk pengukuran dengan ketelitian tinggi. Tingkat ketelitian alat ukur ini mencapai 0.001 mm.',
    'images/jangkaGif.gif':
        'Alat ukur yang digunakan untuk pengukuran dengan ketelitian seedang. Tingkat ketelitian dari alat ukur ini mencapai 0.1 mm. Alat ukur ini dapat digunakan untuk mengukur diameter dala, diameter luar, dan kedalaman.',
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
                height: 200,
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
            height: 50,
          )
        ],
      ),
    );
  }
}
