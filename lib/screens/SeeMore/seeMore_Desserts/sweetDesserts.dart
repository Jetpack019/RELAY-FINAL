import 'package:flutter/material.dart';
import 'package:relay_finalize/screens/home/home.dart';

import '../../../data/res_data.dart';
import '../../../route_food_delivery/route_food_delivery.dart';

class SeeMoreSweetDesserts extends StatefulWidget {
  SeeMoreSweetDesserts({Key? key}) : super(key: key);

  @override
  State<SeeMoreSweetDesserts> createState() => _SeeMoreSweetDessertsState();
}

class _SeeMoreSweetDessertsState extends State<SeeMoreSweetDesserts> {
  List<FoodDeliver> restaurant = allfoodDeliver;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.amber,
        title: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()),
                            );
                          },
                          color: Colors.black,
                          icon: Icon(Icons.arrow_back),
                        ),
                        SizedBox(width: 70),
                        Text(
                          "Sweet Desserts",
                          style: TextStyle(
                              fontFamily: 'Word Sans',
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    elevation: 15,
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(20),
                          splashColor: Colors.black,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => RouteRestaurant(
                                    food_deliver: restaurant.elementAt(7)),
                              ),
                            );
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/Home_Screen/Sweet_Dessert/red-ribbon.png",
                                  ),
                                  fit: BoxFit.fill,
                                )),
                            height: 150,
                            width: 150,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Material(
                      elevation: 15,
                      borderRadius: BorderRadius.circular(20),
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
                          ),
                          InkWell(
                            borderRadius: BorderRadius.circular(20),
                            splashColor: Colors.black,
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => RouteRestaurant(
                                      food_deliver: restaurant.elementAt(8)),
                                ),
                              );
                            },
                            child: Ink(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/Home_Screen/Sweet_Dessert/goldilocks.png",
                                    ),
                                    fit: BoxFit.fill,
                                  )),
                              height: 150,
                              width: 150,
                            ),
                          ),
                        ],
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    elevation: 15,
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(20),
                          splashColor: Colors.black,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => RouteRestaurant(
                                    food_deliver: restaurant.elementAt(9)),
                              ),
                            );
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/Home_Screen/Sweet_Dessert/mango.png",
                                  ),
                                  fit: BoxFit.fill,
                                )),
                            height: 150,
                            width: 150,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Material(
                      elevation: 15,
                      borderRadius: BorderRadius.circular(20),
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
                          ),
                          InkWell(
                            borderRadius: BorderRadius.circular(20),
                            splashColor: Colors.black,
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => RouteRestaurant(
                                      food_deliver: restaurant.elementAt(10)),
                                ),
                              );
                            },
                            child: Ink(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/Home_Screen/Sweet_Dessert/Gardenia-Logo.png",
                                    ),
                                    fit: BoxFit.fill,
                                  )),
                              height: 150,
                              width: 150,
                            ),
                          ),
                        ],
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    elevation: 15,
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(20),
                          splashColor: Colors.black,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => RouteRestaurant(
                                    food_deliver: restaurant.elementAt(11)),
                              ),
                            );
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/Food_Delivery/Sweet-Dessert/Dairy-Queen-Logo.png",
                                  ),
                                  fit: BoxFit.fill,
                                )),
                            height: 150,
                            width: 150,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Material(
                    elevation: 15,
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(20),
                          splashColor: Colors.black,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => RouteRestaurant(
                                    food_deliver: restaurant.elementAt(12)),
                              ),
                            );
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/Home_Screen/restaurant/Starbucks_Coffee.png",
                                  ),
                                  fit: BoxFit.fill,
                                )),
                            height: 150,
                            width: 150,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    elevation: 15,
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(20),
                          splashColor: Colors.black,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => RouteRestaurant(
                                    food_deliver: restaurant.elementAt(13)),
                              ),
                            );
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/Food_Delivery/Sweet-Dessert/happy-lemon-logo.png",
                                  ),
                                  fit: BoxFit.fill,
                                )),
                            height: 150,
                            width: 150,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
