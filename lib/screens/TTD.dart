
import 'package:app_motion/screens/informacionE.dart';
import 'package:app_motion/screens/informacionP.dart';
import 'package:app_motion/screens/informacionR.dart';
import 'package:app_motion/screens/parametros.dart';
import 'package:flutter/material.dart';

class TTD extends StatefulWidget {
  @override
  _TTDState createState() => _TTDState();
}

void _showPendientes(BuildContext context) {
  Navigator.of(context).push(Info_Pen());
}

void _showRealizadas(BuildContext context) {
  Navigator.of(context).push(Info_Rea());
}

void _showEvaluadas(BuildContext context) {
  Navigator.of(context).push(Info_Eva());
}

class _TTDState extends State<TTD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.indigo[50],
            child: Center(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: SizedBox(
                          height: 497.0,
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Divider(
                                  indent: 0,
                                  endIndent: 0,
                                  color: Colors.indigo[50],
                                ),
                                _crearPendientes(),
                                Divider(
                                  indent: 0,
                                  endIndent: 0,
                                  color: Colors.indigo[50],
                                ),
                                _crearBuscar(),
                                Divider(
                                  indent: 0,
                                  endIndent: 0,
                                  color: Colors.indigo[50],
                                ),
                                _craerDatatable(),
                                Divider(
                                  indent: 0,
                                  endIndent: 0,
                                  color: Colors.indigo[50],
                                ),
                                _crearRealizados(),
                                Divider(
                                  indent: 0,
                                  endIndent: 0,
                                  color: Colors.indigo[50],
                                ),
                                _crearBuscarR(),
                                Divider(
                                  indent: 0,
                                  endIndent: 0,
                                  color: Colors.indigo[50],
                                ),
                                _craerDatatableR(),
                                Divider(
                                  indent: 0,
                                  endIndent: 0,
                                  color: Colors.indigo[50],
                                ),
                                Divider(
                                  indent: 0,
                                  endIndent: 0,
                                  color: Colors.indigo[50],
                                ),
                                _crearEvaluadas(),
                                Divider(
                                  indent: 0,
                                  endIndent: 0,
                                  color: Colors.indigo[50],
                                ),
                                _crearBuscarE(),
                                Divider(
                                  indent: 0,
                                  endIndent: 0,
                                  color: Colors.indigo[50],
                                ),
                                _craerDatatableE(),
                                Divider(
                                  indent: 0,
                                  endIndent: 0,
                                  color: Colors.indigo[50],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _crearPendientes() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
      color: Colors.teal[400],
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Pendientes',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
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

  late List<Para> param;
  late bool sortAscending;
  late List<ParaR> paramR;
  late bool sortAscendingR;
  late List<ParaE> paramE;
  late bool sortAscendingE;

  Widget _craerDatatable() {
    final lstP = [
      Container(
        color: Colors.white,
        child: ListTile(
          trailing: RaisedButton(
            color: Colors.blue[300],
            onPressed: () => _showPendientes(context),
            child: Text('Show Overlay'),
          ),
          title: Text('NOMBRE'),
          subtitle: Text('APELLIDO'),
          leading: Image.network(
            'https://www.autoconstruction-renovation.fr/wp-content/uploads/2020/05/iconfinder_18-man_4714992.png',
            height: 50,
            width: 50,
          ),
        ),
      ),
      Container(
        color: Colors.white,
        child: ListTile(
          trailing: RaisedButton(
            color: Colors.blue[300],
            onPressed: () => _showPendientes(context),
            child: Text('Show Overlay'),
          ),
          title: Text('NOMBRE'),
          subtitle: Text('APELLIDO'),
          leading: Image.network(
            'https://www.siclica.com/wp-content/uploads/2020/02/user6.jpg',
            height: 50,
            width: 50,
          ),
        ),
      ),
      Container(
        color: Colors.white,
        child: ListTile(
          trailing: RaisedButton(
            color: Colors.blue[300],
            onPressed: () => _showPendientes(context),
            child: Text('Contactar'),
          ),
          title: Text('NOMBRE'),
          subtitle: Text('APELLIDO'),
          leading: Image.network(
            'https://www.autoconstruction-renovation.fr/wp-content/uploads/2020/05/iconfinder_18-man_4714992.png',
            height: 50,
            width: 50,
          ),
        ),
      ),
    ];
    return Expanded(
      child: ListView.builder(
          itemCount: lstP.length,
          itemBuilder: (context, P) {
            return lstP[P];
          }),
    );
  }

  ordenarColumna(int columnIndex, bool ordenar) {
    if (columnIndex == 1) {
      if (ordenar) {
        param.sort((a, b) => a.socio.compareTo(b.socio));
      } else {
        param.sort((a, b) => b.socio.compareTo(a.socio));
      }
    }
  }

  Widget _crearRealizados() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
      color: Colors.teal[400],
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Realizadas',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<ParaR> usersFilteredR = [];
  TextEditingController controllerR = TextEditingController();
  String _searchResultR = '';

  Widget _crearBuscarR() {
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
                        _searchResultR = value;
                        usersFilteredR = paramR
                            .where((paramR) =>
                                paramR.socio.contains(_searchResultR) ||
                                paramR.empresa.contains(_searchResultR))
                            .toList();
                      });
                    }),
                trailing: new IconButton(
                  icon: new Icon(Icons.cancel),
                  onPressed: () {
                    setState(() {
                      controller.clear();
                      _searchResultR = '';
                      usersFilteredR = paramR;
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

  Widget _craerDatatableR() {
    final lstR = [
      Container(
        color: Colors.white,
        child: ListTile(
          trailing: RaisedButton(
            onPressed: () => _showRealizadas(context),
            child: Text('Show Overlay'),
          ),
          title: Text('NOMBRE'),
          subtitle: Text('APELLIDO'),
          leading: Image.network(
            'https://www.siclica.com/wp-content/uploads/2020/02/user6.jpg',
            height: 50,
            width: 50,
          ),
        ),
      ),
      Container(
        color: Colors.white,
        child: ListTile(
          trailing: RaisedButton(
            onPressed: () => _showRealizadas(context),
            child: Text('Show Overlay'),
          ),
          title: Text('NOMBRE'),
          subtitle: Text('APELLIDO'),
          leading: Image.network(
            'https://www.autoconstruction-renovation.fr/wp-content/uploads/2020/05/iconfinder_18-man_4714992.png',
            height: 50,
            width: 50,
          ),
        ),
      ),
    ];
    return Expanded(
      child: ListView.builder(
          itemCount: lstR.length,
          itemBuilder: (context, R) {
            return lstR[R];
          }),
    );
  }

  ordenarColumn(int columnIndex, bool ordenar) {
    if (columnIndex == 1) {
      if (ordenar) {
        paramR.sort((a, b) => a.socio.compareTo(b.socio));
      } else {
        paramR.sort((a, b) => b.socio.compareTo(a.socio));
      }
    }
  }

  Widget _crearEvaluadas() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
      color: Colors.teal[400],
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Evaluadas',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<ParaE> usersFilteredE = [];
  TextEditingController controllerE = TextEditingController();
  String _searchResultE = '';

  Widget _crearBuscarE() {
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
                        _searchResultE = value;
                        usersFilteredE = paramE
                            .where((paramE) =>
                                paramE.socioe.contains(_searchResultE) ||
                                paramE.empresa.contains(_searchResultE))
                            .toList();
                      });
                    }),
                trailing: new IconButton(
                  icon: new Icon(Icons.cancel),
                  onPressed: () {
                    setState(() {
                      controller.clear();
                      _searchResultE = '';
                      usersFilteredE = paramE;
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

  Widget _craerDatatableE() {
    final lstE = [
      Container(
        color: Colors.white,
        child: ListTile(
          trailing: RaisedButton(
            onPressed: () => _showEvaluadas(context),
            child: Text('Show Overlay'),
          ),
          title: Text('NOMBRE'),
          subtitle: Text('APELLIDO'),
          leading: Image.network(
            'https://www.siclica.com/wp-content/uploads/2020/02/user6.jpg',
            height: 50,
            width: 50,
          ),
        ),
      ),
      Container(
        color: Colors.white,
        child: ListTile(
          trailing: RaisedButton(
            onPressed: () => _showEvaluadas(context),
            child: Text('Show Overlay'),
          ),
          title: Text('NOMBRE'),
          subtitle: Text('APELLIDO'),
          leading: Image.network(
            'https://www.autoconstruction-renovation.fr/wp-content/uploads/2020/05/iconfinder_18-man_4714992.png',
            height: 50,
            width: 50,
          ),
        ),
      ),
    ];
    return Expanded(
      child: ListView.builder(
          itemCount: lstE.length,
          itemBuilder: (context, E) {
            return lstE[E];
          }),
    );
  }

  ordenarColum(int columnIndex, bool ordenar) {
    if (columnIndex == 1) {
      if (ordenar) {
        paramE.sort((y, z) => y.socioe.compareTo(z.socioe));
      } else {
        paramE.sort((y, z) => z.socioe.compareTo(y.socioe));
      }
    }
  }
}