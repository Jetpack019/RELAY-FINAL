import 'package:flutter/material.dart';
import '../../../data/res_data.dart';
import '../../../route_food_delivery/route_food_delivery.dart';
import '../../home/home.dart';

class SeeMorePizza extends StatefulWidget {
  SeeMorePizza({Key? key}) : super(key: key);

  @override
  State<SeeMorePizza> createState() => _SeeMorePizzaState();
}

class _SeeMorePizzaState extends State<SeeMorePizza> {
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
                          "Pizza",
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
                                    food_deliver: restaurant.elementAt(14)),
                              ),
                            );
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/Food_Delivery/Pizza/pizza-hut-2.png",
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
                                      food_deliver: restaurant.elementAt(15)),
                                ),
                              );
                            },
                            child: Ink(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/Food_Delivery/Pizza/shakeys-logo.png",
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
                                    food_deliver: restaurant.elementAt(16)),
                              ),
                            );
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/Food_Delivery/Pizza/greenwich.png",
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
