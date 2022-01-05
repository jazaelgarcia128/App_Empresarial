import 'package:flutter/material.dart';

class Registro5 extends StatefulWidget {
  @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro5> {
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
                  value: 0.8333333,
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
              _crearTextoB(),
              _crearTexto(),
              _crearTextoA(),
              _crearImagen(),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      color: Colors.yellow,
                      textColor: Colors.black87, // foreground
                      child: Text(
                        'Atras',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('registro4');
                      },
                    ),
                  ),
                  Text('    ', style: TextStyle(fontSize: 14)),
                  Expanded(
                    child: RaisedButton(
                      color: Colors.indigo,
                      textColor: Colors.white,
                      onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Enviar Datos'),
                          content: const Text(
                              '¿Estas seguro que deseas enviar tus datos?'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(context, 'Regresar'),
                              child: const Text('Regresar'),
                            ),
                            RaisedButton(
                                color: Colors.indigo,
                                textColor: Colors.white, // foreground
                                child: Text(
                                  'Enviar',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pushNamed('registro6');
                                }),
                          ],
                        ),
                      ),
                      child: const Text('Siguiente'),
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

  Widget _crearTextoB() {
    return Container(
      padding: const EdgeInsets.fromLTRB(58, 20, 55, 5),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Text(
            'Por el momento tus datos estan bien.',
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget _crearTexto() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 10, 35, 10),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Text(
            'Registrarse(Enviar Datos)',
            style: TextStyle(fontSize: 25),
          ),
        ],
      ),
    );
  }

  Widget _crearTextoA() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Text(
            'Si haz llegado hasta aqui es porque los formularios estan llenados de forma correcta, sí colocaste en un campo informacion erronea, puedes ir a dicha seccion con el boton "Atras"',
            style: TextStyle(
                color: Colors.red, fontStyle: FontStyle.italic, fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _crearImagen() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 10),
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