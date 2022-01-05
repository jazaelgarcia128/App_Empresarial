import 'package:flutter/material.dart';

enum SingingCharac { emprendedor, pequenia, mediana }
enum SingingCharacter { lafayette, jefferson }

class Registro extends StatefulWidget {
   static String id = 'registro';
  @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  final _keyForm = GlobalKey<FormState>();
  var _lista = [
    'Aguascalientes',
    'Baja California',
    'Baja California Sur ',
    'Campeche',
    'Chiapas',
    'Chihuahua',
    'Coahuila',
    'Colima',
    'Ciudad de México',
    'Durango',
    'Estado de México',
    'Guanajuato',
    'Guerrero',
    'Hidalgo',
    'Jalisco',
    'Michoacán',
    'Morelos',
    'Nayarit',
    'Nuevo León',
    'Oaxaca',
    'Puebla',
    'Querétaro ',
    'Quintana Roo',
    'San Luis Potosí ',
    'Sinaloa',
    'Sonora ',
    'Tabasco ',
    'Tamaulipas',
    'Tlaxcala',
    'Veracruz',
    'Yucatán',
    'Zacatecas',
  ];
  var _list = [
    'Industrial',
    'Humana',
    'Marketing',
    'Fotografia',
    'Chiapas',
    'Chihuahua',
    'Coahuila',
    'Colima',
    'Ciudad de México',
    'Durango',
    'Estado de México',
    'Guanajuato',
    'Guerrero',
    'Hidalgo',
    'Jalisco',
    'Michoacán',
    'Morelos',
    'Nayarit',
    'Nuevo León',
    'Oaxaca',
    'Puebla',
    'Querétaro ',
    'Quintana Roo',
    'San Luis Potosí ',
    'Sinaloa',
    'Sonora ',
    'Tabasco ',
    'Tamaulipas',
    'Tlaxcala',
    'Veracruz',
    'Yucatán',
    'Zacatecas',
  ];
  var _lis = ['1 - 5', '6 - 25', '26 - 50', '51 - 100', '101 en adelante'];

  String _vista = 'Seleccione un Estado';
  String _vist = 'Seleccione una Opcion';
  String _vis = 'Seleccione una Opcion';

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
                  value: 0.166666,
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
              _crearInput1(),
              _crearTipoDireccion(),
              _crearDireccion(),
              _crearIndustria(),
              _crearTipoEmpresa(),
              _crearNoE(),
              RaisedButton(
                color: Colors.indigo,
                padding: new EdgeInsets.fromLTRB(107, 10, 107, 10),
                textColor: Colors.white, // foreground
                child: Text(
                  'Siguiente',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('registro2');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _crearTexto() {
    return Container(
      padding: const EdgeInsets.fromLTRB(74, 25, 74, 10),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Text(
            'Informacion de la Empresa',
            style: TextStyle(fontSize: 17),
          ),
          Text(
            'Datos de la Empresa',
            style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12),
          ),
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
                InputDecoration(labelText: 'Nombre de la Empresa o Compañia'),
          ),
        ],
      ),
    );
  }

  SingingCharacter? _character = SingingCharacter.lafayette;
  Widget _crearTipoDireccion() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 160, 10),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Text(
            'Tipo de Direccion: ',
            style: TextStyle(fontSize: 16),
          ),
          ListTile(
            title: const Text('Fiscal'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.lafayette,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Comercial'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.jefferson,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(
                  () {
                    _character = value;
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _crearDireccion() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      width: 500,
      height: 465,
      alignment: Alignment.center,
      child: Container(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 25, 211, 5),
              child: Text(
                'Direccion:',
                style: TextStyle(fontSize: 16),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Calle'),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'No. Externo'),
                  ),
                ),
                Text('    ', style: TextStyle(fontSize: 14)),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'No. Interno'),
                  ),
                )
              ],
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Colonia'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Ciudad'),
            ),
            _crearEstado(),
            TextFormField(
              decoration: InputDecoration(labelText: 'Codigo Postal'),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.grey[200],
        ),
      ),
    );
  }

  Widget _crearEstado() {
    return Container(
        padding: const EdgeInsets.fromLTRB(0, 18, 105, 1),
        child: DropdownButton(
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
        ));
  }

  Widget _crearIndustria() {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 265, 5),
            child: Text(
              'Industria:',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: DropdownButton(
              items: _list.map(
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
          )
        ],
      ),
    );
  }

  SingingCharac? _charac = SingingCharac.emprendedor;
  Widget _crearTipoEmpresa() {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 0, 200, 10),
            child: Text(
              'Tipo de Empresa: ',
              style: TextStyle(fontSize: 16),
            ),
          ),
          ListTile(
            title: const Text('Emprendedor (Proyecto Letra)'),
            leading: Radio<SingingCharac>(
              value: SingingCharac.emprendedor,
              groupValue: _charac,
              onChanged: (SingingCharac? value) {
                setState(() {
                  _charac = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Pequeña'),
            leading: Radio<SingingCharac>(
              value: SingingCharac.pequenia,
              groupValue: _charac,
              onChanged: (SingingCharac? value) {
                setState(
                  () {
                    _charac = value;
                  },
                );
              },
            ),
          ),
          ListTile(
            title: const Text('Mediana'),
            leading: Radio<SingingCharac>(
              value: SingingCharac.mediana,
              groupValue: _charac,
              onChanged: (SingingCharac? value) {
                setState(
                  () {
                    _charac = value;
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _crearNoE() {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 218, 5),
            child: Text(
              'No. Empleados:',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: DropdownButton(
              items: _lis.map(
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
                    _vis = _value!;
                  },
                ),
              },
              hint: Text(_vis),
            ),
          ),
        ],
      ),
    );
  }
}