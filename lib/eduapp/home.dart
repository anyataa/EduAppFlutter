import 'package:flutter/material.dart';
import 'package:flutter_app/eduapp/games.dart';
import 'package:flutter_app/eduapp/lessons.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff3080EB),
        ),
        body: CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20),
              sliver: SliverGrid.count(
                crossAxisCount: 1,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(1),
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                'images/pic04.jpg',
                              ),
                              radius: 60.0,
                            ),
                          ),
                          Text(
                            'Lisa Blackpink',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff3080EB),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 80.0),
                            child: Divider(
                              thickness: 3.0,
                              color: Color(0xff3080EB),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Column(
                                    children: <Widget>[
                                      Text('Total class enrolled',
                                          style: TextStyle(fontSize: 10)),
                                      Text(
                                        '10',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        child: Material(
                                          color: Colors.white,
                                          child: Center(
                                            child: Ink(
                                              decoration: const ShapeDecoration(
                                                color: Color(0xff3080EB),
                                                shape: CircleBorder(),
                                              ),
                                              child: IconButton(
                                                icon: Icon(Icons.videocam),
                                                color: Colors.white,
                                                iconSize: 40.0,
                                                onPressed: () {},
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    Text('Performance overview',
                                        style: TextStyle(fontSize: 10)),
                                    Text(
                                      '89',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      child: Material(
                                        color: Colors.white,
                                        child: Center(
                                          child: Ink(
                                            decoration: const ShapeDecoration(
                                              color: Color(0xff3080EB),
                                              shape: CircleBorder(),
                                            ),
                                            child: IconButton(
                                              icon: Icon(Icons.chat_bubble),
                                              color: Colors.white,
                                              iconSize: 40.0,
                                              onPressed: () {},
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(20),
              sliver: SliverGrid.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  FlatButton(
                    padding: EdgeInsets.all(1),
                    onPressed: () {
                      Navigator.pushNamed(context, LessonsScreen.id);
                      print('clicked');
                    },
                    child: Container(
                      width: double.infinity,
                      child: Card(
                        // color: Color(0xff3080EB),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'images/lesson1.png',
                              width: 120,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text('Lessons')
                          ],
                        ),
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, GamesScreen.id);
                    },
                    padding: EdgeInsets.all(1),
                    child: Container(
                      width: double.infinity,
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'images/games1.png',
                              width: 130.0,
                            ),
                            Text('Games')
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(1),
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/assignment1.png',
                            width: 130.0,
                          ),
                          Text('Assignments')
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(1),
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/report1.png',
                            width: 130.0,
                          ),
                          Text('Your Report')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
