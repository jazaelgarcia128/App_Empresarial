import 'package:app_motion/config/palette.dart';
import 'package:app_motion/screens/directorio.dart';
import 'package:app_motion/screens/encuestapendiente.dart';
import 'package:app_motion/screens/login.dart';
import 'package:app_motion/screens/oportunidades_page.dart';
import 'package:app_motion/screens/profilepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Info extends StatelessWidget {
  
   static String id = 'Info';
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
                height: 50,
               
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
               onPressed: () {
                 
               },
            ),
          ],
        ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          color: Colors.indigo[100],
          child: Center(
            child: Column(
              children: <Widget>[
                _crearBIM(),
                _crearTitulo(),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 30),
                  child: _crearText(),
                ),
                _crearTituloAplicacion(),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 20),
                  child: _crearTextAplicacion(),
                ),
              ],
            ),
          ),
        ),
      ),
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

  Widget _crearTitulo() {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        gradient: LinearGradient(colors: [
         Colors.blue,
          Colors.indigo,
        ], begin: Alignment.topLeft, end: Alignment.centerRight),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 30.0,
            width: 800,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Acerca de la Empresa',
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _crearText() {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.indigo,
        ], begin: Alignment.topLeft, end: Alignment.centerRight),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 100.0,
            width: 800,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'BUSINESS IN MOTION se dedica a brindar servicio a sus clientes y/o socios por medio de membresias, en el estado de Queretaro.',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Image.asset(
                  'assets/img/BimEmp.jpg',
                  height: 80.0,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'assets/img/BimEmp2.png',
                  height: 80.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _crearTituloAplicacion() {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        gradient: LinearGradient(colors: [
         Colors.blue,
          Colors.indigo,
        ], begin: Alignment.topLeft, end: Alignment.centerRight),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 30.0,
            width: 800,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Acerca de la Aplicación',
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _crearTextAplicacion() {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        gradient: LinearGradient(colors: [
         Colors.blue,
          Colors.indigo,
        ], begin: Alignment.topLeft, end: Alignment.centerRight),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 100.0,
            width: 800,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Esta apliaccion tiene como propocito el brindarle un mejor servicio a los Socios de BUSINESS IN MOTION',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Image.asset(
            'assets/img/AppCel.png',
            height: 120.0,
          ),
        ],
      ),
    );
  }
}