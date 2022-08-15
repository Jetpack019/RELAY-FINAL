import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../../data/res_data.dart';
import '../../food_order/Family_Meals/8_pcs_CB_RJSD.dart';
import '../food_deliveries/restaurants/jollibee.dart';
import 'order_payment.dart';
import 'order_process.dart';

class PlaceOrder extends StatefulWidget {
  PlaceOrder({Key? key}) : super(key: key);

  @override
  State<PlaceOrder> createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  List<FoodDeliver> restaurant = allfoodDeliver;
  String? orderName;
  int? orderCount;
  String? orderFlavor;
  String? orderDrinks;
  String? orderExtras_1;
  String? orderExtras_2;
  int? orderGetTotal;
  String? orderRestaurant_Location;

  var priorityDelivery_value = 0;
  var priorityDelivery_value_add = 49;
  var priorityDelivery_value_name = 'Your Delivery Fee';
  var priorityDelivery_value_name_add = 'Delivery fee';

  int total_getTotal_and_Delivery = 0;

  String orderYour_Location = '';
  late TextEditingController locationInputController;

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
    getGetTotal();
    getRestaurant_Location();
    locationInputController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  bool priorityDelivery = false;
  bool cutlery = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 140,
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
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => CB_RJSD_8p(),
                                ),
                              );
                            },
                            color: Colors.black,
                            icon: Icon(Icons.arrow_back),
                          ),
                          SizedBox(width: 20),
                          orderRestaurant_Location == null
                              ? Text(
                                  "No restaurant location",
                                  style: TextStyle(color: Colors.black),
                                )
                              : orderRestaurant_Location ==
                                      "Jollibee - Plaridel Bulacan"
                                  ? Text(
                                      orderRestaurant_Location!,
                                      style: TextStyle(color: Colors.black),
                                    )
                                  : Text(orderRestaurant_Location!,
                                      style: TextStyle(color: Colors.black)),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text("Distance from you: 1.3km",
                          style: TextStyle(color: Colors.black, fontSize: 15)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 20, right: 20, left: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Deliver To",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20)),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("assets/delivery/circle_important.png",
                              width: 30, height: 30),
                          SizedBox(
                            width: 20,
                            height: 20,
                          ),
                          Text("Check if this delivery location is correct")
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 5,
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 10, right: 20, left: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/delivery/location_important.png",
                              width: 30, height: 30),
                          SizedBox(
                            height: 20,
                            width: 20,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(orderYour_Location,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12)),
                              ],
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios_sharp),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 216, 216, 216),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Add address details"),
                                  SizedBox(height: 5),
                                  Text("Add delivery instruction"),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 25, right: 20),
                              child: GestureDetector(
                                  onTap: () async {
                                    final orderYour_Location =
                                        await openDialog();

                                    if (orderYour_Location == null ||
                                        orderYour_Location.isEmpty) return;

                                    setState(() => this.orderYour_Location =
                                        orderYour_Location);
                                  },
                                  child: Text(
                                    "Edit",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )),
                            )
                          ],
                        ),
                      )
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
              Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 10, right: 20, left: 20),
                  child: Expanded(
                    child: Row(
                      children: [
                        Image.asset("assets/delivery/masked_deliver.png",
                            width: 70, height: 70),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Delivery"),
                            SizedBox(height: 5),
                            Text("Deliver now (25 mins)"),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: GestureDetector(
                              child: Text(
                            "Change Options",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )),
                        )
                      ],
                    ),
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
              Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "Order Summary",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text(
                              "Add items",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 10),
                                  child: orderCount == null
                                      ? Text('$orderCount' + 'x',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold))
                                      : Text('$orderCount' + 'x',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold))),
                              Padding(
                                padding: EdgeInsets.only(right: 20, left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        orderName == null
                                            ? Text(
                                                "Your Order Here",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            : Text(orderName!,
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                      ],
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
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: GestureDetector(
                                        onTap: () {
                                          orderRestaurant_Location ==
                                                  'Jollibee - Plaridel Bulacan'
                                              ? Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        Jollibee(
                                                            jollibee: restaurant
                                                                .elementAt(0)),
                                                  ),
                                                )
                                              : Navigator.pushAndRemoveUntil(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          PlaceOrder()),
                                                  (r) => false);
                                        },
                                        child: Text(
                                          "Edit",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 20, bottom: 85),
                                  child: orderGetTotal == null
                                      ? Text('₱ ' + '0',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold))
                                      : Text('₱ ' + '$orderGetTotal',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold))),
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
                              Text(
                                "₱$orderGetTotal",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
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
                              Text(
                                "₱$priorityDelivery_value",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
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
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Order Options",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      CheckboxListTile(
                          value: priorityDelivery,
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Priority Delivery  *  ₱40.00"),
                              Text("You’ll get a voucher if it’s late."),
                              Text("More information"),
                            ],
                          ),
                          controlAffinity: ListTileControlAffinity.platform,
                          onChanged: (value) {
                            setState(() => priorityDelivery = value!);
                            setState(() => priorityDelivery == value!
                                ? priorityDelivery_value =
                                    priorityDelivery_value_add
                                : priorityDelivery_value);
                            setState(() => priorityDelivery == value!
                                ? priorityDelivery_value_name =
                                    priorityDelivery_value_name_add
                                : priorityDelivery_value_name);
                            setState(() => priorityDelivery == false
                                ? priorityDelivery_value = 0
                                : priorityDelivery_value);
                            setState(() => total_getTotal_and_Delivery =
                                orderGetTotal! + priorityDelivery_value);
                            setState(() =>
                                orderGetTotal! < total_getTotal_and_Delivery
                                    ? orderGetTotal = orderGetTotal
                                    : orderGetTotal);
                          }),
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
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text(
                                "Cutlery",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      CheckboxListTile(
                          value: cutlery,
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Request for cutlery only if you need it"),
                            ],
                          ),
                          controlAffinity: ListTileControlAffinity.platform,
                          onChanged: (value) {
                            setState(() => cutlery = value!);
                          }),
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
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Payment Details",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: ListTile(
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => OrderPayment(),
                            ),
                          ),
                          leading: Image.asset(
                              "assets/delivery/money_delivery.png",
                              width: 30,
                              height: 30),
                          title: Text(
                            'Cash',
                            style: TextStyle(),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF303030),
                            size: 20,
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: ListTile(
                          leading: Image.asset("assets/delivery/discount.png",
                              width: 30, height: 30),
                          title: Text(
                            'Use offer to get discounts',
                            style: TextStyle(),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF303030),
                            size: 20,
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
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
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "Total",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: total_getTotal_and_Delivery == 0
                                ? Text(
                                    "₱$orderGetTotal",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  )
                                : Text(
                                    "₱$total_getTotal_and_Delivery",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 50, right: 50, top: 10),
                        child: Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.amber,
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                            child: SizedBox(
                              child: MaterialButton(
                                onPressed: () {
                                  if (orderYour_Location == "") {
                                    Fluttertoast.showToast(
                                        msg:
                                            "Select Your Location before you proceed");
                                  } else {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => OrderProcess(),
                                      ),
                                    );
                                    setState(() {
                                      setYour_Location(orderYour_Location);
                                      setTotal_getTotal_and_Delivery(
                                          total_getTotal_and_Delivery);
                                      setDelivery_Fee(priorityDelivery_value);
                                    });
                                  }
                                },
                                height: 80,
                                minWidth: MediaQuery.of(context).size.width,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text(
                                      "Place Order",
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
                        height: 20,
                      ),
                      Divider(
                        thickness: 5,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ]),
              )
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

  Future<void> setYour_Location(orderGetTotal) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('orderYour_Location', orderYour_Location);
  }

  Future<void> setTotal_getTotal_and_Delivery(
      orderTotal_getTotal_and_Delivery) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt(
        'orderTotal_getTotal_and_Delivery', orderTotal_getTotal_and_Delivery);
  }

  Future<void> setDelivery_Fee(orderDelivery_Fee) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt('orderDelivery_Fee', orderDelivery_Fee);
  }

  Future<String?> openDialog() => showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
            title: Text('Your Location'),
            content: TextField(
              autofocus: true,
              decoration: InputDecoration(hintText: 'Enter your Address'),
              controller: locationInputController,
              onSubmitted: (_) => submit(),
            ),
            actions: [TextButton(onPressed: submit, child: Text('Submit'))],
          ));

  void submit() {
    Navigator.of(context).pop(locationInputController.text);

    locationInputController.clear();
  }
}
