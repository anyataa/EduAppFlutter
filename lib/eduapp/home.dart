import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/eduapp/Saran.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_app/games/games.dart';
import 'package:flutter_app/eduapp/Penilaian.dart';
import 'package:flutter_app/lessons/lessons.dart';

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
        backgroundColor: Color(0xff4f73b6),
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
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage(
                              'images/login1.png',
                            ),
                            radius: 85.0,
                          ),
                        ),
                        Text(
                          'Belajar apa kita hari ini?',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff4f73b6),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 80.0),
                          child: Divider(
                            thickness: 3.0,
                            color: Color(0xff4f73b6),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Material(
                            elevation: 2.0,
                            color: Color(0xff4f73b6),
                            borderRadius: BorderRadius.circular(5.0),
                            child: MaterialButton(
                              onPressed: () async {
                                final url =
                                    'https://drive.google.com/drive/folders/1F1cqTnSl6pPffok_UvZ4CnbzFztHmzce?usp=sharing';
                                if (await canLaunch(url)) {
                                  await launch(
                                    url,
                                    forceSafariVC: false,
                                  );
                                }
                              },
                              child: Text(
                                'Baca buku petunjuk penggunaan aplikasi',
                                style: TextStyle(
                                    fontSize: 15.0, color: Colors.white),
                              ),
                            ),
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
                          Text('Pelajaran')
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
                          Text('Permainan')
                        ],
                      ),
                    ),
                  ),
                ),
                FlatButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    Navigator.pushNamed(context, PenilaianScreen.id);
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(1),
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/assignment1.png',
                            width: 130.0,
                          ),
                          Text('Tugas')
                        ],
                      ),
                    ),
                  ),
                ),
                FlatButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    Navigator.pushNamed(context, SaranScreen.id);
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(1),
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/Penilaian.png',
                            width: 130.0,
                          ),
                          Text('Penilaian dan Saran')
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: [
                  Text('Tentang EduApp'),
                  Image.asset(
                    'images/open.png',
                    width: 120,
                  )
                ],
              ),
              decoration: BoxDecoration(),
            ),
            ListTile(
              title: Text(
                'Hak Cipta: Anya Tamara Akbar',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Referensi'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Materi: ',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Umaryadi, PDTM(2006) Penerbit Yudistira'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                  'Susanta, Kurniawan. Pekerjaan Dasar Teknik Mesin (2019). Penerbit Quantum Books, Jawa Timur'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Animasi: ',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('IWantToStudy (Youtube)'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Ilustrasi dan Icon: ',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Icon8 Bermuda Style '),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
