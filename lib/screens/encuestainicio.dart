
import 'package:app_motion/config/palette.dart';
import 'package:app_motion/screens/Evaluadas.dart';
import 'package:app_motion/screens/Pendientes.dart';
import 'package:app_motion/screens/Realizadas.dart';
import 'package:app_motion/screens/bottom_nav_screen.dart';
import 'package:app_motion/screens/directorio.dart';
import 'package:app_motion/screens/encuestapendiente.dart';
import 'package:app_motion/screens/login.dart';
import 'package:app_motion/screens/oportunidades_page.dart';
import 'package:app_motion/screens/profilepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'TTD.dart';

class EncuestaInicio extends StatefulWidget {
  static String id = 'encuestainicio';
  @override
  _ttdState createState() => _ttdState();
}

class _ttdState extends State<EncuestaInicio> {
  @override
  Widget build(BuildContext context) {
    final TabController = DefaultTabController(
      length: 4,
      child: Scaffold(
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
            ListTile(
              leading: Icon(
                Icons.home,
               color: Colors.white,
                ),
              title: Text('Inicio',style: TextStyle(color: Colors.white, fontSize: 16)),
             
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
               onPressed: (){

               },
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.all_inbox_outlined),
                text: "Todas",
              ),
              Tab(
                icon: Icon(Icons.pending_actions),
                text: "Pendientes",
              ),
              Tab(
                icon: Icon(Icons.done_outline_rounded),
                text: "Realizadas",
              ),
              Tab(
                icon: Icon(Icons.task_outlined),
                text: "Evaluadas",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            TTD(),
            Pendientes(),
            Realizadas(),
            Evaluadas(),
          ],
        ),
      ),
    );
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: TabController,
      routes: {
        'Ini': (context) => EncuestaInicio(),
        'page': (context) => Encuesta(),
      },
    );
  }
}