import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final routeName = 'homePage';
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            alignment: Alignment.topLeft,
            child: Image.asset(
              'images/twitter.png',
              height: 60.0,
            ),
          ),
          Container(
            child: Center(
              child: FractionallySizedBox(
                widthFactor: .9,
                child: Image.asset(
                  'images/fondo.png',
                  height: 300.0,
                ),
              ),
            ),
          ),
          Container(
            child: Text(
              'HELLO!',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: Text(
              'Welcome to sale TOP A Plataform To Manage Real State Needs.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Color(0xFF9E9E9E)),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 20, bottom: 20)),
                    Container(
                      child: Container(
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.all(0),
                        width: 140,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFF2196F3),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: InkWell(
                          onTap: () => {},
                          child: Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Container(
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.all(0),
                        width: 140,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: InkWell(
                          onTap: () => {},
                          child: Center(
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Container(
            child: Text(
              'Or via social media:',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Color(0xFF9E9E9E)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/facebook.png',
                      height: 30.0,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'images/google.png',
                      height: 30.0,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'images/linkedin.png',
                      height: 30.0,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
