import 'package:flutter/material.dart';

class GmailPage extends StatefulWidget {
  static final routeName = 'gmailPage';
  GmailPage({Key key}) : super(key: key);

  @override
  _GmailPageState createState() => _GmailPageState();
}

class _GmailPageState extends State<GmailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: (Text('Gmail')),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.more_vert),
            onPressed: () => print('Boton 3 puntos'),
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: Image.asset('images/google.png'),
          height: 200.0,
        ),
      ),
    );
  }
}
