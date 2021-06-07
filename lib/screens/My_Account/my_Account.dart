import 'package:flutter/material.dart';
import 'package:shop_app/screens/Product_list_category_wise/appbar.dart';
import 'package:shop_app/screens/profile/components/profile_menu.dart';
import 'package:shop_app/screens/profile/components/profile_pic.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: productPageAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
        
            SizedBox(height: 20),
            ProfileMenu(
              text: "My Orders",
              press: () => {},
            ),
            ProfileMenu(
              text: "My Wallet",
              press: () {},
            ),
            // ProfileMenu(
            //   text: "Settings",
            //   press: () {},
            // ),
            // ProfileMenu(
            //   text: "Help Center",
            //   press: () {},
            // ),
            // ProfileMenu(
            //   text: "Log Out",
            //   press: () async {
              
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}