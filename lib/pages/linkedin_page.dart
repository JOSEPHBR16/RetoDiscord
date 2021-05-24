import 'package:flutter/material.dart';

class LinkedInPage extends StatefulWidget {
  static final routeName = 'linkedInPage';
  LinkedInPage({Key key}) : super(key: key);

  @override
  _LinkedInPageState createState() => _LinkedInPageState();
}

class _LinkedInPageState extends State<LinkedInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: (Text('LinkedIn')),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.more_vert),
            onPressed: () => print('Boton 3 puntos'),
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: Image.asset('images/linkedin.png'),
          height: 200.0,
        ),
      ),
    );
  }
}
