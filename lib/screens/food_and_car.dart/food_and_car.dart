import 'package:flutter/material.dart';
import 'package:relay_finalize/screens/SeeMore/seeMore_Desserts/sweetDesserts.dart';
import 'package:relay_finalize/screens/SeeMore/seeMore_ElectricalVehicle/electricalvehicles_seemore.dart';
import 'package:relay_finalize/screens/SeeMore/seeMore_Restaurant/restaurants_seemore.dart';
import 'package:relay_finalize/screens/SeeMore/seeMore_StandardVehicle/standardvehicles_seemore.dart';

import '../../data/car_rent_data.dart';
import '../../data/res_data.dart';
import '../../route_car_rent/route_car_rent.dart';
import '../../route_food_delivery/route_food_delivery.dart';

class FoodandCarScreen extends StatefulWidget {
  FoodandCarScreen({Key? key}) : super(key: key);

  @override
  State<FoodandCarScreen> createState() => _FoodandCarScreenState();
}

class _FoodandCarScreenState extends State<FoodandCarScreen> {
  int currentIndex = 1;

  List<FoodDeliver> foodOrder = allfoodDeliver;
  List<CarRent> cars = allCars;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 180,
          flexibleSpace: Container(
              color: Color.fromARGB(255, 255, 182, 23),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Align(
                      alignment: AlignmentDirectional(-1.40, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Image.asset(
                          'assets/Home_Screen/Relay-logo.png',
                          width: 250,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                      child: Text(
                        'Order with your favorite foods',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Word Sans',
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ))),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                //app bar

                //below column
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                              child: Text('Restaurant',
                                  style: TextStyle(
                                      fontFamily: 'Word Sans',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SeeMoreRestaurants()),
                              );
                            },
                            child: Container(
                              margin: const EdgeInsets.all(15.0),
                              padding: const EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color.fromARGB(255, 0, 0, 0))),
                              child: Text('See More'),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => RouteRestaurant(
                                            food_deliver:
                                                foodOrder.elementAt(4)),
                                      ),
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/Home_Screen/restaurant/pizza_hut_logo.png',
                                    width: 70,
                                    height: 70,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => RouteRestaurant(
                                            food_deliver:
                                                foodOrder.elementAt(6)),
                                      ),
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/Home_Screen/restaurant/mcdonalds.png',
                                    width: 70,
                                    height: 70,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => RouteRestaurant(
                                            food_deliver:
                                                foodOrder.elementAt(12)),
                                      ),
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/Home_Screen/restaurant/Starbucks_Coffee.png',
                                    width: 70,
                                    height: 70,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => RouteRestaurant(
                                            food_deliver:
                                                foodOrder.elementAt(5)),
                                      ),
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/Home_Screen/restaurant/new-vikings.png',
                                    width: 70,
                                    height: 70,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: Text('Sweet Dessert',
                                    style: TextStyle(
                                        fontFamily: 'Word Sans',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          SeeMoreSweetDesserts()),
                                );
                              },
                              child: Container(
                                margin: const EdgeInsets.all(15.0),
                                padding: const EdgeInsets.all(3.0),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Color.fromARGB(255, 0, 0, 0))),
                                child: Text('See More'),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => RouteRestaurant(
                                            food_deliver:
                                                foodOrder.elementAt(7)),
                                      ),
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/Home_Screen/Sweet_Dessert/red-ribbon.png',
                                    width: 70,
                                    height: 70,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => RouteRestaurant(
                                            food_deliver:
                                                foodOrder.elementAt(8)),
                                      ),
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/Home_Screen/Sweet_Dessert/goldilocks.png',
                                    width: 70,
                                    height: 70,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => RouteRestaurant(
                                            food_deliver:
                                                foodOrder.elementAt(9)),
                                      ),
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/Home_Screen/Sweet_Dessert/mango.png',
                                    width: 70,
                                    height: 70,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => RouteRestaurant(
                                            food_deliver:
                                                foodOrder.elementAt(10)),
                                      ),
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/Home_Screen/Sweet_Dessert/Gardenia-Logo.png',
                                    width: 70,
                                    height: 70,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 0.5,
                  thickness: 1,
                  color: Color(0x95000000),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                      child: Text(
                        'Rent cars near you',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                              child: Text('Electrical Vehicle',
                                  style: TextStyle(
                                      fontFamily: 'Word Sans',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        SeeMoreElectricalVehicles()),
                              );
                            },
                            child: Container(
                              margin: const EdgeInsets.all(15.0),
                              padding: const EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color.fromARGB(255, 0, 0, 0))),
                              child: Text('See More'),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => RouteCarRent(
                                          carRent: cars.elementAt(4)),
                                    ),
                                  );
                                },
                                child: Image.asset(
                                  'assets/Home_Screen/electrical-vehicles/Tesla-logo.png',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => RouteCarRent(
                                          carRent: cars.elementAt(5)),
                                    ),
                                  );
                                },
                                child: Image.asset(
                                  'assets/Home_Screen/electrical-vehicles/Renault.png',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => RouteCarRent(
                                          carRent: cars.elementAt(6)),
                                    ),
                                  );
                                },
                                child: Image.asset(
                                  'assets/Home_Screen/electrical-vehicles/nissan.png',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                              child: Text('Standard Vehicle',
                                  style: TextStyle(
                                      fontFamily: 'Word Sans',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        SeeMoreStandardVehicles()),
                              );
                            },
                            child: Container(
                              margin: const EdgeInsets.all(15.0),
                              padding: const EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color.fromARGB(255, 0, 0, 0))),
                              child: Text('See More'),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 20),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => RouteCarRent(
                                          carRent: cars.elementAt(7)),
                                    ),
                                  );
                                },
                                child: Image.asset(
                                  'assets/Home_Screen/standard/Honda.png',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => RouteCarRent(
                                          carRent: cars.elementAt(8)),
                                    ),
                                  );
                                },
                                child: Image.asset(
                                  'assets/Home_Screen/standard/Toyota.png',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => RouteCarRent(
                                          carRent: cars.elementAt(9)),
                                    ),
                                  );
                                },
                                child: Image.asset(
                                  'assets/Home_Screen/standard/hyundai.png',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
