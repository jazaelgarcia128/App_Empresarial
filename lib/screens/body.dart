import 'package:app_motion/screens/category_list.dart';
import 'package:app_motion/screens/constants.dart';
import 'package:app_motion/screens/details_screen.dart';
import 'package:app_motion/screens/product.dart';
import 'package:app_motion/screens/product_card.dart';
import 'package:app_motion/screens/search_box.dart';
import 'package:flutter/material.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      
      bottom: false,
      child: Column(
        
        children: <Widget>[

          
          SearchBox(onChanged: (value) {}),
          CategoryList(),
          SizedBox(height: kDefaultPadding / 4),
          Expanded(
            child: Stack(
              children: <Widget>[
               
                // Our background
                Container(
                  margin: EdgeInsets.only(top: 50),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                  ),
                ),
                ListView.builder(
                  // here we use our demo procuts list
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    product: products[index],

                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            product: products[index],
                          
                          ),
                        ),
                      );
                    },
                    
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
    
    
  }
  
  
}