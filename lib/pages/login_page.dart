import 'package:flutter/material.dart';
import 'package:reto_1/pages/home_pages.dart';

class LoginPage extends StatefulWidget {
  static final routeName = 'loginPage';
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Map parametros = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: (Text('Login')),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.backup_outlined),
            onPressed: () {
              Navigator.of(context).pop(HomePage.routeName);
            },
          ),
          IconButton(
            icon: new Icon(Icons.more_vert),
            onPressed: () => print('Boton 3 puntos'),
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          children: <Widget>[
            _idTextField(parametros['id']),
            Divider(),
            _codeTextField(parametros['code']),
            Divider(),
            _descritptionTextField(parametros['description']),
            Divider(),
          ],
        ),
      ),
    );
  }

  Widget _idTextField(String idText) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            initialValue: idText,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: "ID",
              labelText: "ID",
            ),
            onChanged: (valor) {
              setState(() {
                idText = valor;
              });
            },
          )
        ],
      ),
    );
  }

  _codeTextField(String codeText) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            initialValue: codeText,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: "Codigo",
              labelText: "Codigo",
            ),
            onChanged: (valor) {
              setState(() {
                codeText = valor;
              });
            },
          )
        ],
      ),
    );
  }

  _descritptionTextField(String descriptionText) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            initialValue: descriptionText,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: "Descripcion",
              labelText: "Descripcion",
            ),
            onChanged: (valor) {
              setState(() {
                descriptionText = valor;
              });
            },
          )
        ],
      ),
    );
  }
}
