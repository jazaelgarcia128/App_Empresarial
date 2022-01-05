import 'package:app_motion/screens/ponencia2_page.dart';
import 'package:flutter/material.dart';
import 'package:app_motion/api/Cursos.dart';

class PonenciaPage extends StatefulWidget {
  static String id = 'ponencia_page';

  @override
  _PonenciaPageState createState() => _PonenciaPageState();
}

class _PonenciaPageState extends State<PonenciaPage> {
  var _lis = [
    'Conferencia',
    'Curso',
    'Mentoria',
    'Platica',
    'Ponencia',
    'Seminario',
    'Mas Alto',
    'Taller',
    'Otro'
  ];
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
  var _listas = ['Con Costo', 'Gratias'];

  String _vista = 'Seleccione un Estado';
  String _vis = 'Seleccione una Opcion';
  String _vistas = 'Seleccione una Opcion';

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
                _crearInput1(),
                _crearTipoPonencia(),
                _crearTextFormato(),
                _crearFormatoPresentacion(),
                _crearInput(),
                _crearTextFecha(),
                _crearFecha(),
                _crearAsientos(),
                _crearTA(),
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
              '1 de 2',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
            child: SizedBox(
              child: LinearProgressIndicator(
                value: 0.45,
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
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Nombre de Ponencia'),
          ),
        ],
      ),
    );
  }

  Widget _crearTipoPonencia() {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(30, 20, 208, 5),
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

  bool visibilityTag = false;
  bool visibilityObs = false;

  void _changed(bool visibility, String field) {
    setState(() {
      if (field == "tag") {
        visibilityTag = visibility;
      }
      if (field == "obs") {
        visibilityTag = false;
      }
    });
  }

  Widget _crearTextFormato() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 0, 138, 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Text(
            'Formato de Presentacion:',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget _crearFormatoPresentacion() {
    return Container(
      color: Colors.white,
      child: new Column(
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Expanded(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new InkWell(
                      onTap: () {
                        // ignore: unnecessary_statements
                        visibilityObs ? null : _changed(true, "obs");
                      },
                      child: new Container(
                        child: new Column(
                          children: <Widget>[
                            new InkWell(
                              // ignore: deprecated_member_use
                              child: RaisedButton(
                                color: Colors.indigo,
                                padding:
                                    new EdgeInsets.fromLTRB(10, 10, 10, 10),
                                textColor: Colors.white, // foreground
                                child: Text(
                                  'Online',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                                onPressed: () {
                                  // ignore: unnecessary_statements
                                  visibilityObs ? null : _changed(true, "obs");
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              new Expanded(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new InkWell(
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        color: Colors.indigo,
                        padding: new EdgeInsets.fromLTRB(10, 10, 10, 10),
                        textColor: Colors.white, // foreground
                        child: Text(
                          'Presencial',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        onPressed: () {
                          // ignore: unnecessary_statements
                          visibilityTag ? null : _changed(true, "tag");
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          visibilityTag
              ? new Row(
                  children: <Widget>[
                    Expanded(
                      child: SizedBox(
                        height: 430.0,
                        child: _crearUbicacion(),
                      ),
                    ),
                  ],
                )
              : new Container(),
        ],
      ),
    );
  }

  Widget _crearUbicacion() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 51, 5),
            child: Text(
              'Ubicacion:',
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
            decoration: InputDecoration(labelText: 'Colonia/Asentamiento'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Delegacion/Municipio'),
          ),
          _crearEstado(),
          TextFormField(
            decoration: InputDecoration(labelText: 'Codigo Postal'),
          ),
        ],
      ),
    );
  }

  Widget _crearEstado() {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 18, 10, 1),
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
      ),
    );
  }

  Widget _crearInput() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Nombre del evento'),
          ),
        ],
      ),
    );
  }

  Widget _crearTextFecha() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Text('Fecha del Evento:'),
              ),
              Expanded(
                child: Text('Hora del Evento:'),
              )
            ],
          ),
        ],
      ),
    );
  }

  TimeOfDay _time = TimeOfDay(hour: 7, minute: 15);

  void _selectTime() async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    if (newTime != null) {
      setState(() {
        _time = newTime;
      });
    }
  }

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2022));
    if (picked != null && picked != selectedDate)
      setState(
        () {
          selectedDate = picked;
        },
      );
  }

  Widget _crearFecha() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(30, 5, 0, 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Text("${selectedDate.toLocal()}".split(' ')[0]),
              ),
              Expanded(
                child: IconButton(
                  icon: Icon(Icons.date_range),
                  onPressed: () => _selectDate(context),
                ),
              ),
              Expanded(
                child: Text("${_time.format(context)}".split(' ')[0]),
              ),
              Expanded(
                child: IconButton(
                  icon: Icon(Icons.access_time),
                  onPressed: _selectTime,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 30, 10),
            child: Divider(
              height: 0,
              thickness: 1,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _crearAsientos() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Cantidad de Asientos:'),
          ),
        ],
      ),
    );
  }

  Widget _crearTA() {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(30, 20, 208, 5),
            child: Text(
              'Tipo de Acceso:',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: DropdownButton(
              items: _listas.map(
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
                    _vistas = _value!;
                  },
                ),
              },
              hint: Text(_vistas),
            ),
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
                  MaterialPageRoute(builder: (context) => Ponencia2Page()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: _shrineColorScheme,
    toggleableActiveColor: shrinePink400,
    accentColor: shrineBrown900,
    primaryColor: shrinePink100,
    buttonColor: shrinePink100,
    scaffoldBackgroundColor: shrineBackgroundWhite,
    cardColor: shrineBackgroundWhite,
    textSelectionColor: shrinePink100,
    errorColor: shrineErrorRed,
    buttonTheme: const ButtonThemeData(
      colorScheme: _shrineColorScheme,
      textTheme: ButtonTextTheme.normal,
    ),
    primaryIconTheme: _customIconTheme(base.iconTheme),
    textTheme: _buildShrineTextTheme(base.textTheme),
    primaryTextTheme: _buildShrineTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildShrineTextTheme(base.accentTextTheme),
    iconTheme: _customIconTheme(base.iconTheme),
  );
}

IconThemeData _customIconTheme(IconThemeData original) {
  return original.copyWith(color: shrineBrown900);
}

TextTheme _buildShrineTextTheme(TextTheme base) {
  return base
      .copyWith(
        caption: base.caption!.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          letterSpacing: defaultLetterSpacing,
        ),
        button: base.button!.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: defaultLetterSpacing,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: shrineBrown900,
        bodyColor: shrineBrown900,
      );
}

const ColorScheme _shrineColorScheme = ColorScheme(
  primary: shrinePink400,
  primaryVariant: shrineBrown900,
  secondary: shrinePink50,
  secondaryVariant: shrineBrown900,
  surface: shrineSurfaceWhite,
  background: shrineBackgroundWhite,
  error: shrineErrorRed,
  onPrimary: shrineBrown900,
  onSecondary: shrineBrown900,
  onSurface: shrineBrown900,
  onBackground: shrineBrown900,
  onError: shrineSurfaceWhite,
  brightness: Brightness.light,
);

const Color shrinePink50 = Color(0xFFFEEAE6);
const Color shrinePink100 = Color(0xFFFEDBD0);
const Color shrinePink300 = Color(0xFFFBB8AC);
const Color shrinePink400 = Color(0xFFEAA4A4);

const Color shrineBrown900 = Color(0xFF442B2D);
const Color shrineBrown600 = Color(0xFF7D4F52);

const Color shrineErrorRed = Color(0xFFC5032B);

const Color shrineSurfaceWhite = Color(0xFFFFFBFA);
const Color shrineBackgroundWhite = Colors.white;

const defaultLetterSpacing = 0.03;
