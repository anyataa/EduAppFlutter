import 'package:flutter/material.dart';

import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter_app/games/games.dart';
import 'package:flutter_app/eduapp/home.dart';
import 'package:flutter_app/eduapp/Penilaian.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int seed = 0;
  @override
  Widget build(BuildContext context) {
    return FancyBottomNavigation(
      tabs: [
        TabData(
            iconData: Icons.home,
            title: "Menu Utama",
            onclick: () {
              Navigator.pushNamed(context, HomeScreen.id);
            }),
        TabData(
            iconData: Icons.library_books,
            title: "Penilaian",
            onclick: () {
              Navigator.pushNamed(context, PenilaianScreen.id);
            }),
        TabData(
            iconData: Icons.games_rounded,
            title: "Permainan",
            onclick: () {
              Navigator.pushNamed(context, GamesScreen.id);
            })
      ],
      onTabChangedListener: (position) {
        setState(() {
          var currentPage = position;
        });
      },
    );
  }
}
