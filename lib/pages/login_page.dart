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
            icon: new Icon(Icons.check),
            onPressed: () {
              print(
                "ID: " +
                    parametros['id'] +
                    " | CODE: " +
                    parametros['code'] +
                    " | DESCRIPCION: " +
                    parametros['description'],
              );
              var id = parametros['id'];
              var code = parametros['code'];
              var description = parametros['description'];
              Navigator.of(context).pushNamed(HomePage.routeName, arguments: {
                'idUpdate': id,
                'codeUpdate': code,
                'descriptionUpdate': description,
              });
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
            _idTextField(),
            Divider(),
            _codeTextField(),
            Divider(),
            _descritptionTextField(),
            Divider(),
          ],
        ),
      ),
    );
  }

  Widget _idTextField() {
    Map parametros = ModalRoute.of(context).settings.arguments;
    return Form(
      child: Column(
        children: [
          TextFormField(
            initialValue: parametros['id'],
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: "ID",
              labelText: "ID",
            ),
            onChanged: (valor) {
              setState(() {
                parametros['id'] = valor;
              });
            },
          )
        ],
      ),
    );
  }

  _codeTextField() {
    Map parametros = ModalRoute.of(context).settings.arguments;
    return Form(
      child: Column(
        children: [
          TextFormField(
            initialValue: parametros['code'],
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: "Codigo",
              labelText: "Codigo",
            ),
            onChanged: (valor) {
              setState(() {
                parametros['code'] = valor;
              });
            },
          )
        ],
      ),
    );
  }

  _descritptionTextField() {
    Map parametros = ModalRoute.of(context).settings.arguments;
    return Form(
      child: Column(
        children: [
          TextFormField(
            initialValue: parametros['description'],
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: "Descripcion",
              labelText: "Descripcion",
            ),
            onChanged: (valor) {
              setState(() {
                parametros['description'] = valor;
              });
            },
          )
        ],
      ),
    );
  }
}
