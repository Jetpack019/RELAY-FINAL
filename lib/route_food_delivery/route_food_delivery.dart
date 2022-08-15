import 'package:flutter/material.dart';
import 'package:relay_finalize/screens/food_deliveries/pizza/greenwich_pizza/greenwich.dart';
import 'package:relay_finalize/screens/food_deliveries/pizza/shakeys_pizza/shakeys.dart';
import 'package:relay_finalize/screens/food_deliveries/restaurants/KFC_res/KFC.dart';
import 'package:relay_finalize/screens/food_deliveries/restaurants/chowking_res/chowking.dart';
import 'package:relay_finalize/screens/food_deliveries/restaurants/mc_donalds_res/mc_donalds.dart';
import 'package:relay_finalize/screens/food_deliveries/restaurants/pizzahut_res/pizza_hut.dart';
import 'package:relay_finalize/screens/food_deliveries/restaurants/vikings_res/vikings.dart';
import 'package:relay_finalize/screens/food_deliveries/sweet_dessert/dairy_queen_des/dairy_queen.dart';
import 'package:relay_finalize/screens/food_deliveries/sweet_dessert/gardenia_des/gardenia.dart';
import 'package:relay_finalize/screens/food_deliveries/sweet_dessert/goldilocks_des/goldilocks.dart';
import 'package:relay_finalize/screens/food_deliveries/sweet_dessert/happy_lemon_des/happy_lemon.dart';
import 'package:relay_finalize/screens/food_deliveries/sweet_dessert/mango_des/mango.dart';
import 'package:relay_finalize/screens/food_deliveries/sweet_dessert/red_ribbon_des/red_ribbon.dart';
import 'package:relay_finalize/screens/food_deliveries/sweet_dessert/star_bucks_des/star_bucks.dart';

import '../data/res_data.dart';
import '../screens/food_deliveries/restaurants/burgerking_res/burger_king.dart';
import '../screens/food_deliveries/restaurants/jollibee.dart';

class RouteRestaurant extends StatelessWidget {
  final FoodDeliver food_deliver;

  const RouteRestaurant({
    required this.food_deliver,
  });

  @override
  Widget build(BuildContext context) {
    List<FoodDeliver> restaurant = allfoodDeliver;

    return Scaffold(
        body: Container(
      child: food_deliver.restaurant == "Burger King"
          // ignore: unnecessary_new
          ? new Container(
              child: Column(
                children: [
                  SizedBox(height: 40),
                  Image.asset(food_deliver.image),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => BurgerKing(
                                  burgerking: restaurant.elementAt(1))),
                        );
                      },
                      child: Text(
                        "Go to Burger King",
                      ))
                ],
              ),
            )
          : food_deliver.restaurant == "Jollibee"
              ? SingleChildScrollView(
                  // ignore: unnecessary_new
                  child: new Container(
                    child: Column(
                      children: [
                        SizedBox(height: 40),
                        Image.asset(food_deliver.image),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Jollibee(
                                      jollibee: restaurant.elementAt(0)),
                                ),
                              );
                            },
                            child: Text(
                              "Go to Jollibee Plaridel",
                            ))
                      ],
                    ),
                  ),
                )
              : food_deliver.restaurant == "Pizza Hut"
                  // ignore: unnecessary_new
                  ? new Container(
                      child: Column(
                        children: [
                          SizedBox(height: 40),
                          Image.asset(food_deliver.image),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => PizzaHut(
                                        pizzahut: restaurant.elementAt(4)),
                                  ),
                                );
                              },
                              child: Text(
                                "Go to Pizza Hut",
                              ))
                        ],
                      ),
                    )
                  : food_deliver.restaurant == "Mc Donalds"
                      // ignore: unnecessary_new
                      ? new Container(
                          child: Column(
                            children: [
                              SizedBox(height: 40),
                              Image.asset(food_deliver.image),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => McDonalds(
                                            mcDonald: restaurant.elementAt(5)),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "Go to Mc Donalds",
                                  ))
                            ],
                          ),
                        )
                      : food_deliver.restaurant == "Vikings"
                          // ignore: unnecessary_new
                          ? new Container(
                              child: Column(
                                children: [
                                  SizedBox(height: 40),
                                  Image.asset(food_deliver.image),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) => Vikings(
                                                vikings:
                                                    restaurant.elementAt(5)),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        "Go to Vikings",
                                      ))
                                ],
                              ),
                            )
                          : food_deliver.restaurant == "KFC"
                              // ignore: unnecessary_new
                              ? new Container(
                                  child: Column(
                                    children: [
                                      SizedBox(height: 40),
                                      Image.asset(food_deliver.image),
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) => KFC(
                                                      kfc: restaurant
                                                          .elementAt(3))),
                                            );
                                          },
                                          child: Text(
                                            "Go to KFC",
                                          ))
                                    ],
                                  ),
                                )
                              : food_deliver.restaurant == "Chowking"
                                  // ignore: unnecessary_new
                                  ? new Container(
                                      child: Column(
                                        children: [
                                          SizedBox(height: 40),
                                          Image.asset(food_deliver.image),
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        Chowking(
                                                            chowking: restaurant
                                                                .elementAt(2)),
                                                  ),
                                                );
                                              },
                                              child: Text(
                                                "Go to Chowking",
                                              ))
                                        ],
                                      ),
                                    )
                                  : food_deliver.restaurant == "Red Ribbon"
                                      ? new Container(
                                          child: Column(
                                            children: [
                                              SizedBox(height: 40),
                                              Image.asset(food_deliver.image),
                                              ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            RedRibbon(
                                                                redribbon:
                                                                    restaurant
                                                                        .elementAt(
                                                                            7)),
                                                      ),
                                                    );
                                                  },
                                                  child: Text(
                                                    "Go to Red Ribbon",
                                                  ))
                                            ],
                                          ),
                                        )
                                      : food_deliver.restaurant == "Goldilocks"
                                          ? new Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(height: 40),
                                                  Image.asset(
                                                      food_deliver.image),
                                                  ElevatedButton(
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .push(
                                                          MaterialPageRoute(
                                                            builder: (context) =>
                                                                Goldilocks(
                                                                    goldilocks:
                                                                        restaurant
                                                                            .elementAt(8)),
                                                          ),
                                                        );
                                                      },
                                                      child: Text(
                                                        "Go to Goldilocks",
                                                      ))
                                                ],
                                              ),
                                            )
                                          : food_deliver.restaurant == "Mango"
                                              ? new Container(
                                                  child: Column(
                                                    children: [
                                                      SizedBox(height: 40),
                                                      Image.asset(
                                                          food_deliver.image),
                                                      ElevatedButton(
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .push(
                                                              MaterialPageRoute(
                                                                builder: (context) => Mango(
                                                                    mango: restaurant
                                                                        .elementAt(
                                                                            9)),
                                                              ),
                                                            );
                                                          },
                                                          child: Text(
                                                            "Go to Mango",
                                                          ))
                                                    ],
                                                  ),
                                                )
                                              : food_deliver.restaurant ==
                                                      "Gardenia"
                                                  ? new Container(
                                                      child: Column(
                                                        children: [
                                                          SizedBox(height: 40),
                                                          Image.asset(
                                                              food_deliver
                                                                  .image),
                                                          ElevatedButton(
                                                              onPressed: () {
                                                                Navigator.of(
                                                                        context)
                                                                    .push(
                                                                  MaterialPageRoute(
                                                                    builder: (context) =>
                                                                        Gardenia(
                                                                            gardenia:
                                                                                restaurant.elementAt(10)),
                                                                  ),
                                                                );
                                                              },
                                                              child: Text(
                                                                "Go to Gardenia",
                                                              ))
                                                        ],
                                                      ),
                                                    )
                                                  : food_deliver.restaurant ==
                                                          "Dairy Queen"
                                                      ? new Container(
                                                          child: Column(
                                                            children: [
                                                              SizedBox(
                                                                  height: 40),
                                                              Image.asset(
                                                                  food_deliver
                                                                      .image),
                                                              ElevatedButton(
                                                                  onPressed:
                                                                      () {
                                                                    Navigator.of(
                                                                            context)
                                                                        .push(
                                                                      MaterialPageRoute(
                                                                        builder:
                                                                            (context) =>
                                                                                DairyQueen(dairyQueen: restaurant.elementAt(11)),
                                                                      ),
                                                                    );
                                                                  },
                                                                  child: Text(
                                                                    "Go to Dairy Queen",
                                                                  ))
                                                            ],
                                                          ),
                                                        )
                                                      : food_deliver
                                                                  .restaurant ==
                                                              "Star Bucks"
                                                          ? new Container(
                                                              child: Column(
                                                                children: [
                                                                  SizedBox(
                                                                      height:
                                                                          40),
                                                                  Image.asset(
                                                                      food_deliver
                                                                          .image),
                                                                  ElevatedButton(
                                                                      onPressed:
                                                                          () {
                                                                        Navigator.of(context)
                                                                            .push(
                                                                          MaterialPageRoute(
                                                                            builder: (context) =>
                                                                                StarBucks(starbucks: restaurant.elementAt(12)),
                                                                          ),
                                                                        );
                                                                      },
                                                                      child:
                                                                          Text(
                                                                        "Go to Star Bucks",
                                                                      ))
                                                                ],
                                                              ),
                                                            )
                                                          : food_deliver
                                                                      .restaurant ==
                                                                  "Happy Lemon"
                                                              ? new Container(
                                                                  child: Column(
                                                                    children: [
                                                                      SizedBox(
                                                                          height:
                                                                              40),
                                                                      Image.asset(
                                                                          food_deliver
                                                                              .image),
                                                                      ElevatedButton(
                                                                          onPressed:
                                                                              () {
                                                                            Navigator.of(context).push(
                                                                              MaterialPageRoute(
                                                                                builder: (context) => Happy_Lemon(happyLemon: restaurant.elementAt(13)),
                                                                              ),
                                                                            );
                                                                          },
                                                                          child:
                                                                              Text(
                                                                            "Go to Happy Lemon",
                                                                          ))
                                                                    ],
                                                                  ),
                                                                )
                                                              : food_deliver
                                                                          .restaurant ==
                                                                      "Pizza Hut 2"
                                                                  ? new Container(
                                                                      child:
                                                                          Column(
                                                                        children: [
                                                                          Image.asset(
                                                                              food_deliver.image),
                                                                          ElevatedButton(
                                                                              onPressed: () {
                                                                                Navigator.of(context).push(
                                                                                  MaterialPageRoute(
                                                                                    builder: (context) => PizzaHut(pizzahut: restaurant.elementAt(14)),
                                                                                  ),
                                                                                );
                                                                              },
                                                                              child: Text(
                                                                                "Go to Pizza Hut",
                                                                              ))
                                                                        ],
                                                                      ),
                                                                    )
                                                                  : food_deliver
                                                                              .restaurant ==
                                                                          "Shakeys"
                                                                      // ignore: unnecessary_new
                                                                      ? new Container(
                                                                          child:
                                                                              Column(
                                                                            children: [
                                                                              SizedBox(height: 40),
                                                                              Image.asset(food_deliver.image),
                                                                              ElevatedButton(
                                                                                  onPressed: () {
                                                                                    Navigator.of(context).push(
                                                                                      MaterialPageRoute(
                                                                                        builder: (context) => Shakeys(shakeys: restaurant.elementAt(15)),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                  child: Text(
                                                                                    "Go to Shakeys",
                                                                                  ))
                                                                            ],
                                                                          ),
                                                                        )
                                                                      : food_deliver.restaurant ==
                                                                              "Greenwich"
                                                                          ? Column(
                                                                              children: [
                                                                                SizedBox(height: 40),
                                                                                Image.asset(food_deliver.image),
                                                                                ElevatedButton(
                                                                                    onPressed: () {
                                                                                      Navigator.of(context).push(
                                                                                        MaterialPageRoute(
                                                                                          builder: (context) => Greenwich(greenwich: restaurant.elementAt(16)),
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                    child: Text(
                                                                                      "Go to Greenwich",
                                                                                    ))
                                                                              ],
                                                                            )
                                                                          : new Container(
                                                                              child: Text("None"),
                                                                            ),
    ));
  }

  Text restaurantText() => Text(food_deliver.restaurant);
}
