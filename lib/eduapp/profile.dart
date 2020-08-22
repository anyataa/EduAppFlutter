import 'package:flutter/material.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Center(
              child: Text(
                'EduApp',
                style: TextStyle(color: Colors.lightBlue),
              ),
            )),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Container(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/pic04.jpg'),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  'Anya Tamara',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                    letterSpacing: 2,
                    wordSpacing: 5,
                  ),
                ),
              ),
              width: double.infinity,
              height: 30,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 60,
              ),
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 70,
                  ),
                  Icon(
                    Icons.phone,
                    color: Colors.blue,
                  ),
                  Text(
                    ' +62-815-869-771-25',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
              width: double.infinity,
              height: 30,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 60,
              ),
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 70,
                  ),
                  Icon(
                    Icons.email,
                    color: Colors.blue,
                  ),
                  Text(
                    ' anyatmr@gmail.com',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
              width: double.infinity,
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
