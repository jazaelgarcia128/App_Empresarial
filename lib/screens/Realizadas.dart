
import 'package:app_motion/screens/informacionR.dart';
import 'package:app_motion/screens/parametros.dart';
import 'package:flutter/material.dart';

class Realizadas extends StatefulWidget {
  @override
  _PendientesState createState() => _PendientesState();
}

void _showRealizadas(BuildContext context) {
  Navigator.of(context).push(Info_Rea());
}

class _PendientesState extends State<Realizadas> {
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

  List<ParaR> usersFiltered = [];
  TextEditingController controller = TextEditingController();
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
                        usersFiltered = paramR
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
                      usersFiltered = paramR;
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

  late List<ParaR> paramR;
  late bool sortAscendingR;

  @override
  void initState() {
    super.initState();
    sortAscendingR = false;
    paramR = ParaR.getParametrosR();
  }

  Widget _craerDatatableR() {
    final lst = [
      Container(
        color: Colors.white,
        child: ListTile(
          trailing: RaisedButton(
            color: Colors.blue[300],
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
            color: Colors.blue[300],
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
          itemCount: lst.length,
          itemBuilder: (context, i) {
            return lst[i];
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
}