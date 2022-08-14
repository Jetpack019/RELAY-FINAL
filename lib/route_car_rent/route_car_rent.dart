import 'package:flutter/material.dart';

import '../data/car_rent_data.dart';
import '../screens/car_rents/electrical_vehicles/tesla_vehicle.dart';

class RouteCarRent extends StatelessWidget {
  final CarRent carRent;

  const RouteCarRent({
    required this.carRent,
  });

  @override
  Widget build(BuildContext context) {
    List<CarRent> cars = allCars;

    return Scaffold(
        body: Container(
      child: carRent.car == "BAIC"
          ? new Container(
              child: Column(
                children: [
                  Image.asset(carRent.image_car),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Go to BAIC ",
                      ))
                ],
              ),
            )
          : carRent.car == "BMW"
              ? new Container(
                  child: Column(
                    children: [
                      Image.asset(carRent.image_car),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Go to Car Rentals",
                          ))
                    ],
                  ),
                )
              : carRent.car == "Tesla"
                  ? new Container(
                      child: Column(
                        children: [
                          Image.asset(carRent.image_car),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => Tesla_Vehicles(),
                                  ),
                                );
                              },
                              child: Text(
                                "Go to Tesla ",
                              ))
                        ],
                      ),
                    )
                  : carRent.car == "Ford"
                      ? new Container(
                          child: Column(
                            children: [
                              Image.asset(carRent.image_car),
                              ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Go to Ford ",
                                  ))
                            ],
                          ),
                        )
                      : carRent.car == "MAZDA"
                          ? new Container(
                              child: Column(
                                children: [
                                  Image.asset(carRent.image_car),
                                  ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Go to MAZDA ",
                                      ))
                                ],
                              ),
                            )
                          : carRent.car == "RENAULT"
                              ? new Container(
                                  child: Column(
                                    children: [
                                      Image.asset(carRent.image_car),
                                      ElevatedButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Go to RENAULT ",
                                          ))
                                    ],
                                  ),
                                )
                              : carRent.car == "NISSAN"
                                  ? new Container(
                                      child: Column(
                                        children: [
                                          Image.asset(carRent.image_car),
                                          ElevatedButton(
                                              onPressed: () {},
                                              child: Text(
                                                "Go to NISSAN ",
                                              ))
                                        ],
                                      ),
                                    )
                                  : carRent.car == "HONDA"
                                      ? new Container(
                                          child: Column(
                                            children: [
                                              Image.asset(carRent.image_car),
                                              ElevatedButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    "Go to HONDA ",
                                                  ))
                                            ],
                                          ),
                                        )
                                      : carRent.car == "TOYOTA"
                                          ? new Container(
                                              child: Column(
                                                children: [
                                                  Image.asset(
                                                      carRent.image_car),
                                                  ElevatedButton(
                                                      onPressed: () {},
                                                      child: Text(
                                                        "Go to TOYOTA ",
                                                      ))
                                                ],
                                              ),
                                            )
                                          : carRent.car == "HYUNDAI"
                                              ? new Container(
                                                  child: Column(
                                                    children: [
                                                      Image.asset(
                                                          carRent.image_car),
                                                      ElevatedButton(
                                                          onPressed: () {},
                                                          child: Text(
                                                            "Go to HYUNDAI ",
                                                          ))
                                                    ],
                                                  ),
                                                )
                                              : new Container(
                                                  child: Text("None"),
                                                ),
    ));
  }

  Text carRentText() => Text(carRent.car);
}
