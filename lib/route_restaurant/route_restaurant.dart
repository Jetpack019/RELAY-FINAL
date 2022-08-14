import 'package:flutter/material.dart';

import '../data/res_data.dart';
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
          ? new Container(
              child: Column(
                children: [
                  Image.asset(food_deliver.image),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Go to Burger King",
                      ))
                ],
              ),
            )
          : food_deliver.restaurant == "Jollibee"
              ? SingleChildScrollView(
                  child: new Container(
                    child: Column(
                      children: [
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
                  ? new Container(
                      child: Column(
                        children: [
                          Image.asset(food_deliver.image),
                          ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Go to Pizza Hut",
                              ))
                        ],
                      ),
                    )
                  : food_deliver.restaurant == "Mc Donalds"
                      ? new Container(
                          child: Column(
                            children: [
                              Image.asset(food_deliver.image),
                              ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Go to Mc Donalds",
                                  ))
                            ],
                          ),
                        )
                      : food_deliver.restaurant == "Vikings"
                          ? new Container(
                              child: Column(
                                children: [
                                  Image.asset(food_deliver.image),
                                  ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Go to Vikings",
                                      ))
                                ],
                              ),
                            )
                          : food_deliver.restaurant == "KFC"
                              ? new Container(
                                  child: Column(
                                    children: [
                                      Image.asset(food_deliver.image),
                                      ElevatedButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Go to KFC",
                                          ))
                                    ],
                                  ),
                                )
                              : food_deliver.restaurant == "Chowking"
                                  ? new Container(
                                      child: Column(
                                        children: [
                                          Image.asset(food_deliver.image),
                                          ElevatedButton(
                                              onPressed: () {},
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
                                              Image.asset(food_deliver.image),
                                              ElevatedButton(
                                                  onPressed: () {},
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
                                                  Image.asset(
                                                      food_deliver.image),
                                                  ElevatedButton(
                                                      onPressed: () {},
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
                                                      Image.asset(
                                                          food_deliver.image),
                                                      ElevatedButton(
                                                          onPressed: () {},
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
                                                          Image.asset(
                                                              food_deliver
                                                                  .image),
                                                          ElevatedButton(
                                                              onPressed: () {},
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
                                                              Image.asset(
                                                                  food_deliver
                                                                      .image),
                                                              ElevatedButton(
                                                                  onPressed:
                                                                      () {},
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
                                                                  Image.asset(
                                                                      food_deliver
                                                                          .image),
                                                                  ElevatedButton(
                                                                      onPressed:
                                                                          () {},
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
                                                                      Image.asset(
                                                                          food_deliver
                                                                              .image),
                                                                      ElevatedButton(
                                                                          onPressed:
                                                                              () {},
                                                                          child:
                                                                              Text(
                                                                            "Go to Happy Lemon",
                                                                          ))
                                                                    ],
                                                                  ),
                                                                )
                                                              : food_deliver
                                                                          .restaurant ==
                                                                      "Pizza Hut"
                                                                  ? new Container(
                                                                      child:
                                                                          Column(
                                                                        children: [
                                                                          Image.asset(
                                                                              food_deliver.image),
                                                                          ElevatedButton(
                                                                              onPressed: () {},
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
                                                                              Image.asset(food_deliver.image),
                                                                              ElevatedButton(
                                                                                  onPressed: () {},
                                                                                  child: Text(
                                                                                    "Go to Shakeys",
                                                                                  ))
                                                                            ],
                                                                          ),
                                                                        )
                                                                      : food_deliver.restaurant ==
                                                                              "Greenwich"
                                                                          ? new Container(
                                                                              child: Column(
                                                                                children: [
                                                                                  Image.asset(food_deliver.image),
                                                                                  ElevatedButton(
                                                                                      onPressed: () {},
                                                                                      child: Text(
                                                                                        "Go to Greenwich",
                                                                                      ))
                                                                                ],
                                                                              ),
                                                                            )
                                                                          : new Container(
                                                                              child: Text("None"),
                                                                            ),
    ));
  }

  Text restaurantText() => Text(food_deliver.restaurant);
}
