import 'package:flutter/material.dart';
import 'package:relay_finalize/screens/car_rents/electrical_vehicles/baic/baic_vehicles.dart';
import 'package:relay_finalize/screens/car_rents/electrical_vehicles/bmw/bmw_vehicles.dart';
import 'package:relay_finalize/screens/car_rents/electrical_vehicles/nissan/nissan_vehicles.dart';
import 'package:relay_finalize/screens/car_rents/electrical_vehicles/renault/renault_vehicles.dart';
import 'package:relay_finalize/screens/car_rents/standard_vehicles/ford/ford_vehicles.dart';
import 'package:relay_finalize/screens/car_rents/standard_vehicles/honda/honda_vehicles.dart';
import 'package:relay_finalize/screens/car_rents/standard_vehicles/hyundai/hyundai_vehicles.dart';
import 'package:relay_finalize/screens/car_rents/standard_vehicles/mazda/mazda_vehicles.dart';
import 'package:relay_finalize/screens/car_rents/standard_vehicles/toyota/toyota_vehicles.dart';

import '../data/car_rent_data.dart';
import '../screens/car_rents/electrical_vehicles/testla/tesla_vehicle.dart';

class RouteCarRent extends StatelessWidget {
  final CarRent carRent;

  const RouteCarRent({
    required this.carRent,
  });

  @override
  Widget build(BuildContext context) {
    List<CarRent> cars = allCars;

    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: carRent.car == "BAIC"
            ? new Container(
                child: Column(
                  children: [
                    Image.asset(carRent.image_car),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => BAICVehicles(),
                            ),
                          );
                        },
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
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => BMWVehicles(),
                                ),
                              );
                            },
                            child: Text(
                              "Go to Car Rentals",
                            ))
                      ],
                    ),
                  )
                : carRent.car == "Tesla"
                    ? Container(
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
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => FordVehicles(),
                                        ),
                                      );
                                    },
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
                                        onPressed: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  Mazda_Vehicles(),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          "Go to MAZDA ",
                                        ))
                                  ],
                                ),
                              )
                            : carRent.car == "RENAULT"
                                ? Container(
                                    child: Column(
                                      children: [
                                        Image.asset(carRent.image_car),
                                        ElevatedButton(
                                            onPressed: () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      RenaultVehicles(),
                                                ),
                                              );
                                            },
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
                                                onPressed: () {
                                                  Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          NissanVehicles(),
                                                    ),
                                                  );
                                                },
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
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .push(
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              Honda_Vehicles(),
                                                        ),
                                                      );
                                                    },
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
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .push(
                                                            MaterialPageRoute(
                                                              builder: (context) =>
                                                                  Toyota_Vehicles(),
                                                            ),
                                                          );
                                                        },
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
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .push(
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          Hyundai_Vehicles(),
                                                                ),
                                                              );
                                                            },
                                                            child: Text(
                                                              "Go to HYUNDAI ",
                                                            ))
                                                      ],
                                                    ),
                                                  )
                                                : new Container(
                                                    child: Text("None"),
                                                  ),
      ),
    ));
  }

  Text carRentText() => Text(carRent.car);
}
