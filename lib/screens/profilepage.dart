import 'package:app_motion/config/palette.dart';
import 'package:app_motion/models/profile.dart';
import 'package:app_motion/screens/ProdyServ.dart';
import 'package:app_motion/screens/bottom_nav_screen.dart';
import 'package:app_motion/screens/directorio.dart';
import 'package:app_motion/screens/encuestapendiente.dart';
import 'package:app_motion/screens/login.dart';
import 'package:app_motion/screens/oportunidades_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';

class ProfilePage extends StatefulWidget {
  static String id = 'profilepage';
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                height: 25,
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
      body: ListView(
        children: <Widget>[
          Container(
              color: Palette.primaryColor,
              child: Container(
                width: double.infinity,
                height: 370.0,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1620751474782-076de97f40c4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80",
                            ),
                            radius: 50.0,
                          ),
                          Positioned(
                            bottom: 1,
                            right: 1,
                            child: Icon(
                              Icons.control_point,
                              color: Colors.white,
                              size: 35.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Oliver Carmona",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "front End Developer",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Icon(
                        Icons.sms,
                        color: Colors.white,
                        size: 40,
                      ),
                      Card(
                        margin: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 5.0),
                        clipBehavior: Clip.antiAlias,
                        color: Colors.white,
                        elevation: 5.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 22.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text(
                                      "Reputacion",
                                      style: TextStyle(
                                        fontSize: 27.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Stack(
                                      alignment: Alignment.center,
                                      children: <Widget>[
                                        Text(
                                          "5.0",
                                          style: TextStyle(
                                            fontSize: 23.0,
                                          ),
                                        ),
                                        Positioned(
                                          left: 35,
                                          bottom: 0,
                                          child: Icon(
                                            Icons.star,
                                            color: Colors.yellow[800],
                                            size: 32.0,
                                          ),
                                        ),
                                      ],
                                      clipBehavior: Clip.none,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
          Container(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Sobre mi:",
                    style:
                        TextStyle(fontStyle: FontStyle.normal, fontSize: 28.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae enim metus. Donec sed tempus dolor, in aliquet purus. Integer venenatis commodo nibh sit amet sodales. Donec eget felis consequat, scelerisque elit nec, ultricies sem. Suspendisse euismod tempus rutrum.',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: _crearProducto(),
          ),
        ],
      ),
    );
  }
}

Widget _crearProducto() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    decoration: BoxDecoration(
      color: Colors.white,
    ),
    child: Column(
      children: <Widget>[
        Divider(
          thickness: 1,
          indent: 0,
          endIndent: 0,
          color: Colors.grey,
        ),
        Row(
          children: <Widget>[
            Divider(
              thickness: 1.5,
              indent: 0,
              endIndent: 0,
              color: Colors.grey,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Productos o Servicios',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.topRight,
                child: new Text(
                  'Editar Seccion',
                  style: TextStyle(fontSize: 13, color: Colors.blue[900]),
                ),
              ),
            ),
          ],
        ),
        Divider(
          thickness: 1,
          indent: 10,
          endIndent: 10,
          color: Colors.grey,
        ),
        Image.network(
          'https://datademia.es/wp-content/uploads/2020/03/que-es-python1-1024x576.png',
          height: 95,
          width: 180,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            'Servicio: Curso Python',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            'Descripcion: Curso Python',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ),
        Divider(
          thickness: 0,
          indent: 40,
          endIndent: 40,
          color: Colors.grey,
        ),
        Image.network(
          'https://classes.engineering.wustl.edu/cse231/core/images/2/26/Java.png',
          height: 70,
          width: 80,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            'Servicio: Curso Java',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            'Descripcion: Curso Java',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildPopupDialog(BuildContext context) {
  return new AlertDialog(
    content: new Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Text(
          "Maria Eugenia //n  asdsad" "asdasdasdsa",
          style: TextStyle(
            fontSize: 22.0,
            color: Colors.black,
          ),
        ),
        Text(
            "'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae enim metus. Donec sed tempus dolor, in aliquet purus. Integer venenatis commodo nibh sit amet sodales. Donec eget felis consequat, scelerisque elit nec, ultricies sem. Suspendisse euismod tempus rutrum.'"),
        Text("Hello"),
        Text("Hello"),
      ],
    ),
    actions: <Widget>[
      new TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text('Close'),
      ),
    ],
  );
}
