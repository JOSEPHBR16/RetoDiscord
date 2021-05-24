import 'package:flutter/material.dart';

class FacebookPage extends StatefulWidget {
  static final routeName = 'facebookPage';
  FacebookPage({Key key}) : super(key: key);

  @override
  _FacebookPageState createState() => _FacebookPageState();
}

class _FacebookPageState extends State<FacebookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: (Text('Facebook')),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.more_vert),
            onPressed: () => print('Boton 3 puntos'),
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: Image.asset('images/facebook.png'),
          height: 200.0,
        ),
      ),
    );
  }
}
