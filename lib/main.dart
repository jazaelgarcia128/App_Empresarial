import 'package:app_motion/screens/Info.dart';
import 'package:app_motion/screens/directorio.dart';
import 'package:app_motion/screens/empresa.dart';
import 'package:app_motion/screens/encuestainicio.dart';
import 'package:app_motion/screens/encuestapendiente.dart';
import 'package:app_motion/screens/eventos_page.dart';
import 'package:app_motion/screens/inicio.dart';
import 'package:app_motion/screens/invitado/invitadopage.dart';
import 'package:app_motion/screens/login.dart';
import 'package:app_motion/screens/oportunidades_page.dart';
import 'package:app_motion/screens/oportunidades_total.dart';
import 'package:app_motion/screens/profilepage.dart';
import 'package:app_motion/screens/personal.dart';
import 'package:app_motion/screens/ponencia2_page.dart';
import 'package:app_motion/screens/ponencia3_page.dart';
import 'package:app_motion/screens/ponencia_page.dart';
import 'package:app_motion/screens/prueba.dart';
import 'package:app_motion/screens/registro.dart';
import 'package:app_motion/screens/registro2.dart';
import 'package:app_motion/screens/registro3.dart';
import 'package:app_motion/screens/registro4.dart';
import 'package:app_motion/screens/registro5.dart';
import 'package:app_motion/screens/registro6.dart';
import 'package:app_motion/screens/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
     // home: BottomNavScreen(),
     home: Inicio(),
      routes: {
      'direc': (context) => Directorio(),
       'home': (context) => BottomNavScreen(),
      Directorio.id: (context) => Directorio(),
      Inicio.id:(context) => Inicio(),
      Login.id: (context) => Login(),
      'login' : (context) => Login(),
      BottomNavScreen.id:(context) => BottomNavScreen(),
      Encuesta.id:(context)=>Encuesta(),
      'oportunidades_total': (context) => OportunidadesTotal(),
      
       OportunidadesPage.id:(context) => OportunidadesPage(),
       EventosPage.id:(context) => EventosPage(),
       'ponencia2_page': (context) => Ponencia2Page(),
       'ponencia3_page': (context) => Ponencia3Page(),
       'ponencia_page': (context) => PonenciaPage(),
       PonenciaPage.id:(context) => PonenciaPage(),
       Empresa.id: (context) => Empresa(),
       Personal.id:(context) => Personal(),
       Registro.id: (context) => Registro(),
         'registro': (context) => Registro(),
        'registro2': (context) => Registro2(),
        'registro3': (context) => Registro3(),
        'registro4': (context) => Registro4(),
        'registro5': (context) => Registro5(),
        'registro6': (context) => Registro6(),
       'profilepage': (context) => ProfilePage(),
       ProfilePage.id:(context) => ProfilePage(),
        'registr': (context) => MyStatefulWidge(),
        Info.id:(context) => Info(),
        InvitadoPage.id:(context) => InvitadoPage(),
       'Ini': (context) => EncuestaInicio(),
        'page': (context) => Encuesta(),
      
     },
    );
  }
}
