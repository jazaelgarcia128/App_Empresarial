import 'package:flutter/material.dart';



class OportunidadesTotal extends StatefulWidget {
  static String id = 'oportunidades_total';
 
  @override
  _OportunidadesTotalState createState() => _OportunidadesTotalState();
}

class _OportunidadesTotalState extends State<OportunidadesTotal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text("Ganadas",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        )),
                    background: Image.network(
                      "https://destinonegocio.com/wp-content/uploads/2015/08/ico-destinonegocio-como-establecer-el-precio-de-venta-istock-getty-images-800x4305.jpg",
                      fit: BoxFit.cover,
                    )),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(icon: Icon(Icons.info), text: "Finalizadas"),
                      Tab(icon: Icon(Icons.lightbulb_outline), text: "En proceso"),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body:   Center(child: _crearlistview(context)),
        ),
      ),
    );
  }
}

  Widget _crearlistview(BuildContext context){
    return ListView.builder(
      padding: EdgeInsets.all(20),
      itemCount: 3,
      itemBuilder: (_, index){
        return Card(
          child: ListTile(
            title: Text('Oportunidad $index'),
            subtitle: Text('Empresa $index'),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){
             
            },
          ),
        );
      }
      );
  }


class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}