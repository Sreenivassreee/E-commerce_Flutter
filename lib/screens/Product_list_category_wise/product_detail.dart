// import 'package:flutter/material.dart';
// import 'package:shop_app/components/default_button.dart';
// import 'package:shop_app/models/Product.dart';
// import 'package:shop_app/screens/details/components/color_dots.dart';
// import 'package:shop_app/screens/details/components/product_description.dart';
// import 'package:shop_app/screens/details/components/product_images.dart';
// import 'package:shop_app/screens/details/components/top_rounded_container.dart';
// import 'package:shop_app/size_config.dart';


// class ProductBody extends StatelessWidget {


//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         ProductImages(),
//         TopRoundedContainer(
//           color: Colors.white,
//           child: Column(
//             children: [
//               ProductDescription(
//                 product: product,
//                 pressOnSeeMore: () {},
//               ),
//               TopRoundedContainer(
//                 color: Color(0xFFF6F7F9),
//                 child: Column(
//                   children: [
//                     ColorDots(product: product),
//                     TopRoundedContainer(
//                       color: Colors.white,
//                       child: Padding(
//                         padding: EdgeInsets.only(
//                           left: SizeConfig.screenWidth * 0.15,
//                           right: SizeConfig.screenWidth * 0.15,
//                           bottom: getProportionateScreenWidth(40),
//                           top: getProportionateScreenWidth(15),
//                         ),
//                         child: DefaultButton(
//                           text: "Add To Cart",
//                           press: () {},
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
