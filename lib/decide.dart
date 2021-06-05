// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:shop_app/screens/home/home_screen.dart';
// import 'package:shop_app/screens/sign_in/sign_in_screen.dart';

// class Decide extends StatefulWidget {
//   static String routeName = "/decide";

//   @override
//   _DecideState createState() => _DecideState();
// }

// class _DecideState extends State<Decide> {
//   FirebaseAuth auth = FirebaseAuth.instance;
//   var screen = "";

//   @override
//   void initState() {
//     if (auth.currentUser != null) {
//       setState(() {
//         screen = "Home";
//       });
     
//     }
//     {
//       screen = "SignIn";
     
//     }
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (screen == "Home") {
//       return HomeScreen();
//     } else {
//       return SignInScreen();
//     }
    

   
//   }
// }
