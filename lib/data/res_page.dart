// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:relay/data/res_data.dart';
// import 'package:relay/food_order/Family_Meals/8_pcs_CB_RJSD.dart';
// import 'package:relay/screens/food_Delivery/food_delivery.dart';

// import '../screens/home/home.dart';

// class RestaurantPage extends StatelessWidget {
//   final Restaurant food_deliver;

//   const RestaurantPage({
//     required this.food_deliver,
//   });

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
//           toolbarHeight: 160,
//           automaticallyImplyLeading: false,
//           backgroundColor: Colors.amber,
//           title: Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 IconButton(
//                   onPressed: () {
//                     Navigator.of(context).push(
//                       MaterialPageRoute(
//                         builder: (context) => HomeScreen(),
//                       ),
//                     );
//                   },
//                   color: Colors.black,
//                   icon: Icon(Icons.arrow_back),
//                 ),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Image.asset(
//                       food_deliver.image,
//                       height: 80,
//                       width: 80,
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             Text(
//                               food_deliver.restaurant,
//                               style: TextStyle(color: Colors.black),
//                             ),
//                             Text("  -  ",
//                                 style: TextStyle(color: Colors.black)),
//                             Text("Plaridel",
//                                 style: TextStyle(color: Colors.black)),
//                             Padding(
//                               padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
//                               child: Material(
//                                   color: Colors.red,
//                                   borderRadius: BorderRadius.circular(50),
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(1.0),
//                                     child: Icon(Icons.star_sharp),
//                                   )),
//                             ),
//                           ],
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Material(
//                                 color: Colors.red,
//                                 borderRadius: BorderRadius.circular(50),
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(1.0),
//                                   child: Icon(Icons.star_sharp),
//                                 )),
//                             Text(
//                               "  4.6  ",
//                               style:
//                                   TextStyle(fontSize: 15, color: Colors.black),
//                             ),
//                             Text(
//                               "  See details  ",
//                               style: TextStyle(
//                                 fontSize: 15,
//                               ),
//                             )
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
//                               child: Text(
//                                 "  1.1 km  ",
//                                 style: TextStyle(
//                                     fontSize: 15, color: Colors.black),
//                               ),
//                             ),
//                             Text(
//                               "  (25mins)  ",
//                               style:
//                                   TextStyle(fontSize: 15, color: Colors.black),
//                             )
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
//                               child: Text(
//                                 "  Deliver now  ",
//                                 style: TextStyle(
//                                     fontSize: 15, color: Colors.black),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//         body: ListView(
//           children: [
//             Padding(
//               padding: const EdgeInsets.fromLTRB(10, 20, 0, 20),
//               child: Container(
//                 child: Expanded(
//                   child: Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
//                             child: Icon(
//                               Icons.food_bank,
//                               size: 60,
//                             ),
//                           ),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text("Popular"),
//                               Text("Most ordered right now")
//                             ],
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               child: Padding(
//                 padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
//                 child: Column(children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 20, right: 20),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Material(
//                           elevation: 15,
//                           borderRadius: BorderRadius.circular(20),
//                           child: Stack(
//                             children: [
//                               Container(
//                                 margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
//                                 child: Text(
//                                   "6 Sweet Pies-To-Go",
//                                   style: TextStyle(
//                                     fontSize: 10,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ),
//                               InkWell(
//                                 splashColor: Colors.black,
//                                 onTap: () {},
//                                 child: Ink(
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       image: DecorationImage(
//                                         image: AssetImage(
//                                           food_deliver.image_6_sweet,
//                                         ),
//                                         fit: BoxFit.fill,
//                                       )),
//                                   height: 150,
//                                   width: 150,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Material(
//                             elevation: 15,
//                             borderRadius: BorderRadius.circular(20),
//                             child: Stack(
//                               children: [
//                                 Container(
//                                   margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
//                                   child: Expanded(
//                                     child: Text(
//                                       "8pc Chickenjoy w/ Palabok \n Family Pan",
//                                       style: TextStyle(
//                                         fontSize: 10,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 InkWell(
//                                   splashColor: Colors.black,
//                                   onTap: () {
//                                     Navigator.of(context).push(
//                                       MaterialPageRoute(
//                                         builder: (context) => CB_RJSD_8p(),
//                                       ),
//                                     );
//                                   },
//                                   child: Ink(
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(20),
//                                         image: DecorationImage(
//                                           image: AssetImage(
//                                             food_deliver.image_CPFP_8pcs,
//                                           ),
//                                           fit: BoxFit.fill,
//                                         )),
//                                     height: 150,
//                                     width: 150,
//                                   ),
//                                 ),
//                               ],
//                             )),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Material(
//                           elevation: 15,
//                           borderRadius: BorderRadius.circular(20),
//                           child: Stack(
//                             children: [
//                               Container(
//                                 margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
//                                 child: Expanded(
//                                   child: Text(
//                                     "2pc Chickenjoy Solo",
//                                     style: TextStyle(
//                                       fontSize: 10,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               InkWell(
//                                 splashColor: Colors.black,
//                                 onTap: () {},
//                                 child: Ink(
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       image: DecorationImage(
//                                         image: AssetImage(
//                                           food_deliver.image_ChickenJoy_2pcs,
//                                         ),
//                                         fit: BoxFit.fill,
//                                       )),
//                                   height: 150,
//                                   width: 150,
//                                 ),
//                               ),
//                             ],
//                           )),
//                       Material(
//                           elevation: 15,
//                           borderRadius: BorderRadius.circular(20),
//                           child: Stack(
//                             children: [
//                               Container(
//                                 margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
//                                 child: Expanded(
//                                   child: Text(
//                                     "2pc Chickenjoy Solo",
//                                     style: TextStyle(
//                                       fontSize: 10,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               InkWell(
//                                 splashColor: Colors.black,
//                                 onTap: () {},
//                                 child: Ink(
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       image: DecorationImage(
//                                         image: AssetImage(
//                                           food_deliver
//                                               .image_ChickenJoy_2pcs_two,
//                                         ),
//                                         fit: BoxFit.fill,
//                                       )),
//                                   height: 150,
//                                   width: 150,
//                                 ),
//                               ),
//                             ],
//                           )),
//                     ],
//                   ),
//                 ]),
//               ),
//             ),
//             Divider(
//               height: 30,
//               color: Colors.black,
//             ),
//             Container(
//               child: Padding(
//                 padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text("Family Meals"),
//                     SizedBox(
//                       height: 15,
//                     ),
//                     ListTile(
//                       minVerticalPadding: 30,
//                       onTap: () {},
//                       leading: Image.asset(
//                         food_deliver.image_Family_Box_Solo,
//                       ),
//                       title: Padding(
//                         padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
//                         child: Text(
//                           '4pc Chickenjoy Family Box Solo',
//                           style: TextStyle(),
//                         ),
//                       ),
//                       tileColor: Color(0xFFF5F5F5),
//                       dense: false,
//                     ),
//                     Divider(
//                       height: 30,
//                       color: Colors.black,
//                     ),
//                     ListTile(
//                       minVerticalPadding: 30,
//                       onTap: () {},
//                       leading: Image.asset(
//                         food_deliver.image_Burger_Steak_Family_pan,
//                       ),
//                       title: Padding(
//                         padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
//                         child: Text(
//                           'Burger Steak Family Pan',
//                           style: TextStyle(),
//                         ),
//                       ),
//                       tileColor: Color(0xFFF5F5F5),
//                       dense: false,
//                     ),
//                     Divider(
//                       height: 30,
//                       color: Colors.black,
//                     ),
//                     ListTile(
//                       minVerticalPadding: 30,
//                       onTap: () {},
//                       leading: Image.asset(
//                         food_deliver.image_Burger_bundle,
//                       ),
//                       title: Padding(
//                         padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
//                         child: Text(
//                           'Burger Bundle',
//                           style: TextStyle(),
//                         ),
//                       ),
//                       tileColor: Color(0xFFF5F5F5),
//                       dense: false,
//                     ),
//                     Divider(
//                       height: 30,
//                       color: Colors.black,
//                     ),
//                     ListTile(
//                       minVerticalPadding: 30,
//                       onTap: () {},
//                       leading: Image.asset(
//                         food_deliver.image_Family_Pan_Duo,
//                       ),
//                       title: Padding(
//                         padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
//                         child: Text(
//                           'Family Pan Duo',
//                           style: TextStyle(),
//                         ),
//                       ),
//                       tileColor: Color(0xFFF5F5F5),
//                       dense: false,
//                     ),
//                     Divider(
//                       height: 30,
//                       color: Colors.black,
//                     ),
//                     ListTile(
//                       minVerticalPadding: 30,
//                       onTap: () {},
//                       leading: Image.asset(
//                         food_deliver.image_CBRJSD,
//                       ),
//                       title: Padding(
//                         padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
//                         child: Text(
//                           '8pc Chickenjoy Bucket w/ Rice,Jolly Spaghetti, and Drinks',
//                           style: TextStyle(),
//                         ),
//                       ),
//                       tileColor: Color(0xFFF5F5F5),
//                       dense: false,
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             Divider(
//               height: 30,
//               color: Colors.black,
//             ),
//             Container(
//               child: Padding(
//                 padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text("Beverages"),
//                     SizedBox(
//                       height: 15,
//                     ),
//                     ListTile(
//                       minVerticalPadding: 30,
//                       onTap: () {},
//                       leading: Image.asset(
//                         food_deliver.image_Coffee,
//                       ),
//                       title: Padding(
//                         padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
//                         child: Text(
//                           'Coffee',
//                           style: TextStyle(),
//                         ),
//                       ),
//                       tileColor: Color(0xFFF5F5F5),
//                       dense: false,
//                     ),
//                     Divider(
//                       height: 30,
//                       color: Colors.black,
//                     ),
//                     Container(
//                       child: ListTile(
//                         minVerticalPadding: 30,
//                         onTap: () {},
//                         leading: Image.asset(
//                           food_deliver.image_Coke,
//                         ),
//                         title: Padding(
//                           padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
//                           child: Text(
//                             'Coke',
//                             style: TextStyle(),
//                           ),
//                         ),
//                         tileColor: Color(0xFFF5F5F5),
//                         dense: false,
//                       ),
//                     ),
//                     Divider(
//                       height: 30,
//                       color: Colors.black,
//                     ),
//                     ListTile(
//                       minVerticalPadding: 30,
//                       onTap: () {},
//                       leading: Image.asset(
//                         food_deliver.image_Coke_Float,
//                       ),
//                       title: Padding(
//                         padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
//                         child: Text(
//                           'Coke Float',
//                           style: TextStyle(),
//                         ),
//                       ),
//                       tileColor: Color(0xFFF5F5F5),
//                       dense: false,
//                     ),
//                     Divider(
//                       height: 30,
//                       color: Colors.black,
//                     ),
//                     ListTile(
//                       minVerticalPadding: 30,
//                       onTap: () {},
//                       leading: Image.asset(
//                         food_deliver.image_Coke_Zero,
//                       ),
//                       title: Padding(
//                         padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
//                         child: Text(
//                           'Coke Zero',
//                           style: TextStyle(),
//                         ),
//                       ),
//                       tileColor: Color(0xFFF5F5F5),
//                       dense: false,
//                     ),
//                     Divider(
//                       height: 30,
//                       color: Colors.black,
//                     ),
//                     ListTile(
//                       minVerticalPadding: 30,
//                       onTap: () {},
//                       leading: Image.asset(
//                         food_deliver.image_Hot_Chocolate,
//                       ),
//                       title: Padding(
//                         padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
//                         child: Text(
//                           'Hot Chocolate',
//                           style: TextStyle(),
//                         ),
//                       ),
//                       tileColor: Color(0xFFF5F5F5),
//                       dense: false,
//                     ),
//                     Divider(
//                       height: 30,
//                       color: Colors.black,
//                     ),
//                     ListTile(
//                       minVerticalPadding: 30,
//                       onTap: () {},
//                       leading: Image.asset(
//                         food_deliver.image_Iced_Tea,
//                       ),
//                       title: Padding(
//                         padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
//                         child: Text(
//                           'Iced Tea',
//                           style: TextStyle(),
//                         ),
//                       ),
//                       tileColor: Color(0xFFF5F5F5),
//                       dense: false,
//                     ),
//                     Divider(
//                       height: 30,
//                       color: Colors.black,
//                     ),
//                     ListTile(
//                       minVerticalPadding: 30,
//                       onTap: () {},
//                       leading: Image.asset(
//                         food_deliver.image_Pineapple_Juice,
//                       ),
//                       title: Padding(
//                         padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
//                         child: Text(
//                           'Pineapple Juice',
//                           style: TextStyle(),
//                         ),
//                       ),
//                       tileColor: Color(0xFFF5F5F5),
//                       dense: false,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Divider(
//               height: 30,
//               color: Colors.black,
//             ),
//             Container(
//               child: Padding(
//                 padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text("Desserts"),
//                     SizedBox(
//                       height: 15,
//                     ),
//                     ListTile(
//                       minVerticalPadding: 30,
//                       onTap: () {},
//                       leading: Image.asset(
//                         food_deliver.image_Peach_Mango_Pie,
//                       ),
//                       title: Padding(
//                         padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
//                         child: Text(
//                           'Peach Mango Pie',
//                           style: TextStyle(),
//                         ),
//                       ),
//                       tileColor: Color(0xFFF5F5F5),
//                       dense: false,
//                     ),
//                     Divider(
//                       height: 30,
//                       color: Colors.black,
//                     ),
//                     ListTile(
//                       minVerticalPadding: 30,
//                       onTap: () {},
//                       leading: Image.asset(
//                         food_deliver.image_Buko_Pie,
//                       ),
//                       title: Padding(
//                         padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
//                         child: Text(
//                           'Buko Pie',
//                           style: TextStyle(),
//                         ),
//                       ),
//                       tileColor: Color(0xFFF5F5F5),
//                       dense: false,
//                     ),
//                     Divider(
//                       height: 30,
//                       color: Colors.black,
//                     ),
//                     ListTile(
//                       minVerticalPadding: 30,
//                       onTap: () {},
//                       leading: Padding(
//                         padding: const EdgeInsets.all(2.0),
//                         child: Image.asset(
//                           food_deliver.image_Chocolate_Sundae_Twirl,
//                           fit: BoxFit.contain,
//                         ),
//                       ),
//                       title: Padding(
//                         padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
//                         child: Text(
//                           'Chocolate Sundae Twirl',
//                           style: TextStyle(),
//                         ),
//                       ),
//                       tileColor: Color(0xFFF5F5F5),
//                       dense: false,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             )
//           ],
//         ),
//       );
// }
