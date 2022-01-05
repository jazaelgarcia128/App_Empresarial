import 'package:flutter/material.dart';

class Registro2 extends StatefulWidget {
  @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro2> {
  final _keyForm = GlobalKey<FormState>();

  var _lista = ['Producto', 'Servicio'];

  String _vista = 'Seleccione una Opcion';
  String _vist = 'Seleccione una Opcion';
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
                  value: 0.33333,
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
              _crearNombrePS(),
              _crearInput1(),
              _crearDescripcion(),
              _crearNombrePS2(),
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
                        Navigator.of(context).pushNamed('registro');
                      },
                    ),
                  ),
                  Text('    ', style: TextStyle(fontSize: 14)),
                  Expanded(
                    child: RaisedButton(
                      color: Colors.indigo,
                      textColor: Colors.white, // foreground
                      child: Text(
                        'Siguiente',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('registro3');
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
      padding: const EdgeInsets.fromLTRB(33, 25, 33, 10),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Text(
            'Informacion del Producto o servicio',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }

  Widget _crearNombrePS() {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 187, 5),
            child: Text(
              'Producto o Servicio:',
              style: TextStyle(fontSize: 16),
            ),
          ),
          DropdownButton(
            items: _lista.map(
              (String a) {
                return DropdownMenuItem(
                  value: a,
                  child: Text(a),
                );
              },
            ).toList(),
            onChanged: (String? _value) => {
              setState(
                () {
                  _vista = _value!;
                },
              ),
            },
            hint: Text(_vista),
          )
        ],
      ),
    );
  }

  Widget _crearInput1() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration:
                InputDecoration(labelText: 'Nombre del Producto o Servicio:'),
          ),
        ],
      ),
    );
  }

  Widget _crearDescripcion() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          TextFormField(
            maxLines: 5,
            maxLength: 300,
            decoration: InputDecoration(
                labelText: 'Descripcion del Producto o Servicio:'),
          ),
        ],
      ),
    );
  }

  Widget _crearNombrePS2() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      width: 500,
      height: 368,
      alignment: Alignment.center,
      child: Container(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 128, 10),
              child: Text(
                'Producto o Servicio:',
                style: TextStyle(fontSize: 16),
              ),
            ),
            DropdownButton(
              items: _lista.map(
                (String a) {
                  return DropdownMenuItem(
                    value: a,
                    child: Text(a),
                  );
                },
              ).toList(),
              onChanged: (String? _value) => {
                setState(
                  () {
                    _vist = _value!;
                  },
                ),
              },
              hint: Text(_vist),
            ),
            _crearInput12(),
            _crearDescripcion2(),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.grey[200],
        ),
      ),
    );
  }

  Widget _crearInput12() {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration:
                InputDecoration(labelText: 'Nombre del Producto o Servicio:'),
          ),
        ],
      ),
    );
  }

  Widget _crearDescripcion2() {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
      child: Column(
        children: <Widget>[
          TextFormField(
            maxLines: 5,
            maxLength: 300,
            decoration: InputDecoration(
                labelText: 'Descripcion del Producto o Servicio:'),
          ),
        ],
      ),
    );
  }
}