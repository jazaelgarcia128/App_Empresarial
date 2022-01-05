import 'package:app_motion/api/profile.dart';
import 'package:app_motion/models/profile.dart';
import 'package:app_motion/screens/directorio.dart';
import 'package:app_motion/screens/empresa.dart';
import 'package:app_motion/screens/encuestapendiente.dart';
import 'package:app_motion/screens/login.dart';
import 'package:app_motion/screens/oportunidades_page.dart';
import 'package:app_motion/screens/oportunidades_total.dart';
import 'package:app_motion/screens/profilepage.dart';
import 'package:app_motion/screens/personal.dart';
import 'package:flutter/material.dart';
import 'package:app_motion/config/palette.dart';
import 'package:app_motion/config/styles.dart';
import 'package:app_motion/data/data.dart';
import 'package:app_motion/widgets/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Profile> data = <Profile>[];
  void initState() {
    super.initState();
    ProfileProvider().GetPerfil().then((value) {
      setState(() {
        data.addAll(value);
      });
    });
  }

 void _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xff3f51b5),
            height: 140,
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
          title: Text('Configuración empresa'),
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
    final screenHeight = MediaQuery.of(context).size.height;
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
            child: _profilelateral(context),
            ),
           
          
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
    
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),
          _buildPreventionTips(screenHeight),
           _buildPreventionTip(screenHeight),
          _buildYourOwnTest(screenHeight),
          _buildYourOwnTes(screenHeight),
           _buildYourOwnTe(screenHeight),
           _buildYourOwnT(screenHeight),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildHeader(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Palette.primaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Dashboard',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              
              ],
            ),
            SizedBox(height: screenHeight * 0.05),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Como funciona la app Motion?',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Text(
                  'Encontrarás nuestro catalogo de cursos, eventos, socios y podrás consultar a detalle el estado de tu membresía',
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton.icon(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 20.0,
                      ),
                      onPressed: () {},
                      color: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      icon: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      label: Text(
                        'Perfil',
                        style: Styles.buttonTextStyle,
                      ),
                      textColor: Colors.white,
                    ),
                    
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildPreventionTips(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Para tí',
              style: const TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: prevention
                  .map((e) => Column(
                        children: <Widget>[
                          Image.asset(
                            e.keys.first,
                            height: screenHeight * 0.12,
                          ),
                          SizedBox(height: screenHeight * 0.015),
                          Text(
                            e.values.first,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
  
  SliverToBoxAdapter _buildPreventionTip(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Oportunidades de negocio',
              style: const TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
              ),
            ),
         
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildYourOwnTest(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        
        
        margin: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        padding: const EdgeInsets.all(10.0),
        height: screenHeight * 0.15,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffe0e0e0), Palette.primary],
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          
          children: <Widget>[
              FadeInImage(
             image: AssetImage('assets/imagenes/logoflutter.png'),
             placeholder: AssetImage('assets/gif/jar-loading.gif'),
             fadeInDuration: Duration(seconds:15,),
             height: 300.0,
             fit: BoxFit.cover,
             ),
           
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Ganadas',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget> [
               TextButton(
                 onPressed: (){
                   Navigator.pushNamed(context, OportunidadesTotal.id);
                 },
                 child: Text('Ver',style: const TextStyle(
                    color: Colors.white,
                  ),),
                 ),
                  TextButton(
                 onPressed: ()=>_mostrarAlert(context),
                 child: Text('Consultar', style: const TextStyle(
                    color: Colors.white,
                  ),),
                 ),
              ],
            )
              ],
            )
          ],
        ),
      ),
    );
  }
   void _mostrarAlert(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)
          ),
          title: Text('Oportunidad de negocio'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Velit aliqua esse tempor anim cillum pariatur anim dolore proident anim esse do laborum laborum. '),
             FadeInImage(
                image: NetworkImage('http://karinlifoods.com/wp-content/uploads/2017/09/imagen-no-disponible.jpg'),
               placeholder: AssetImage('assets/gif/loading78.gif'),
             fadeInDuration: Duration(milliseconds: 200),
             height: 230.0,
             fit: BoxFit.cover,
             ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancelar'),
              onPressed: ()=> Navigator.of(context).pop(),
            ),
             TextButton(
              child: Text('Ok'),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),
          ],

        );
      }
    );
  }
  
  SliverToBoxAdapter _buildYourOwnTes(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        padding: const EdgeInsets.all(10.0),
        height: screenHeight * 0.15,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffe0e0e0), Palette.primary],
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            
            FadeInImage(
             image: AssetImage('assets/imagenes/logoflutter.png'),
             placeholder: AssetImage('assets/gif/jar-loading.gif'),
             fadeInDuration: Duration(seconds: 15),
             height: 300.0,
             fit: BoxFit.cover,
             ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Perdidas',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                 Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget> [
               TextButton(
                 onPressed: (){
                    Navigator.pushNamed(context, OportunidadesTotal.id);
                 },
                 child: Text('Ver',style: const TextStyle(
                    color: Colors.white,
                  ),),
                 ),
                  TextButton(
                 onPressed: ()=>_mostrarAlert(context),
                 child: Text('Consultar',style: const TextStyle(
                    color: Colors.white,
                  ),),
                 ),
              ],
            )
              ],
            )
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildYourOwnTe(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        padding: const EdgeInsets.all(10.0),
        height: screenHeight * 0.15,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffe0e0e0), Palette.primary],
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
           FadeInImage(
             image: AssetImage('assets/imagenes/logoflutter.png'),
             placeholder: AssetImage('assets/gif/jar-loading.gif'),
             fadeInDuration: Duration(seconds: 15),
             height: 300.0,
             fit: BoxFit.cover,
             ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'En proceso',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                 Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget> [
               TextButton(
                 onPressed: (){
                    Navigator.pushNamed(context, OportunidadesTotal.id);
                 },
                 child: Text('Ver',style: const TextStyle(
                    color: Colors.white,
                  ),),
                 ),
                  TextButton(
                 onPressed: ()=>_mostrarAlert(context),
                 child: Text('Consultar',style: const TextStyle(
                    color: Colors.white,
                  ),),
                 ),
              ],
            )
              ],
            )
          ],
        ),
      ),
    );
  }
  
  SliverToBoxAdapter _buildYourOwnT(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        padding: const EdgeInsets.all(10.0),
        height: screenHeight * 0.15,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffe0e0e0), Palette.primary],
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            FadeInImage(
             image: AssetImage('assets/imagenes/logoflutter.png'),
             placeholder: AssetImage('assets/gif/jar-loading.gif'),
             fadeInDuration: Duration(seconds: 15),
             height: 300.0,
             fit: BoxFit.cover,
             ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Totales',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                 Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget> [
               TextButton(
                 onPressed: (){
                    Navigator.pushNamed(context, OportunidadesTotal.id);
                 },
                 child: Text('Ver',style: const TextStyle(
                    color: Colors.white,
                  ),),
                 ),
                  TextButton(
                 onPressed: (){},
                 child: Text('Consultar',style: const TextStyle(
                    color: Colors.white,
                  ),),
                 ),
              ],
            )
              ],
            )
          ],
        ),
      ),
    );
  }
    Widget _profilelateral(BuildContext context) {
  return ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext, int index) {
          return Column(
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
                      '${data[index].nombre + ' ' + data[index].paterno}',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ],
                );
        }); 
}
}
