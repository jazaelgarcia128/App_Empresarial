import 'package:app_motion/screens/directorio.dart';
import 'package:app_motion/screens/empresa.dart';
import 'package:app_motion/screens/encuestapendiente.dart';
import 'package:app_motion/screens/login.dart';
import 'package:app_motion/screens/oportunidades_page.dart';
import 'package:app_motion/screens/personal.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:app_motion/config/palette.dart';
import 'package:app_motion/config/styles.dart';
import 'package:app_motion/data/data.dart';
import 'package:app_motion/widgets/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'profilepage.dart';

class StatsScreen extends StatefulWidget {
   
  @override
  _StatsScreenState createState() => _StatsScreenState();
  
}

class _StatsScreenState extends State<StatsScreen> {
  
 void _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xff3f51b5),
            height: 160,
            child: Container(
              child: _buildBottomNavigationMenu(),
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(10),
                  topRight: const Radius.circular(10),
                ),
              ),
            ),
          );
        });
  }
  Column _buildBottomNavigationMenu() {
    return Column(
      children: <Widget>[
       
        ListTile(
          leading: Icon(Icons.accessibility_new),
          title: Text('Configuración Personal'),
         onTap: () {
              
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Personal()),
            );
              },
        ),
        ListTile(
          leading: Icon(Icons.work),
          title: Text('Configuración Empresa'),
        onTap: () {
         
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Empresa()),
            );
              },
        ),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.primaryColor,
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
                    child: Image.asset('assets/imagenes/user.png', width: 100, height: 100,),
                   elevation: 10,
                ),
                Text('Oliver Carmona', style: TextStyle(color: Colors.white, fontSize: 20.0),),
            
               
              ],

            ),
            ),
           
           const SizedBox(height: 10),
            ListTile(
              leading: Icon(
                Icons.person,
               color: Colors.white,
                ),
              title: Text('Perfil',style: TextStyle(color: Colors.white, fontSize: 16)),
             
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
              title: Text('Directorio', style: TextStyle(color: Colors.white,fontSize: 16)),
             
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
              title: Text('Oportunidades',style: TextStyle(color: Colors.white,fontSize: 16)),
              
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
              title: Text('Encuestas',style: TextStyle(color: Colors.white,fontSize: 16)),
             
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
              title: Text('Salir',style: TextStyle(color: Colors.white,fontSize: 16)),
             
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
         actions: <Widget>[
            IconButton(
              icon: new Icon(Icons.settings),
               onPressed: () => _onButtonPressed(),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
           /*Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PonenciaPage()),
            );*/
        },
        label: const Text('Post'),
        icon: const Icon(Icons.add),
        backgroundColor: Colors.lightBlue,
        
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
           _crearBIM(),
          _ListaPublicaciones(),
            SizedBox(height: 30.0),
            _ListaPublicaciones(),
              SizedBox(height: 30.0),
              _ListaPublicaciones(),
                SizedBox(height: 30.0),
                _ListaPublicaciones(),
                  SizedBox(height: 30.0),
                  _ListaPublicaciones(),
                    SizedBox(height: 30.0),
                    _ListaPublicaciones(),
                    
        ],
      )
      
    );
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
  
 Widget _ListaPublicaciones(){
     final card = Container(
      // clipBehavior: Clip.antiAlias,
       child: Column(
         children: <Widget>[

           FadeInImage(
             image: NetworkImage('https://elmunicipalqro.com/wp-content/uploads/2020/09/Business-in-Motion-Network.jpg'),
             placeholder: AssetImage('assets/gif/loading.gif'),
             fadeInDuration: Duration(milliseconds: 200),
             height: 230.0,
             fit: BoxFit.cover,
             ),
          /* Image(
             image: NetworkImage('https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg'),
           ),*/
           Container(
             padding: EdgeInsets.all(10.0) ,
             child: Text('Flyer Post ',
             style: TextStyle(fontSize:18.0, fontWeight: FontWeight.bold),
             
             ),
           ),
           Container(
             padding: EdgeInsets.all(10.0),
             height: 150,
             width:350,
             child: Card(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: <Widget>[
                     Text('https://facebook.com/Business-In-Motion ',
                     style: TextStyle(fontSize:18.0),
                     ),
                     
                      SizedBox(height: 20.0),
                     MaterialButton(
                       minWidth: 200.0,
                       height: 40.0,
                       onPressed: () {},
                       color: Colors.blue,
                       child: Text('Ver Flyer', style: TextStyle(color: Colors.white)),
                    ),
                 ],
               ),
             ),
           ),
         ],
         ),
     );
     return Container(
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(10.0),
         color: Colors.white,
         boxShadow: <BoxShadow>[
           BoxShadow(color: Colors.black26,
           blurRadius: 10.0,
           spreadRadius: 2.0,
           offset: Offset(1.0, 5.0),
           )
         ]
        
         ),
         child: ClipRRect(
           borderRadius: BorderRadius.circular(30.0),
           child: card,
         ),
     );
   }
  
  
}
