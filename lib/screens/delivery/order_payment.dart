import 'package:flutter/material.dart';

import 'order_process.dart';

class OrderPayment extends StatefulWidget {
  OrderPayment({Key? key}) : super(key: key);

  @override
  State<OrderPayment> createState() => _OrderPaymentState();
}

class _OrderPaymentState extends State<OrderPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
          child: Column(
            children: [
              Text(
                "You’ll be paying with cash. Proceed with booking?",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  "Payment method is switched to cash. You can change it before booking.",
                  style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ListTile(
                  leading: Image.asset("assets/delivery/money_delivery.png",
                      width: 30, height: 30),
                  title: Text(
                    'Cash',
                    style: TextStyle(),
                  ),
                  trailing: Icon(
                    Icons.check_outlined,
                    color: Colors.amber,
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber,
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                    child: SizedBox(
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => OrderProcess(),
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
                              "Book with Cash",
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
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 13, 94, 201),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                    child: SizedBox(
                      child: MaterialButton(
                        onPressed: () {},
                        height: 60,
                        minWidth: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "Change Payment Method",
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
      ),
    ));
  }
}
