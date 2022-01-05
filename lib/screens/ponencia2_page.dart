import 'package:app_motion/screens/ponencia3_page.dart';
import 'package:flutter/material.dart';

class  Ponencia2Page extends StatefulWidget {
  static String id = 'ponencia2_page';

  @override
  _Ponencia2PageState createState() => _Ponencia2PageState();
}

class _Ponencia2PageState extends State<Ponencia2Page> {
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
            child: Column(
              children: <Widget>[
                _crearBIM(),
                _crearText(),
                _crearDetalles(),
                _crearTemario(),
                _crearComentarios(),
                _crearImagen(),
                _crearAceptoTC(),
                _crearBoton(),
              ],
            ),
          ),
        ));
  }

  Widget _crearBIM() {
    return Container(
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/img/BIMLogo.png',
            height: 110,
            width: 400,
          ),
        ],
      ),
    );
  }

  Widget _crearText() {
    return Container(
      child: Column(
        children: <Widget>[
          Divider(
            indent: 2,
            color: Colors.black,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Text(
              'Aqui podras especificar todo lo relacionado con el tema que se presentara como ponente de Business In Motion Academy',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: Text(
              '2 de 2',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
            child: SizedBox(
              child: LinearProgressIndicator(
                value: 0.9,
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

  Widget _crearDetalles() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 155, 10),
            child: Text(
              'Detalles del Evento',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 00, 10),
            child: Text(
              'Describa cuantos dias se requieren para el evento, el horario por dia y los tiempos de descanso y comida.',
              style: TextStyle(fontSize: 16.0, color: Colors.grey),
            ),
          ),
          TextFormField(
            maxLines: 5,
            maxLength: 300,
            decoration: InputDecoration(labelText: ''),
          ),
        ],
      ),
    );
  }

  Widget _crearTemario() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 233, 10),
            child: Text(
              'Temario',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Text(
              'Detalla el temario que se abordara y la duracion de cada tema.',
              style: TextStyle(fontSize: 16.0, color: Colors.grey),
            ),
          ),
          TextFormField(
            maxLines: 5,
            maxLength: 300,
            decoration: InputDecoration(labelText: ''),
          ),
        ],
      ),
    );
  }

  Widget _crearComentarios() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 145, 10),
            child: Text(
              'Comentarios Finales',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Text(
              'Describa las consideraciones especiales, algún otro tipo de requerimiento o si se otorgara algun obsequiopara el evento',
              style: TextStyle(fontSize: 16.0, color: Colors.grey),
            ),
          ),
          TextFormField(
            maxLines: 5,
            maxLength: 300,
            decoration: InputDecoration(labelText: ''),
          ),
        ],
      ),
    );
  }

  // ignore: avoid_init_to_null
  
  

  Widget _crearImagen() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  'Archivo Imagen:',
                  style: TextStyle(fontSize: 17),
                ),
              ),
             
            ],
          ),
         
        ],
      ),
    );
  }

  bool isSwitched = false;
  Widget _crearAceptoTC() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
                activeColor: Colors.indigo,
              ),
              Expanded(
                child: Text(
                  'He leido y acepto los terminos y las condiciones',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
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
              padding: new EdgeInsets.fromLTRB(107, 10, 107, 10),
              textColor: Colors.white, // foreground
              child: Text(
                'Siguiente',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              onPressed: () {
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Ponencia3Page()),
            );
              },
            ),
          ),
        ],
      ),
    );
  }
}