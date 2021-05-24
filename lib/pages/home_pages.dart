import 'package:flutter/material.dart';
import 'package:reto_1/pages/facebok_page.dart';
import 'package:reto_1/pages/gmail_page.dart';
import 'package:reto_1/pages/linkedin_page.dart';
import 'package:reto_1/pages/login_page.dart';
import 'package:reto_1/pages/signup_page.dart';

class HomePage extends StatefulWidget {
  static final routeName = 'homePage';
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var id = '120';
  var code = 'ABC123';
  var description = 'TRAMARSA';
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
                          onTap: () => {
                            Navigator.pushNamed(context, LoginPage.routeName,
                                arguments: {
                                  'id': id,
                                  'code': code,
                                  'description': description
                                }),
                          },
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
                          onTap: () => {
                            Navigator.pushNamed(context, SignUpPage.routeName)
                          },
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
                    InkWell(
                      onTap: () => {
                        Navigator.of(context).pushNamed(FacebookPage.routeName),
                      },
                      child: Image.asset(
                        'images/facebook.png',
                        height: 35.0,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () => {
                        Navigator.of(context).pushNamed(GmailPage.routeName)
                      },
                      child: Image.asset(
                        'images/google.png',
                        height: 35.0,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () => {
                        Navigator.of(context).pushNamed(LinkedInPage.routeName)
                      },
                      child: Image.asset(
                        'images/linkedin.png',
                        height: 35.0,
                      ),
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
