import 'package:flutter/material.dart';
import 'package:relay_finalize/route_food_delivery/route_food_delivery.dart';

import '../../../../data/res_data.dart';

class Happy_Lemon extends StatefulWidget {
  final FoodDeliver happyLemon;
  Happy_Lemon({required this.happyLemon});

  @override
  State<Happy_Lemon> createState() => _Happy_LemonState();
}

class _Happy_LemonState extends State<Happy_Lemon> {
  @override
  Widget build(BuildContext context) {
    String orderRestaurant_Location = 'Happy Lemon';
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 160,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.amber,
        title: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          RouteRestaurant(food_deliver: widget.happyLemon),
                    ),
                  );
                },
                color: Colors.black,
                icon: Icon(Icons.arrow_back),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    widget.happyLemon.image,
                    height: 80,
                    width: 80,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            orderRestaurant_Location,
                            style: TextStyle(color: Colors.black),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Material(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(50),
                                child: Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Image.asset(
                                    "assets/Orders/Jollibee/Jolibee_Screen/Favorites_icon_heart.png",
                                    height: 20,
                                    width: 20,
                                  ),
                                )),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Material(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(50),
                              child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Image.asset(
                                    "assets/Orders/Jollibee/Jolibee_Screen/star_icon.png",
                                    height: 20,
                                    width: 20),
                              )),
                          Text(
                            "  4.6  ",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          Text(
                            "  See details  ",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                            child: Text(
                              "  1.1 km  ",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          ),
                          Text(
                            "  (25mins)  ",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                            child: Text(
                              "  Deliver now  ",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
