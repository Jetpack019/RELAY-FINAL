import 'package:flutter/material.dart';

import '../../../data/car_rent_data.dart';
import '../../../data/car_rent_page.dart';
import '../../../route_car_rent/route_car_rent.dart';
import '../../home/home.dart';

class SeeMoreElectricalVehicles extends StatefulWidget {
  SeeMoreElectricalVehicles({Key? key}) : super(key: key);

  @override
  State<SeeMoreElectricalVehicles> createState() =>
      _SeeMoreElectricalVehiclesState();
}

class _SeeMoreElectricalVehiclesState extends State<SeeMoreElectricalVehicles> {
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
                          "Electrical Vehicles",
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
                                    RouteCarRent(carRent: allCars.elementAt(0)),
                              ),
                            );
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/Car_Rent/Electrical/BAIC.png",
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
                                      carRent: allCars.elementAt(4)),
                                ),
                              );
                            },
                            child: Ink(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/Home_Screen/electrical-vehicles/Tesla-logo.png",
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
                                    RouteCarRent(carRent: allCars.elementAt(1)),
                              ),
                            );
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/Car_Rent/Electrical/bmw.png",
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
                                      carRent: allCars.elementAt(6)),
                                ),
                              );
                            },
                            child: Ink(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/Home_Screen/electrical-vehicles/nissan.png",
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
                                    RouteCarRent(carRent: allCars.elementAt(5)),
                              ),
                            );
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/Home_Screen/electrical-vehicles/Renault.png",
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
            ],
          ),
        ),
      )),
    );
  }
}
