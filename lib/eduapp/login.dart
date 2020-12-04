import 'package:flutter/material.dart';
import 'package:flutter_app/eduapp/home.dart';
import 'package:flutter_app/eduapp/register.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kembali ke halaman pembuka'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 60.0),
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
                      'Log',
                      style: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Lobster',
                        color: Color(
                          0xff4f73b6,
                        ),
                      ),
                    ),
                    Text(
                      'In',
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
                height: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Text('Menjelajahi cara pembelajaran baru'),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) {
                  //do something
                },
                decoration: InputDecoration(
                  hintText: 'Masukan Email atau Nama Pengguna',
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 16,
                  ),
                  fillColor: Color(0xff4f73b6),
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
                  hintText: 'Masukan kata sandi',
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
                      'Log in',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              FlatButton(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onPressed: () {
                    Navigator.pushNamed(context, RegisterScreen.id);
                  },
                  child: Center(child: Text('Belum punya akun? Buat di sini'))),
            ],
          ),
        ),
      ),
    );
  }
}
