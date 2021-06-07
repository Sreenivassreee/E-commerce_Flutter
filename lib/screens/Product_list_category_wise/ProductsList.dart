import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/Product_list_category_wise/appbar.dart';
import 'package:shop_app/screens/Product_list_category_wise/product_detail.dart';
import 'package:shop_app/screens/details/details_screen.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: productPageAppBar(),
      body: InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            DetailsScreen.routeName,
            // arguments: ProductBody(product: product),
          );
        },
        child: ListView(
          children: [
            InkWell(
              onTap: ()=>Navigator.pushNamed(
            context,
            DetailsScreen.routeName,
            arguments: ProductDetailsArguments(product:demoProducts[0]),
          ),
              child: Card(
              child: ListTile(
                title: Text("Macbook air 2017"),
                subtitle: Text("Rs : 150000 /-"),
                trailing: Container(
                    child: Image.network(
                        'https://sm.pcmag.com/t/pcmag_in/review/a/apple-macb/apple-macbook-air-2020_z2dx.1920.jpg')),
              ),
                      ),
            ),Card(
            child: ListTile(
              title: Text("Macbook air 2017"),
              subtitle: Text("Rs : 150000 /-"),
              trailing: Container(
                  child: Image.network(
                      'https://sm.pcmag.com/t/pcmag_in/review/a/apple-macb/apple-macbook-air-2020_z2dx.1920.jpg')),
            ),
          ),Card(
            child: ListTile(
              title: Text("Macbook air 2017"),
              subtitle: Text("Rs : 150000 /-"),
              trailing: Container(
                  child: Image.network(
                      'https://sm.pcmag.com/t/pcmag_in/review/a/apple-macb/apple-macbook-air-2020_z2dx.1920.jpg')),
            ),
          ),Card(
            child: ListTile(
              title: Text("Macbook air 2017"),
              subtitle: Text("Rs : 150000 /-"),
              trailing: Container(
                  child: Image.network(
                      'https://sm.pcmag.com/t/pcmag_in/review/a/apple-macb/apple-macbook-air-2020_z2dx.1920.jpg')),
            ),
          ),Card(
            child: ListTile(
              title: Text("Macbook air 2017"),
              subtitle: Text("Rs : 150000 /-"),
              trailing: Container(
                  child: Image.network(
                      'https://sm.pcmag.com/t/pcmag_in/review/a/apple-macb/apple-macbook-air-2020_z2dx.1920.jpg')),
            ),
          ),Card(
            child: ListTile(
              title: Text("Macbook air 2017"),
              subtitle: Text("Rs : 150000 /-"),
              trailing: Container(
                  child: Image.network(
                      'https://sm.pcmag.com/t/pcmag_in/review/a/apple-macb/apple-macbook-air-2020_z2dx.1920.jpg')),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Macbook air 2017"),
              subtitle: Text("Rs : 150000 /-"),
              trailing: Container(
                  child: Image.network(
                      'https://sm.pcmag.com/t/pcmag_in/review/a/apple-macb/apple-macbook-air-2020_z2dx.1920.jpg')),
            ),
          ),Card(
            child: ListTile(
              title: Text("Macbook air 2017"),
              subtitle: Text("Rs : 150000 /-"),
              trailing: Container(
                  child: Image.network(
                      'https://sm.pcmag.com/t/pcmag_in/review/a/apple-macb/apple-macbook-air-2020_z2dx.1920.jpg')),
            ),
          ),
          ],
          
        ),
      ),
    );
  }
}
