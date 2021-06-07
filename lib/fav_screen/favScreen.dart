import 'package:flutter/material.dart';
import 'package:shop_app/components/coustom_bottom_nav_bar.dart';
import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/enums.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/Product_list_category_wise/appbar.dart';

class Fav_Screen extends StatelessWidget {
 static String routeName = "/favScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.favourite),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:80.0),
          child: Column(
            children: [
      ...List.generate(demoProducts.length, (index) => ProductCard(product: demoProducts[index]),)
            ],
            
          ),
        ),
      )
      
      // ?ProductCard(product: demoProducts[0]),
       
    );
  }
}