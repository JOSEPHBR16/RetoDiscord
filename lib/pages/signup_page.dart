import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  static final routeName = 'signUpPage';
  SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: (Text('Sign Up')),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.more_vert),
            onPressed: () => print('Boton 3 puntos'),
          ),
        ],
      ),
    );
  }
}
