import 'dart:async';

import 'package:app_motion/screens/bottom_nav_screen.dart';
import 'package:app_motion/screens/constants.dart';
import 'package:app_motion/screens/invitado/invitadopage.dart';
import 'package:app_motion/screens/registro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:app_motion/api/Login.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);
  static String id = 'login';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Widget build(BuildContext context) {
    LoginApi();
    RegistrarApi();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.height,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.indigo,
              Colors.black87,
            ], begin: Alignment.topLeft, end: Alignment.centerRight),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 36.0, horizontal: 24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bienvenido",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 46.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "App Motion",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/img/BIMLogo.png',
                            height: 120.0,
                          ),
                          _buildEmailRow(),
                          _buildPasswordRow(),
                          Divider(
                            color: Colors.white,
                            thickness: 3,
                            indent: 30,
                            endIndent: 30,
                          ),
                          _buildLoginButton(),
                          Container(
                              height: 1.4 *
                                  (MediaQuery.of(context).size.height / 20),
                              width:
                                  4 * (MediaQuery.of(context).size.width / 6),
                              margin: EdgeInsets.only(bottom: 20),
                              child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    Navigator.pushNamed(context, Registro.id);
                                  });
                                },
                                child: Text(
                                  "Registrarme",
                                  style: TextStyle(
                                    color: Colors.indigoAccent,
                                    letterSpacing: 1.5,
                                    fontSize:
                                        MediaQuery.of(context).size.height / 45,
                                  ),
                                ),
                                textColor: Colors.indigoAccent,
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: Colors.indigoAccent,
                                        width: 1,
                                        style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(50)),
                              )),
                          Container(
                              height: 1.4 *
                                  (MediaQuery.of(context).size.height / 20),
                              width:
                                  4 * (MediaQuery.of(context).size.width / 6),
                              margin: EdgeInsets.only(bottom: 20),
                              child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    Navigator.pushNamed(
                                        context, InvitadoPage.id);
                                  });
                                },
                                child: Text(
                                  "Invitado",
                                  style: TextStyle(
                                    color: Colors.indigoAccent,
                                    letterSpacing: 1.5,
                                    fontSize:
                                        MediaQuery.of(context).size.height / 45,
                                  ),
                                ),
                                textColor: Colors.indigoAccent,
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: Colors.indigoAccent,
                                        width: 1,
                                        style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(50)),
                              )),
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  late String usuario, password;

  Widget _buildEmailRow() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
          setState(() {
            usuario = value;
          });
        },
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.person,
              color: mainColor,
            ),
            labelText: 'Usuario'),
      ),
    );
  }

  Widget _buildPasswordRow() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: true,
        onChanged: (value) {
          setState(() {
            password = value;
          });
        },
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock,
            color: mainColor,
          ),
          labelText: 'Contraseña',
        ),
      ),
    );
  }

  Widget _buildLoginButton() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 1.4 * (MediaQuery.of(context).size.height / 20),
          width: 4 * (MediaQuery.of(context).size.width / 5),
          margin: EdgeInsets.only(bottom: 20),
          child: RaisedButton(
            elevation: 5.0,
            color: Colors.indigo,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            onPressed: () {
              
              setState(() {
                Navigator.pushNamed(context, BottomNavScreen.id);
              });
              
            },
            child: Text(
              "Iniciar sesion",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: MediaQuery.of(context).size.height / 40,
              ),
            ),
          ),
        )
      ],
    );
  }
}
