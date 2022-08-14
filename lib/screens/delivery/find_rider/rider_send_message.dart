import 'package:flutter/material.dart';
import 'package:relay_finalize/screens/delivery/find_rider/rider_found.dart';

import 'find_rider.dart';

class RiderSendMessage extends StatelessWidget {
  const RiderSendMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: Material(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Column(children: [
                        Text(
                          "Send a Message to Your Driver",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "     Let your driver know that your order\nand address are confirmed. Tap Send to\n  notify your driver with this message:",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "     Hi Driver O.F. Relay, my order and\naddress are confirmed andI’ll wait for\n  you to arrive. Thanks, see you soon!",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 50, right: 50, top: 10),
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
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => RiderFound(),
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
                                        "Send",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Word Sans',
                                          color: Colors.white,
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
                                        "Later",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Word Sans',
                                          color: Colors.amber,
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
                          height: 30,
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
