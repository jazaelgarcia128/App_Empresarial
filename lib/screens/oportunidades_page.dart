import 'dart:convert';

import 'package:app_motion/config/palette.dart';
import 'package:app_motion/screens/bottom_nav_screen.dart';
import 'package:app_motion/screens/details_oportunidades.dart';
import 'package:app_motion/screens/directorio.dart';
import 'package:app_motion/screens/encuestapendiente.dart';
import 'package:app_motion/screens/login.dart';
import 'package:app_motion/screens/profilepage.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:app_motion/models/Oportunidad_modelo.dart';

class OportunidadesPage extends StatefulWidget {
  static String id = 'oportunidades_page';
  @override
  _OportunidadesPageState createState() => _OportunidadesPageState();
}

class _OportunidadesPageState extends State<OportunidadesPage> {
  List<OportunidadModelo> data = <OportunidadModelo>[];
  Future<List<OportunidadModelo>> GetOp() async {
    final response = await http
        .get(Uri.parse('http://192.168.0.105:8080/oportunidades/lista'));

    if (response.statusCode == 200) {
      var datos = jsonDecode(response.body);
      var oportunidades = <OportunidadModelo>[];
      for (datos in datos) {
        oportunidades.add(OportunidadModelo.fromJson(datos));
      }
      return oportunidades;
    } else {
      throw Exception('Failed to load post');
    }
  }

  void initState() {
    super.initState();
    GetOp().then((value) {
      setState(() {
        data.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new Drawer(
        child: Container(
          color: Color.fromRGBO(50, 75, 205, 1),
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(50, 75, 205, 1),
                ),
                child: Column(
                  children: <Widget>[
                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Image.asset(
                        'assets/imagenes/user.png',
                        width: 100,
                        height: 100,
                      ),
                      elevation: 10,
                    ),
                    Text(
                      'Oliver Carmona',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text('Inicio',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                onTap: () {
                  Navigator.pushNamed(context, BottomNavScreen.id);
                },
              ),
              const SizedBox(height: 10),
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                title: Text('Perfil',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                onTap: () {
                  Navigator.pushNamed(context, ProfilePage.id);
                },
              ),
              const SizedBox(height: 10),
              ListTile(
                leading: Icon(
                  Icons.library_books,
                  color: Colors.white,
                ),
                title: Text('Directorio',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                onTap: () {
                  Navigator.pushNamed(context, Directorio.id);
                },
              ),
              const SizedBox(height: 10),
              ListTile(
                leading: Icon(
                  Icons.rate_review,
                  color: Colors.white,
                ),
                title: Text('Oportunidades',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                onTap: () {
                  Navigator.pushNamed(context, OportunidadesPage.id);
                },
              ),
              const SizedBox(height: 10),
              ListTile(
                leading: Icon(
                  Icons.leaderboard,
                  color: Colors.white,
                ),
                title: Text('Encuestas',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                onTap: () {
                  Navigator.pushNamed(context, Encuesta.id);
                },
              ),
              const SizedBox(height: 60),
              Divider(
                height: 8.0,
                color: Colors.white,
                indent: 16.0,
                endIndent: 16.0,
              ),
              ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text('Salir',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                onTap: () {
                  Navigator.pushNamed(context, Login.id);
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Builder(
            builder: (context) => IconButton(
              icon: SvgPicture.asset(
                "assets/icons/icon.svg",
                height: 55,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
        backgroundColor: Palette.primaryColor,
        elevation: 0,
        centerTitle: false,
        titleSpacing: 0,
      ),
      body: _crearlistview(context),
    );
  }

  Widget _crearlistview(BuildContext context) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext, int index) {
          return Card(
            child: ListTile(
              title: Text(
                  'Oportunidad ${data[index].id.toString()}'), //title: Text('Oportunidad $index')
              subtitle: Text(
                  'Empresa  ${data[index].nombre}'), // subtitle: Text('Empresa $index')
              leading: Icon(Icons.person),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsOportunidades(data[index].id,
                          data[index].nombre, data[index].estatus),
                    ));
              },
            ),
          );
        });
  }
}
