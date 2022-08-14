import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'rider_send_message.dart';

class FindRider extends StatefulWidget {
  const FindRider({Key? key}) : super(key: key);

  @override
  State<FindRider> createState() => _FindRiderState();
}

class _FindRiderState extends State<FindRider> {
  String? orderName;

  int? orderCount;

  String? orderFlavor;

  String? orderDrinks;

  String? orderExtras_1;

  String? orderExtras_2;

  String? orderRestaurant_Location;

  int? orderTotal_getTotal_and_Delivery;

  int? orderGetTotal;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getOrderName();
    getCountOrder();
    getFlavor();
    getDrinks();
    getExtras_1();
    getExtras_2();
    getRestaurant_Location();
    getTotal_getTotal_and_Delivery();
    getGetTotal();
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          color: Colors.black,
                          icon: Icon(
                            Icons.keyboard_arrow_down_sharp,
                            size: 30,
                          ),
                        ),
                        SizedBox(width: 20),
                        Text("Contact Support",
                            style: TextStyle(color: Colors.black)),
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
            children: [
              Image.asset("assets/delivery/man_magnifying_glass.png"),
              Container(
                  child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(15),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 12, left: 12, right: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Finding you a nearby driver...",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              "Give drivers some time to accept your order",
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
                      ],
                    ),
                  ),
                ),
              )),
              Container(
                  child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(15),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
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
                              orderTotal_getTotal_and_Delivery == 0
                                  ? Text(
                                      '₱ $orderGetTotal',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Word Sans',
                                        color: Colors.black,
                                        fontSize: 15,
                                      ),
                                    )
                                  : Text(
                                      '₱ $orderTotal_getTotal_and_Delivery',
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
                          padding: EdgeInsets.only(right: 20, left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "You ordered:",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              orderName == null
                                  ? Text(
                                      "Your Order Here",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    )
                                  : Text(orderName!,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 10,
                              ),
                              orderFlavor == 'Chicken Flavor'
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
                              orderDrinks == 'Choice of Drinks'
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
                              orderExtras_1 == 'Choose Extras'
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
                              orderExtras_2 == 'Choose Extras'
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
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 50, right: 50, top: 10),
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                              child: SizedBox(
                                child: MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            RiderSendMessage(),
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
                                        "See details",
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
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              )),
              SizedBox(
                height: 40,
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

  void getRestaurant_Location() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    orderRestaurant_Location = pref.getString('orderRestaurant_Location')!;
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
