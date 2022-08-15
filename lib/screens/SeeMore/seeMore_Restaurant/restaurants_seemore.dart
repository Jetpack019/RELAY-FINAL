import 'package:flutter/material.dart';

import '../../../data/res_data.dart';
import '../../../route_food_delivery/route_food_delivery.dart';

import '../../home/home.dart';

class SeeMoreRestaurants extends StatefulWidget {
  SeeMoreRestaurants({Key? key}) : super(key: key);

  @override
  State<SeeMoreRestaurants> createState() => _SeeMoreRestaurantsState();
}

class _SeeMoreRestaurantsState extends State<SeeMoreRestaurants> {
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
                        SizedBox(width: 50),
                        Center(
                          child: Text(
                            "Restaurants",
                            style: TextStyle(
                                fontFamily: 'Word Sans',
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
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
                                    food_deliver: restaurant.elementAt(4)),
                              ),
                            );
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/Home_Screen/restaurant/pizza_hut_logo.png",
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
                                      food_deliver: restaurant.elementAt(6)),
                                ),
                              );
                            },
                            child: Ink(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/Home_Screen/restaurant/mcdonalds.png",
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
                                    food_deliver: restaurant.elementAt(1)),
                              ),
                            );
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/Food_Delivery/Restaurant/burger-king-logo.png",
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
                                      food_deliver: restaurant.elementAt(5)),
                                ),
                              );
                            },
                            child: Ink(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/Home_Screen/restaurant/new-vikings.png",
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
                                    food_deliver: restaurant.elementAt(0)),
                              ),
                            );
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/Food_Delivery/Restaurant/jollibee-logo.png",
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
                                    food_deliver: restaurant.elementAt(3)),
                              ),
                            );
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/Food_Delivery/Restaurant/KFC_logo.png",
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
                                    food_deliver: restaurant.elementAt(2)),
                              ),
                            );
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/Food_Delivery/Restaurant/chowking-logo.png",
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
              SizedBox(height: 20),
            ],
          ),
        ),
      )),
    );
  }
}
