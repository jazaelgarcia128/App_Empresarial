import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:app_motion/config/palette.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  
  @override
  Widget build(BuildContext context) {
    
    return AppBar(
       automaticallyImplyLeading: false,
       
      
    title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Builder(
            builder: (context) => IconButton(
              icon: SvgPicture.asset(
                "assets/icons/mostrar.svg",
                height: 55,
               
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
            
          ),
          
        ),
         actions: <Widget>[
            IconButton(
              icon: new Icon(Icons.settings),
           onPressed: (){},
            ),
          ],

         backgroundColor: Palette.primaryColor,
        elevation: 0,
        centerTitle: false,
        titleSpacing: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

