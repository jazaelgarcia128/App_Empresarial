import 'package:app_motion/screens/color_dots.dart';
import 'package:app_motion/screens/constants.dart';
import 'package:flutter/material.dart';

class ListOfColors extends StatelessWidget {
  const ListOfColors(
    
  ) ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
       /*   ColorDot(
            fillColor: Color(0xFF80989A),
            isSelected: true,
          ),
          ColorDot(
            fillColor: Color(0xFFFF5200),
          ),
          ColorDot(
            fillColor: kPrimaryColor,
          ),*/
        ],
      ),
    );
  }
}
