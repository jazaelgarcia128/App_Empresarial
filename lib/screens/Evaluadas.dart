
import 'package:app_motion/screens/informacionE.dart';
import 'package:app_motion/screens/parametros.dart';
import 'package:flutter/material.dart';

class Evaluadas extends StatefulWidget {
  @override
  _PendientesState createState() => _PendientesState();
}

void _showEvaluadas(BuildContext context) {
  Navigator.of(context).push(Info_Eva());
}

class _PendientesState extends State<Evaluadas> {
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
      ]),
    );
  }

  Widget _crearEvaluadas() {
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

  List<ParaE> usersFiltered = [];
  TextEditingController controller = TextEditingController();
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
                        usersFiltered = paramE
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
                      usersFiltered = paramE;
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

  late List<ParaE> paramE;
  late bool sortAscendingE;

  @override
  void initState() {
    super.initState();
    sortAscendingE = false;
    paramE = ParaE.getParametrosE();
  }

  Widget _craerDatatableE() {
    final lst = [
      Container(
        color: Colors.white,
        child: ListTile(
          trailing: RaisedButton(
            color: Colors.blue[300],
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
            color: Colors.blue[300],
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
          itemCount: lst.length,
          itemBuilder: (context, i) {
            return lst[i];
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