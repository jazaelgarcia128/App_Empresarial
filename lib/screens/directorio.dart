import 'package:app_motion/api/DirectorioConsulta.dart';
import 'package:app_motion/api/Empresa.dart';
import 'package:app_motion/api/EmpresaConsulta.dart';
import 'package:app_motion/api/Socio.dart';
import 'package:app_motion/config/palette.dart';
import 'package:app_motion/screens/bottom_nav_screen.dart';
import 'package:app_motion/screens/encuestapendiente.dart';
import 'package:app_motion/screens/login.dart';
import 'package:app_motion/screens/oportunidades_page.dart';
import 'package:app_motion/screens/parametrosdirec.dart';
import 'package:app_motion/screens/profilepage.dart';
import 'package:app_motion/screens/tabla.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Directorio extends StatefulWidget {
  static String id = 'directorio';

  @override
  _DirectorioState createState() => _DirectorioState();
}

void _showOverlay(BuildContext context, Socio user) {
  Navigator.of(context).push(TutorialOverlay(user: user));
}

class _DirectorioState extends State<Directorio> {
  List<Socio> socios = [];
 List<Empresa> empresas = [];

  @override
  Widget build(BuildContext context) {
    //Future<List<Socio>> futureList = DirectorioApi();   //Function from API
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
        body: FutureBuilder(
            future: DirectorioApi(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView(
                    padding: EdgeInsets.all(10.0),
                    children: <Widget>[
                      _crearBIM(),
                      SizedBox(height: 10.0),
                      ..._listaSocios(socios).toList(),
                      SizedBox(height: 10.0),
                    ]);
              } else if (snapshot.hasError) {
                print(snapshot.error);
                return Text("Error");
              }
              return Center(child: CircularProgressIndicator());
            }));
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

  List<Widget> _listaSocios(List<Socio> socios) {
    List<Widget> users = [];

    for (var item in socios) {
      users.add(_cardTipo1(item));
    }
    return users;
  }

  Widget _cardTipo1(Socio user,) {
    //String nombreAp, String descripcion){    //Se agrega argumento a funcion
    

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.blue,
            ),
            title: Text(user.nombre +
                " " +
                user.apellidoP +
                " " +
                user.apellidoM), //Argumento
            subtitle: Text(user.descripcion),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                onPressed: () {},
                child: Text('Contactar'),
              ),
              TextButton(
                onPressed: () => {_showOverlay(context, user),},
                child: Text('Ver datos'),
                
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _crearlistview() {
    return ListView.builder(
        itemCount: socios.length,
        itemBuilder: (_, index) {
          return _cardTipo1(socios[index]);
          //ListTile(
          //title: Text('Socio Nombre $index'),
          //leading: Icon(Icons.person),
          //);
        });
  }

  Widget _crearDirectorio() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
      color: Colors.indigo,
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Directorio de Socios',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  late List<Para> param;
  late bool sortAscending;

  @override
  void initState() {
    super.initState();
    sortAscending = false;
    param = Para.getParametros();

    DirectorioApi().then((value) {
      setState(() {
        socios.addAll(value);
      });
    });
  }

  List<Para> usersFiltered = [];
  TextEditingController controller = TextEditingController();
  String _searchResult = '';

  Widget _crearBuscar() {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      color: Colors.indigo[50],
      child: Center(
        child: Column(
          children: <Widget>[
            Card(
              child: new ListTile(
                leading: new Icon(Icons.search),
                title: new TextField(
                    controller: controller,
                    decoration: new InputDecoration(
                        hintText: 'Search', border: InputBorder.none),
                    onChanged: (value) {
                      setState(() {
                        _searchResult = value;
                        usersFiltered = param
                            .where((param) =>
                                param.socio.contains(_searchResult) ||
                                param.empresa.contains(_searchResult))
                            .toList();
                      });
                    }),
                trailing: new IconButton(
                  icon: new Icon(Icons.cancel),
                  onPressed: () {
                    setState(() {
                      controller.clear();
                      _searchResult = '';
                      usersFiltered = param;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
