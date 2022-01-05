
import 'package:app_motion/screens/informacionP.dart';
import 'package:app_motion/screens/parametros.dart';
import 'package:flutter/material.dart';

class Pendientes extends StatefulWidget {
  @override
  _PendientesState createState() => _PendientesState();
}

void _showPendientes(BuildContext context) {
  Navigator.of(context).push(Info_Pen());
}

class _PendientesState extends State<Pendientes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
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
                        height: 387.0,
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
      ]),
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

  Widget _craerDatatable() {
    final lst = [
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
          itemCount: lst.length,
          itemBuilder: (context, i) {
            return lst[i];
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
}