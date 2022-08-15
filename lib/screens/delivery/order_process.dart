import 'dart:async';

import 'package:flutter/material.dart';
import 'package:relay_finalize/screens/delivery/order_details.dart';
import 'package:relay_finalize/screens/delivery/place_order.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'find_rider/find_rider.dart';

class OrderProcess extends StatefulWidget {
  OrderProcess({Key? key}) : super(key: key);

  @override
  State<OrderProcess> createState() => _OrderProcessState();
}

class _OrderProcessState extends State<OrderProcess> {
  String? orderRestaurant_Location;

  String? orderYour_Location;

  int? orderTotal_getTotal_and_Delivery;

  int? orderGetTotal;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getRestaurant_Location();
    getYour_Location();
    getGetTotal();
    getTotal_getTotal_and_Delivery();
  }

  @override
  Widget build(BuildContext context) {
    // Timer(
    //     Duration(seconds: 2),
    //     () => Navigator.of(context).push(
    //           MaterialPageRoute(
    //             builder: (context) => FindRider(),
    //           ),
    //         ));
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Image.asset("assets/delivery/woman_red.png"),
              Container(
                  child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                child: Material(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Processing...",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: [
                              Image.asset("assets/delivery/spoon_and_knife.png",
                                  width: 30, height: 30),
                              orderRestaurant_Location == null
                                  ? Text(
                                      "No restaurant location",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Word Sans',
                                        color: Colors.black,
                                        fontSize: 15,
                                      ),
                                    )
                                  : orderRestaurant_Location ==
                                          "Jollibee - Plaridel Bulacan"
                                      ? Text(
                                          orderRestaurant_Location!,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'Word Sans',
                                            color: Colors.black,
                                            fontSize: 15,
                                          ),
                                        )
                                      : Text(
                                          orderRestaurant_Location!,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'Word Sans',
                                            color: Colors.black,
                                            fontSize: 15,
                                          ),
                                        ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Image.asset(
                                  "assets/delivery/location_icon_red.png",
                                  width: 30,
                                  height: 30),
                              orderYour_Location == ''
                                  ? Expanded(
                                      child: Text(
                                        "Set your location",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Word Sans',
                                          color: Colors.black,
                                          fontSize: 15,
                                        ),
                                      ),
                                    )
                                  : Expanded(
                                      child: Text('$orderYour_Location',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'Word Sans',
                                            color: Colors.black,
                                            fontSize: 15,
                                          )),
                                    ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Divider(
                          thickness: 10,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Image.asset(
                                      "assets/delivery/money_delivery.png",
                                      width: 30,
                                      height: 30),
                                  Text(
                                    'Cash',
                                    style: TextStyle(),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: orderTotal_getTotal_and_Delivery == 0
                                  ? Text('₱ $orderGetTotal',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold))
                                  : Text('₱ $orderTotal_getTotal_and_Delivery',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 50, right: 50, top: 10),
                              child: Material(
                                elevation: 5,
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 0),
                                  child: SizedBox(
                                    child: MaterialButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                OrderDetailsDelivery(),
                                          ),
                                        );
                                      },
                                      height: 60,
                                      minWidth:
                                          MediaQuery.of(context).size.width,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          Text(
                                            "Proceed Order",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Word Sans',
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 50, right: 50, top: 10),
                              child: Material(
                                elevation: 5,
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 0),
                                  child: SizedBox(
                                    child: MaterialButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) => PlaceOrder(),
                                          ),
                                        );
                                      },
                                      height: 60,
                                      minWidth:
                                          MediaQuery.of(context).size.width,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          Text(
                                            "Cancel",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Word Sans',
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }

  void getRestaurant_Location() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    orderRestaurant_Location = pref.getString('orderRestaurant_Location')!;
    setState(() {});
  }

  void getYour_Location() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    orderYour_Location = pref.getString('orderYour_Location')!;
    setState(() {});
  }

  void getTotal_getTotal_and_Delivery() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    orderTotal_getTotal_and_Delivery =
        pref.getInt('orderTotal_getTotal_and_Delivery')!;
    setState(() {});
  }

  void getGetTotal() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    orderGetTotal = pref.getInt('orderGetTotal')!;
    setState(() {});
  }
}
