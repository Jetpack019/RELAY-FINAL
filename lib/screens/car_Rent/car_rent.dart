import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:relay_finalize/screens/SeeMore/seeMore_ElectricalVehicle/electricalvehicles_seemore.dart';
import 'package:relay_finalize/screens/SeeMore/seeMore_StandardVehicle/standardvehicles_seemore.dart';
import 'package:relay_finalize/screens/car_rents/car_rent_current_rent.dart';

import '../../data/car_rent_data.dart';
import '../../data/car_rent_page.dart';
import '../../route_car_rent/route_car_rent.dart';

class CartRentScreent extends StatefulWidget {
  CartRentScreent({Key? key}) : super(key: key);

  List<CarRent> cars_data = allCars;
  @override
  State<CartRentScreent> createState() => _CartRentScreentState();
}

class _CartRentScreentState extends State<CartRentScreent> {
  int currentIndex = 2;

  var textController;
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
                  children: <Widget>[
                    SizedBox(height: 40),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                      child: Text(
                        'Car Rental',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Word Sans',
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(16),
                      child: TypeAheadField<CarRent?>(
                        hideSuggestionsOnKeyboardHide: true,
                        debounceDuration: Duration(milliseconds: 500),
                        textFieldConfiguration: TextFieldConfiguration(
                            decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: Icon(Icons.search),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => CurrentRenting(),
                                ),
                              );
                            },
                            child: Icon(Icons.car_rental_outlined,
                                color: Colors.black),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          hintText: 'Search Car',
                        )),
                        suggestionsCallback: CarRentData.getSuggestions,
                        itemBuilder: (context, CarRent? suggestion) {
                          final user = suggestion!;

                          return ListTile(
                            leading: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 60,
                                height: 60,
                                child: Image.asset(user.image_car),
                              ),
                            ),
                            title: Text(user.car),
                          );
                        },
                        noItemsFoundBuilder: (context) => Container(
                          height: 100,
                          child: Center(
                            child: Text(
                              'No Cars Found',
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                        ),
                        onSuggestionSelected: (CarRent? suggestion) {
                          final user = suggestion!;

                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => RouteCarRent(carRent: user),
                            ),
                          );
                        },
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 0, 0),
                                child: const Text(
                                  'Electrical Vehicle',
                                  style: TextStyle(
                                      fontFamily: 'Word Sans',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => RouteCarRent(
                                        carRent: allCars.elementAt(4)),
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
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => RouteCarRent(
                                        carRent: allCars.elementAt(5)),
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
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => RouteCarRent(
                                        carRent: allCars.elementAt(6)),
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
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => RouteCarRent(
                                        carRent: allCars.elementAt(0)),
                                  ),
                                );
                              },
                              child: Image.asset(
                                'assets/Car_Rent/Electrical/BAIC.png',
                                width: 100,
                                height: 100,
                                fit: BoxFit.contain,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => RouteCarRent(
                                        carRent: allCars.elementAt(1)),
                                  ),
                                );
                              },
                              child: Image.asset(
                                'assets/Car_Rent/Electrical/bmw.png',
                                width: 100,
                                height: 100,
                                fit: BoxFit.contain,
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
                              child: Image.asset(
                                'assets/Car_Rent/See_more.png',
                                width: 80,
                                height: 80,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Color(0xFF0F0F0F),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                            child: Text('Standard Vehicle',
                                style: TextStyle(
                                    fontFamily: 'Word Sans',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => RouteCarRent(
                                        carRent: allCars.elementAt(7)),
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
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => RouteCarRent(
                                        carRent: allCars.elementAt(8)),
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
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => RouteCarRent(
                                        carRent: allCars.elementAt(9)),
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
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 20),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => RouteCarRent(
                                        carRent: allCars.elementAt(2)),
                                  ),
                                );
                              },
                              child: Image.asset(
                                'assets/Car_Rent/Standard/ford.png',
                                width: 100,
                                height: 100,
                                fit: BoxFit.contain,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => RouteCarRent(
                                        carRent: allCars.elementAt(3)),
                                  ),
                                );
                              },
                              child: Image.asset(
                                'assets/Car_Rent/Standard/mazda.png',
                                width: 100,
                                height: 100,
                                fit: BoxFit.contain,
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
                              child: Image.asset(
                                'assets/Car_Rent/See_more.png',
                                width: 80,
                                height: 80,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
