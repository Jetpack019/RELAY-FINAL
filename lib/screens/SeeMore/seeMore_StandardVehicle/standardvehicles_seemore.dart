import 'package:flutter/material.dart';

import '../../../data/car_rent_data.dart';
import '../../../route_car_rent/route_car_rent.dart';
import '../../home/home.dart';

class SeeMoreStandardVehicles extends StatefulWidget {
  SeeMoreStandardVehicles({Key? key}) : super(key: key);

  @override
  State<SeeMoreStandardVehicles> createState() =>
      _SeeMoreStandardVehiclesState();
}

class _SeeMoreStandardVehiclesState extends State<SeeMoreStandardVehicles> {
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
                        Text(
                          "Standard Vehicles",
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
                                builder: (context) =>
                                    RouteCarRent(carRent: allCars.elementAt(2)),
                              ),
                            );
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/Car_Rent/Standard/ford.png",
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
                                  builder: (context) => RouteCarRent(
                                      carRent: allCars.elementAt(7)),
                                ),
                              );
                            },
                            child: Ink(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/Home_Screen/standard/Honda.png",
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
                                builder: (context) =>
                                    RouteCarRent(carRent: allCars.elementAt(9)),
                              ),
                            );
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/Home_Screen/standard/hyundai.png",
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
                                  builder: (context) => RouteCarRent(
                                      carRent: allCars.elementAt(3)),
                                ),
                              );
                            },
                            child: Ink(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/Car_Rent/Standard/mazda.png",
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
                                builder: (context) =>
                                    RouteCarRent(carRent: allCars.elementAt(8)),
                              ),
                            );
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/Home_Screen/standard/Toyota.png",
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
