import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class Registro4 extends StatefulWidget {
  @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro4> {
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
                  value: 0.666666,
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
              _crearTexto1(),
              _crearComision(),
              _crearDescripcionP(),
              _crearBotonC(),
              _crearBotonF(),
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
                        Navigator.of(context).pushNamed('registro3');
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
                        Navigator.of(context).pushNamed('registro5');
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
      padding: const EdgeInsets.fromLTRB(75, 25, 75, 10),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Text(
            'Por Ultimo...',
            style: TextStyle(fontSize: 11),
          ),
          Text(
            'Participacion Económica',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }

  Widget _crearTexto1() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 30, 10),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Text(
            'Detallar la informacion sobre el porcentaje de comision que esta dispuesto a compartir, asi como que se debe cumplir para que se otorge la comision',
            style: TextStyle(fontStyle: FontStyle.italic, fontSize: 10),
          ),
        ],
      ),
    );
  }

  Widget _crearComision() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Porcentaje de Comision:'),
          ),
        ],
      ),
    );
  }

  Widget _crearDescripcionP() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          TextFormField(
            maxLines: 5,
            maxLength: 300,
            decoration: InputDecoration(
                labelText:
                    'Descripcion para el Alcance de Porcentaje de Comision:'),
          ),
        ],
      ),
    );
  }
  PlatformFile? objFile = null;
  void chooseFileUsingFilePicker() async {
    //-----pick file by file picker,
    var result = await FilePicker.platform.pickFiles(
      withReadStream:
          true, // this will return PlatformFile object with read stream
    );
    if (result != null) {
      setState(() {
        objFile = result.files.single;
      });
    }
  }

  Widget _crearBotonC() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  'Logotipo:',
                  style: TextStyle(fontSize: 17),
                ),
              ),
              Expanded(
                child: RaisedButton(
                    child: Text("Seleccionar Archivo"),
                    onPressed: () => chooseFileUsingFilePicker()),
              ),
            ],
          ),
          if (objFile != null) Text("Nombre del Archivo: ${objFile!.name}"),
        ],
      ),
    );
  }

  PlatformFile? objFiles = null;
  void chooseFileUsingFilePickers() async {
    //-----pick file by file picker,
    var result = await FilePicker.platform.pickFiles(
      withReadStream:
          true, // this will return PlatformFile object with read stream
    );
    if (result != null) {
      setState(() {
        objFiles = result.files.single;
      });
    }
  }

  Widget _crearBotonF() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  'Foto de Perfil:',
                  style: TextStyle(fontSize: 17),
                ),
              ),
              Expanded(
                child: RaisedButton(
                    child: Text("Seleccionar Archivo"),
                    onPressed: () => chooseFileUsingFilePickers()),
              ),
            ],
          ),
          if (objFiles != null) Text("Nombe del Archivo: ${objFiles!.name}"),
        ],
      ),
    );
  }
}