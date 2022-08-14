import 'package:flutter/material.dart';
import 'package:relay_finalize/screens/delivery/place_order.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../home/home.dart';
import 'find_rider/find_rider.dart';

class OrderDetailsDelivery extends StatefulWidget {
  OrderDetailsDelivery({Key? key}) : super(key: key);

  @override
  State<OrderDetailsDelivery> createState() => _OrderDetailsDeliveryState();
}

class _OrderDetailsDeliveryState extends State<OrderDetailsDelivery> {
  String? orderName;
  int? orderCount;
  String? orderFlavor;
  String? orderDrinks;
  String? orderExtras_1;
  String? orderExtras_2;
  int? orderGetTotal;
  String? orderRestaurant_Location;
  int? orderDelivery_Fee;
  int? orderTotal_getTotal_and_Delivery;
  String? orderYour_Location;

  String orderName_last = "";
  int orderCount_last = 0;
  String orderFlavor_last = "";
  String orderDrinks_last = "";
  String orderExtras_1_last = "";
  String orderExtras_2_last = "";
  int orderGetTotal_last = 0;
  String orderRestaurant_Location_last = "";
  int orderDelivery_Fee_last = 0;
  int orderTotal_getTotal_and_Delivery_last = 0;
  String orderYour_Location_last = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getOrderName();
    getCountOrder();
    getGetTotal();
    getFlavor();
    getDrinks();
    getExtras_1();
    getExtras_2();
    getRestaurant_Location();
    getYour_Location();
    getTotal_getTotal_and_Delivery();
    getDelivery_Fee();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 8,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
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
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                          color: Colors.black,
                          icon: Icon(
                            Icons.close,
                            size: 30,
                          ),
                        ),
                        SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 60),
                          child: Text("Order Details",
                              style: TextStyle(color: Colors.black)),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              orderRestaurant_Location == null
                  ? Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        orderRestaurant_Location_last,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Word Sans',
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  : orderRestaurant_Location == "Jollibee - Plaridel Bulacan"
                      ? Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            'Your Order From: ' + orderRestaurant_Location!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Word Sans',
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            'Your Order From: ' + orderRestaurant_Location!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Word Sans',
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Order Summary",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      "Add items",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 20, right: 10),
                      child: orderCount == null
                          ? Text('$orderCount_last' + 'x',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold))
                          : Text('$orderCount' + 'x',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold))),
                  Padding(
                    padding: EdgeInsets.only(right: 20, left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            orderName == null
                                ? Text(
                                    orderName_last,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                : Text(orderName!,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                          ],
                        ),
                        orderFlavor == null
                            ? Text(
                                "$orderFlavor_last",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal),
                              )
                            : orderFlavor == 'Chicken Flavor'
                                ? Text(
                                    "No Flavorings",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
                                  )
                                : Text(orderFlavor!,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal)),
                        orderDrinks == null
                            ? Text(
                                orderDrinks_last,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal),
                              )
                            : orderDrinks == 'Choice of Drinks'
                                ? Text(
                                    "No Choice of Drinks",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
                                  )
                                : Text(orderDrinks!,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal)),
                        orderExtras_1 == null
                            ? Text(
                                orderExtras_1_last,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal),
                              )
                            : orderExtras_1 == 'Choose Extras'
                                ? Text(
                                    "No Choice of Extras",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
                                  )
                                : Text(orderExtras_1!,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal)),
                        orderExtras_2 == null
                            ? Text(
                                orderExtras_2_last,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal),
                              )
                            : orderExtras_2 == 'Choose Extras'
                                ? Text(
                                    "",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
                                  )
                                : Text(orderExtras_2!,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 80),
                      child: orderGetTotal == null
                          ? Text('₱ ' + '0',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold))
                          : Text('₱ ' + '$orderGetTotal',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold))),
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 5,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Subtotal Fee",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      orderGetTotal == 0
                          ? Text('₱ ' + '0',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold))
                          : Text('₱ ' + '$orderGetTotal',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Delivery Fee",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      orderDelivery_Fee == null
                          ? Text('₱ ' + '0',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold))
                          : orderDelivery_Fee == 0
                              ? Text('₱ ' + '0',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold))
                              : Text('₱ ' + '$orderDelivery_Fee',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 5,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Total",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: orderTotal_getTotal_and_Delivery == null
                        ? Text(
                            "₱$orderGetTotal",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          )
                        : orderTotal_getTotal_and_Delivery == 0
                            ? Text(
                                "₱$orderGetTotal",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              )
                            : Text(
                                "₱$orderTotal_getTotal_and_Delivery",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Payent Method",
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      children: [
                        Image.asset("assets/delivery/money_delivery.png",
                            width: 30, height: 30),
                        SizedBox(width: 10),
                        Text(
                          'Cash',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Note to Driver",
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "May your path pave the pavements of the pavest pave in the world of pavements.",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 5,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Image.asset("assets/delivery/spoon_and_knife.png",
                            width: 30, height: 30),
                        SizedBox(
                          width: 10,
                        ),
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
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/delivery/location_icon_red.png",
                            width: 30, height: 30),
                        SizedBox(
                          width: 10,
                        ),
                        orderYour_Location == null
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
                    SizedBox(height: 20),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 50, right: 50, top: 10),
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                          child: SizedBox(
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => FindRider(),
                                  ),
                                );
                              },
                              height: 60,
                              minWidth: MediaQuery.of(context).size.width,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    "Find Your Rider",
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
              ),
              SizedBox(
                height: 150,
              ),
              Divider(
                thickness: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 25),
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 248, 58, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
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
                        minWidth: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "Cancel Order",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Word Sans',
                                color: Colors.white,
                                fontSize: 20,
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
        ),
      ),
    );
  }

  void getOrderName() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    orderName = pref.getString('orderName')!;
    setState(() {});
  }

  void getCountOrder() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    orderCount = pref.getInt('orderCount')!;
    setState(() {});
  }

  void getFlavor() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    orderFlavor = pref.getString('orderFlavor')!;
    setState(() {});
  }

  void getDrinks() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    orderDrinks = pref.getString('orderDrinks')!;
    setState(() {});
  }

  void getExtras_1() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    orderExtras_1 = pref.getString('orderExtras_1')!;
    setState(() {});
  }

  void getExtras_2() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    orderExtras_2 = pref.getString('orderExtras_2')!;
    setState(() {});
  }

  void getGetTotal() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    orderGetTotal = pref.getInt('orderGetTotal')!;
    setState(() {});
  }

  void getRestaurant_Location() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    orderRestaurant_Location = pref.getString('orderRestaurant_Location')!;
    setState(() {});
  }

  void getDelivery_Fee() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    orderDelivery_Fee = pref.getInt('orderDelivery_Fee')!;
    setState(() {});
  }

  void getTotal_getTotal_and_Delivery() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    orderTotal_getTotal_and_Delivery =
        pref.getInt('orderTotal_getTotal_and_Delivery')!;
    setState(() {});
  }

  void getYour_Location() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    orderYour_Location = pref.getString('orderYour_Location')!;
    setState(() {});
  }
}
