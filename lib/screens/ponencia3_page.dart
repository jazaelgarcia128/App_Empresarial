import 'package:app_motion/screens/eventos_page.dart';
import 'package:app_motion/screens/ponencia_page.dart';
import 'package:flutter/material.dart';

class Ponencia3Page extends StatefulWidget {
 static String id = 'ponencia3_page';

  @override
  _Ponencia3PageState createState() => _Ponencia3PageState();
}

class _Ponencia3PageState extends State<Ponencia3Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informacion de Ponencia'),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.settings_rounded),
            ),
          ),
        ],
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          color: Colors.indigo[50],
          child: Center(
            child: Column(
              children: <Widget>[
                _crearBIM(),
                _crearText(),
                _crearInput1(),
                _crearImagen(),
                _crearBoton(),
                _crearotroBoton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _crearBIM() {
    return Container(
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/img/BIMLogo.png',
            height: 130,
            width: 400,
          ),
        ],
      ),
    );
  }

  Widget _crearText() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Divider(
            indent: 2,
            color: Colors.black,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Text(
              'EVENTO REGISTRADO',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          Divider(
            indent: 2,
            color: Colors.black,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: Text(
              '100 %',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
            child: SizedBox(
              child: LinearProgressIndicator(
                value: 1,
                backgroundColor: Colors.grey,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.indigo),
              ),
              height: 10.0,
              width: 330.0,
            ),
          ),
          Divider(
            indent: 2,
            color: Colors.black,
          ),
        ],
      ),
    );
  }

  Widget _crearInput1() {
    return Container(
      padding: const EdgeInsets.fromLTRB(62, 0, 62, 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Text('Tú evento esta en espera de revición'),
        ],
      ),
    );
  }

  Widget _crearImagen() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/img/aceptado.png',
            height: 130,
            width: 500,
          ),
        ],
      ),
    );
  }

  Widget _crearBoton() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: RaisedButton(
              color: Colors.indigo,
              padding: new EdgeInsets.fromLTRB(50, 10, 50, 10),
              textColor: Colors.white, // foreground
              child: Text(
                'Agendar Nuevo Evento',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              onPressed: () {
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PonenciaPage()),
            );
              },
            ),
          ),
          
        ],
        
      ),
    );
  }
   Widget _crearotroBoton() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: RaisedButton(
              color: Colors.indigo,
              padding: new EdgeInsets.fromLTRB(50, 10, 50, 10),
              textColor: Colors.white, // foreground
              child: Text(
                'Ver eventos',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              onPressed: () {
               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EventosPage()),
            );
              },
            ),
          ),
          
        ],
        
      ),
    );
  }
}