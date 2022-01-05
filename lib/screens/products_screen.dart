import 'package:app_motion/config/palette.dart';
import 'package:app_motion/screens/body.dart';
import 'package:app_motion/screens/empresa.dart';
import 'package:app_motion/screens/personal.dart';
import 'package:app_motion/screens/ponencia_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



 class ProductsScreen extends StatefulWidget {
  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}
class _ProductsScreenState extends State<ProductsScreen> {

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor:  Palette.primaryColor,
      body: Body(),
     
           
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
        ),
        floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
           Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PonenciaPage()),
            );
        },
        label: const Text('Evento'),
        icon: const Icon(Icons.add),
        backgroundColor: Colors.deepOrange,
      ),
        

    );
     
  }
}