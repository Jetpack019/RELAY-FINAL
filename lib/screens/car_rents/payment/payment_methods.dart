import 'package:flutter/material.dart';

import '../car_rent_order_summary.dart';
import 'apple_payment/apple_pay_cars.dart';

import 'google_payment/google_pay_cars.dart';

import 'paypal_payment/paypal_car_payment.dart';

class Payment_Method extends StatefulWidget {
  Payment_Method({Key? key}) : super(key: key);

  @override
  State<Payment_Method> createState() => _Payment_MethodState();
}

class _Payment_MethodState extends State<Payment_Method> {
  bool addcash = false;

  var addcash_value = "Cash";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        flexibleSpace: Row(children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Car_Rent_Order_Summary(),
                      ),
                    );
                  },
                  color: Colors.black,
                  icon: Icon(Icons.close),
                ),
                SizedBox(
                  width: 80,
                ),
              ],
            ),
          ),
        ]),
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Payment Methods",
                  style: TextStyle(
                    fontFamily: 'Word Sans',
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Current Method",
                  style: TextStyle(
                    fontFamily: 'Word Sans',
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 20,
          ),
          CheckboxListTile(
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  "assets/delivery/money_delivery.png",
                  height: 30,
                  width: 30,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Cash',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.normal)),
                    Text(
                      'Default Method',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                )
              ],
            ),
            controlAffinity: ListTileControlAffinity.platform,
            value: addcash,
            onChanged: (value) {
              setState(() => addcash = value!);
            },
          ),
          SizedBox(
            height: 20,
          ),
          Row(children: <Widget>[
            Expanded(
                child: Divider(
              thickness: 2,
              color: Colors.black,
            )),
            SizedBox(
              width: 20,
            ),
            Text("OR"),
            SizedBox(
              width: 20,
            ),
            Expanded(
                child: Divider(
              thickness: 2,
              color: Colors.black,
            )),
          ]),
          SizedBox(
            height: 20,
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => PaypalPayment(
                    onFinish: (number) async {
                      // payment done
                      print('order id: ' + number);
                    },
                  ),
                ),
              );
            },
            leading: Image.asset(
              "assets/payments/paypal.png",
              fit: BoxFit.contain,
              height: 50,
              width: 50,
            ),
            title: Text(
              'Paypal',
              style: TextStyle(),
            ),
            tileColor: Color(0xFFF5F5F5),
            dense: false,
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => GooglePayButtonPayment(),
                ),
              );
            },
            leading: Image.asset(
              "assets/payments/gpay.png",
              fit: BoxFit.cover,
              height: 50,
              width: 50,
            ),
            title: Text(
              'Gpay',
              style: TextStyle(),
            ),
            tileColor: Color(0xFFF5F5F5),
            dense: false,
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => ApplePayment(),
                ),
              );
            },
            leading: Image.asset(
              "assets/payments/gcash.png",
              height: 50,
              width: 50,
            ),
            title: Text(
              'Gcash',
              style: TextStyle(),
            ),
            tileColor: Color(0xFFF5F5F5),
            dense: false,
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(10),
              color: Colors.amber,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: SizedBox(
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Car_Rent_Order_Summary(),
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
                          "Add Payment Method",
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
      )),
    );
  }
}
