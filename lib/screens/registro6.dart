import 'package:flutter/material.dart';

class Registro6 extends StatefulWidget {
  @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro6> {
  final _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          color: Colors.indigo[50],
          child: Column(
            children: <Widget>[
              Image.asset(
                'assets/img/biml.png',
                height: 150,
                width: 500,
              ),
              Text(
                'Registro de la Empresa',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              ),
              Divider(indent: 2),
              Row(
                children: <Widget>[
                  Divider(indent: 2),
                  Expanded(
                    child: Image.asset(
                      'assets/img/edificio.png',
                      height: 50,
                      width: 50,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      'assets/img/flechas1.png',
                      height: 35,
                      width: 35,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      'assets/img/engranaje.png',
                      height: 36,
                      width: 36,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      'assets/img/flechas1.png',
                      height: 35,
                      width: 35,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      'assets/img/persona.png',
                      height: 37,
                      width: 37,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      'assets/img/flechas1.png',
                      height: 35,
                      width: 35,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      'assets/img/aceptado.png',
                      height: 50,
                      width: 50,
                    ),
                  ),
                ],
              ),
              Divider(indent: 2),
              SizedBox(
                child: LinearProgressIndicator(
                  value: 1,
                  backgroundColor: Colors.grey,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.indigo),
                ),
                height: 10.0,
                width: 330.0,
              ),
              Divider(indent: 2),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text('Bienvenido a un negocio en movimiento',
                    style: TextStyle(fontSize: 14)),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  'Para formar parte de nuestro Selecto Club de Empresarios, requerimos de su apoyo con la siguiente informacion',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 13,
                  ),
                ),
              ),
              _crearTexto(),
              _crearTextoA(),
              _crearImagen(),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      color: Colors.indigo,
                      textColor: Colors.white, // foreground
                      child: Text(
                        'Finalizar',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('login');
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _crearTexto() {
    return Container(
      padding: const EdgeInsets.fromLTRB(86, 10, 86, 10),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Text(
            '¡FELICIDADES!',
            style: TextStyle(fontSize: 27),
          ),
        ],
      ),
    );
  }

  Widget _crearTextoA() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Divider(
            height: 20,
            thickness: 5,
            color: Colors.tealAccent[400],
          ),
          Text(
            'Tus datos han sido enviados, te pedimos que estes al pendiente de tu email, celular, para que nos pongamos en contacto contigo',
            style: TextStyle(color: Colors.black, fontSize: 13),
          ),
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
}