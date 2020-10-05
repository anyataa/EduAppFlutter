import 'package:flutter/material.dart';
import 'package:flutter_app/eduapp/home.dart';
import 'package:flutter_app/eduapp/login.dart';

class RegisterScreen extends StatefulWidget {
  static String id = 'register_screen';
  @override
  _RegisterScreen createState() => _RegisterScreen();
}

class _RegisterScreen extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kembali ke halaman pembuka'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 200,
                      child: Image.asset('images/login1.png'),
                    ),
                  ],
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Sign',
                        style: TextStyle(
                            fontSize: 45.0,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Lobster',
                            color: Color(0xff4f73b6)),
                      ),
                      Text(
                        'Up',
                        style: TextStyle(
                          fontSize: 45.0,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Lobster',
                          color: Color(
                            0xffE44745,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Center(
                  child: Text('Menjelajahi cara pembelajaran baru'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  onChanged: (value) {
                    //do something
                  },
                  decoration: InputDecoration(
                    hintText: 'Masukan Email ',
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 16,
                    ),
                    fillColor: Color(0xff737476),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  onChanged: (value) {
                    //do something
                  },
                  decoration: InputDecoration(
                    hintText: 'Masukan kata sandi',
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 16,
                    ),
                    fillColor: Color(0xff737476),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  onChanged: (value) {
                    //do something
                  },
                  decoration: InputDecoration(
                    hintText: 'Konfirmasi kata sandi',
                    fillColor: Color(0xff737476),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Material(
                    elevation: 5.0,
                    color: Color(0xff4f73b6),
                    borderRadius: BorderRadius.circular(5.0),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, HomeScreen.id);
                      },
                      child: Text(
                        'Daftar',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ),
                ),
                FlatButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    onPressed: () {
                      Navigator.pushNamed(context, LoginScreen.id);
                    },
                    child:
                        Center(child: Text('Sudah punya akun? Masuk di sini'))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
