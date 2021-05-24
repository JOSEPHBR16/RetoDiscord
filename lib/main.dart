import 'package:flutter/material.dart';
import 'package:reto_1/pages/facebok_page.dart';
import 'package:reto_1/pages/gmail_page.dart';
import 'package:reto_1/pages/home_pages.dart';
import 'package:reto_1/pages/linkedin_page.dart';
import 'package:reto_1/pages/login_page.dart';
import 'package:reto_1/pages/signup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reto Discord',
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (_) => HomePage(),
        LoginPage.routeName: (_) => LoginPage(),
        SignUpPage.routeName: (_) => SignUpPage(),
        FacebookPage.routeName: (_) => FacebookPage(),
        GmailPage.routeName: (_) => GmailPage(),
        LinkedInPage.routeName: (_) => LinkedInPage(),
      },
    );
  }
}
